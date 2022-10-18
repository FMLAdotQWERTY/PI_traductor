package com.example.traductor;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.speech.RecognizerIntent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.NetworkError;
import com.android.volley.NoConnectionError;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;
import com.google.android.material.textfield.TextInputEditText;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;

public class MainActivity extends AppCompatActivity {

    // Variables Globales
    private static final int REQ_CODE_SPEECH_INPUT = 1;
    private TextInputEditText micEntrada;
    private ImageView micBoton;
    private Button btnTraducir;
    private ImageView audioBoton;
    private RequestQueue req;
    private TextView txtView;
    private MediaPlayer audio;
    private String audioArchivo ="";
    private String[] newStr01, newStr02;
    private String URL_BD = "http://192.168.0.9:8080/diccionario/HTTP-GET_diccionario.php?esp_palabra=";
    private String URL_audio="http://192.168.0.9:8080/diccionario/audios/";

    /* Método onCreate() ---> Se activa al entrar a la App.
     *
     * */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Referencias a los componentes del Layout
        micEntrada = findViewById(R.id.editText);
        micBoton = findViewById(R.id.btnMic);
        audioBoton = findViewById(R.id.btnAudio);
        btnTraducir = findViewById(R.id.btnTraducir);
        txtView = findViewById(R.id.txtImprimir);

        // Ocultar botón del audio
        audioBoton.setVisibility(View.INVISIBLE);

        // Instancia de la cola de peticiones
        req = Volley.newRequestQueue(this);

        // Método al dar clic al Micrófono
        micBoton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                inicioEscucha();
            }
        });

        // Método al dar Clic a Traducir
        btnTraducir.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                txtView.setText("");
                audioArchivo = "";

                String str01 = micEntrada.getText().toString().toLowerCase(Locale.ROOT);
                newStr01 = str01.split("\\s+");
                for (int i = 0; i < newStr01.length; i++) {
                    try {
                        recuperarBD(URL_BD + newStr01[i]);
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });

        // Método al dar Clic para la reproducción de los audios
        audioBoton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                newStr02 = audioArchivo.split("\\s+");
                for (int i = 0; i < newStr02.length; i++) {
                    try{
                        reproducirAudio(URL_audio + newStr02[i]);
                        Thread.sleep(2000);
                    } catch (InterruptedException e ) {
                        e.printStackTrace();
                    }
                }

                audio.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                    @Override
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        audio.release();
                    }
                });

            }
        });
    }

    @Override
    /* Método onStop() ---> Se activa al salir de la App.
     *
     * */
    protected void onStop() {
        super.onStop();
        micEntrada.setText("");
        txtView.setText("");
        audioBoton.setVisibility(View.INVISIBLE);

        if(audio != null){
            audio.stop();
            audio.release();
            audio = null;
        }
    }

    /* Método recuperarBD(String URL) ---> Biblioteca HTTP Volley: recupera la información de la BD.
     *
     * */
    public void recuperarBD (String URL) {
        ProgressDialog aDialog = new ProgressDialog(this,R.style.AlertDialogStyle);
        aDialog.setMessage("Cargando...");
        aDialog.show();

        JsonObjectRequest requerimientos = new JsonObjectRequest(Request.Method.GET, URL, null,
                new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        try {
                            txtView.append(response.getString("yoreme_palabra") + " ");
                            audioArchivo += response.getString("url_audio") + " ";
                            audioBoton.setVisibility(View.VISIBLE);
                            aDialog.dismiss();
                        } catch (JSONException e) {
                            Toast.makeText(getApplicationContext(), "Error Volley: " + e.getMessage(), Toast.LENGTH_LONG).show();
                            aDialog.dismiss();
                        }
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                String mensaje = null;
                if (error instanceof NetworkError || error instanceof AuthFailureError) {
                    mensaje = "No se puede conectar a Internet... ¡Compruebe su conexión!";
                    Toast.makeText(getApplicationContext(),mensaje,Toast.LENGTH_LONG).show();
                } else if (error instanceof ServerError) {
                    mensaje = "No se pudo encontrar el servidor. Por favor, inténtalo de nuevo después de un tiempo.";
                    Toast.makeText(getApplicationContext(),mensaje,Toast.LENGTH_LONG).show();
                } else if (error instanceof NoConnectionError || error instanceof TimeoutError) {
                    mensaje = "¡El tiempo de conexión expiró! Por favor revise su conexion a Internet.";
                    Toast.makeText(getApplicationContext(),mensaje,Toast.LENGTH_LONG).show();
                } else if (error instanceof ParseError) {
                    String auxNull[] = URL.split("=");
                    txtView.append(auxNull[1] + " ");
                    Toast.makeText(getApplicationContext(), "La palabra " + auxNull[1].toUpperCase(Locale.ROOT) + " no cuenta con una traducción actualmente.", Toast.LENGTH_LONG).show();
                }
                aDialog.dismiss();
            }
        }
        );
        // Respuesta de la petición externa (HTTP Request)
        req.add(requerimientos);
    }

    /* Método inicioEscucha() ---> API Speech to Text: método para el reconocimiento de Google.
     *
     * */
    private void inicioEscucha() {
        Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
        intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, "es-MX");
        intent.putExtra(RecognizerIntent.EXTRA_PROMPT, "¡Habla!");

        try{
            startActivityForResult(intent, REQ_CODE_SPEECH_INPUT);
        }catch (ActivityNotFoundException e){
            Toast.makeText(MainActivity.this, "Tú dispositivo no soporta el reconocimiento de voz", Toast.LENGTH_SHORT).show();
        }
    }

    /*Método onActivityResult() ---> API Speech to Text: método para la obtención del texto de la API Speech to Text.
     *
     * */
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        switch (requestCode) {
            case REQ_CODE_SPEECH_INPUT: {
                if (resultCode == RESULT_OK && data != null) {
                    ArrayList<String> result = data.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS);
                    micEntrada.setText(result.get(0));
                }
                break;
            }
        }
    }

    /* Método reproducirAudio(String audioURL) ---> Biblioteca MediaPlayer: método para la reproducción de los audios.
     *
     * */
    public void reproducirAudio(String audioURL) {
        audio = new MediaPlayer();

        try {
            audio.setAudioStreamType(AudioManager.STREAM_MUSIC);
            audio.setDataSource(audioURL);
            audio.prepare();
        } catch (IllegalStateException e) {
            Toast.makeText(this, "Error MediaPlayer 01: " + e.getMessage(), Toast.LENGTH_LONG).show();
        } catch (IOException e) {
            Toast.makeText(this, "El archivo de audio no existe.", Toast.LENGTH_LONG).show();
        } catch (IllegalArgumentException e) {
            Toast.makeText(this, "Error MediaPlayer 02: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }

        audio.start();
    }

}
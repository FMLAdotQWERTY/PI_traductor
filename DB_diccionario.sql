-- DROP DATABASE base_diccionario;
CREATE DATABASE IF NOT EXISTS base_diccionario CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE base_diccionario;

CREATE TABLE IF NOT EXISTS tabla_diccionario (
	id_palabra INT AUTO_INCREMENT PRIMARY KEY,
    esp_palabra VARCHAR(30) COLLATE utf8_bin,
    yoreme_palabra VARCHAR(40),
    tipo_palabra VARCHAR(15),
    url_audio VARCHAR(100)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO tabla_diccionario (esp_palabra, yoreme_palabra, tipo_palabra, url_audio) VALUES (
	-- Pronombres Personales ✔
	"yo", "ínapo", "pronombre","ínapo.mp3"),
	("tú", "empo", "pronombre","empo.mp3"),
	("él", "áapo", "pronombre","áapo.mp3"),
	("ella", "áapo", "pronombre","áapo.mp3"),
	("nosotros", "ítapo", "pronombre","ítapo.mp3"),
	("nosotras", "ítapo", "pronombre","ítapo.mp3"),
	("ustedes", "emë", "pronombre","emë.mp3"),
	("ellos", "bempo", "pronombre","bempo.mp3"),
	("ellas", "bempo", "pronombre","bempo.mp3"),
	
	-- Pronombres Posesivos ✔
	("mi", "in", "pronombre","in.mp3"),
	("mis", "in", "pronombre","in.mp3"),
	("tu", "em", "pronombre","em.mp3"),
	("tus", "em", "pronombre","em.mp3"),
	("su", "a", "pronombre","a.mp3"),
	("sus", "emchim", "pronombre","emchim.mp3"),
	("nuestro", "itom", "pronombre","itom.mp3"),
	("nuestros", "itom", "pronombre","itom.mp3"),
	("nuestra", "itom", "pronombre","itom.mp3"),
	("nuestras", "itom", "pronombre","itom.mp3"),
	("de", "bétana", "pronombre","bétana.mp3"),
	("por", "béchïbo", "pronombre","béchïbo.mp3"),
	("para", "béchïbo", "pronombre","béchïbo.mp3"),
	
	-- Pronombres Demostrativos ✔
	("este", "ï", "pronombre","ï.mp3"),
	("esta", "ï", "pronombre","ï.mp3"),
	("estos", "ímë", "pronombre","ímë.mp3"),
	("estas", "ímë", "pronombre","ímë.mp3"),
	("ese", "jü", "pronombre","jü.mp3"),
	("esa", "jü", "pronombre","jü.mp3"),
	("esos", "júmë", "pronombre","júmë.mp3"),
	("esas", "júmë", "pronombre","júmë.mp3"),
	("aquel", "wä", "pronombre","wä.mp3"),
	("aquella", "wä", "pronombre","wä.mp3"),
	("aquellos", "wámë", "pronombre","wámë.mp3"),
	("aquellas", "wámë", "pronombre","wámë.mp3"),
	
	-- Pronombres Reflexivo ✔
	("se", "áaw", "pronombre","áaw.mp3"),
    ("te", "emow", "pronombre","emow.mp3"),
	("me", "ino", "pronombre","ino.mp3"),
    ("nos", "itom", "pronombre","itom.mp3"),
    
	-- Pronombres Indefinido ✔
	("un", "wépu", "pronombre","wépu.mp3"),
	("una", "wépu", "pronombre","wépu.mp3"),
	("algún", "jita", "pronombre","jita.mp3"),
	("alguna", "jita", "pronombre","jita.mp3"),
	("ninguno", "kaita", "abverbio","kaita.mp3"),
	("ninguna", "kaita", "abverbio","kaita.mp3"),
	("nadie", "kaabe", "pronombre","kaabe.mp3"),
	("otro", "täbui", "pronombre","täbui.mp3"),
	("otra", "täbui", "pronombre","täbui.mp3"),
	("otros", "waate", "pronombre","waate.mp3"),
	("otras", "waate", "pronombre","waate.mp3"),
	
	
	-- ==============================================================================
	-- Articulos ✔
	("el", "ju", "articulo","ju.mp3"),
	("la", "ju", "articulo","ju.mp3"),
	("los", "jume", "articulo","jume.mp3"),
	("las", "jume", "articulo","jume.mp3"),
	
    
	-- ===========================================================================================
	-- Sustantivos: Familia ✔
	("familia", "naw anim", "sustantivo","naw_anim.mp3"),
	("familiar", "waway", "sustantivo","waway.mp3"),
	("familiares", "wawayim", "sustantivo","wawayim.mp3"),
	("abuelo", "taata", "sustantivo","taata.mp3"),
	("abuela", "naana", "sustantivo","naana.mp3"),
	("abuelos", "taatam", "sustantivo","taatam.mp3"),
	("papá", "atchay", "sustantivo","atchay.mp3"),
	("mamá", "ayye", "sustantivo","ayye.mp3"),
	("papás", "atchayim", "sustantivo","atchayim.mp3"),
	("hijo", "öw ásoa", "sustantivo","öw_ásoa.mp3"),
	("hija", "jammut ásoa", "sustantivo","jammut_ásoa.mp3"),
	("nieto", "ápara", "sustantivo","ápara.mp3"),
	("nieta", "ammu", "sustantivo","ammu.mp3"),
	("nietos", "áparam", "sustantivo","áparam.mp3"),
	("esposo", "kuuna", "sustantivo","kuuna.mp3"),
	("esposa", "juubi", "sustantivo","juubi.mp3"),
	("esposos", "kuunam", "sustantivo","kuunam.mp3"),
	("padre", "atchay", "sustantivo","atchay.mp3"),
	("madre", "ayye", "sustantivo","ayye.mp3"),
	("padres", "atchayim", "sustantivo","atchayim.mp3"),
	("novio", "nóobia", "sustantivo","nóobia.mp3"),
	("novia", "nóobia", "sustantivo","nóobia.mp3"),
	("novios", "nóobiam", "sustantivo","nóobiam.mp3"),
	
	-- Sustantivos: Gente ✔
	("hombre", "yoreme", "sustantivo","yoreme.mp3"),
	("hombres", "yoremem", "sustantivo","yoremem.mp3"),
	("mujer", "jammut", "sustantivo","jammut.mp3"),
	("mujeres", "jaamuchim", "sustantivo","jaamuchim.mp3"),
	("bebé", "ili ussi", "sustantivo","ili_ussi.mp3"),
	("bebés", "ili ussim", "sustantivo","ili_ussim.mp3"),
	("niño", "ussi", "sustantivo","ussi.mp3"),
	("niños", "ussim", "sustantivo","ussim.mp3"),
	("niña", "ussi jammut", "sustantivo","ussi_jammut.mp3"),
	("niñas", "ussi jammuchim", "sustantivo","ussi_jammuchim.mp3"),
	("señor", "natchay", "sustantivo","natchay.mp3"),
	("señores", "natchayim", "sustantivo","natchayim.mp3"),
	("señora", "nayye", "sustantivo","nayye.mp3"),
	("señoras", "nayyem", "sustantivo","nayyem.mp3"),
	("adolescente", "ussi jëlay", "sustantivo","ussi_jëlay.mp3"),
	("adolescentes", "ussi jëlayim", "sustantivo","ussi_jëlayim.mp3"),
	("joven", "jübua yöturi", "sustantivo","jübua_yöturi.mp3"),
	("señorita", "beeme", "sustantivo","beeme.mp3"),
	("señoritas", "beemem", "sustantivo","beemem.mp3"),
	("jovencita", "beeme", "sustantivo","beeme.mp3"),
	("jovencitas", "beemem", "sustantivo","beemem.mp3"),
	("embarazada", "tómmatuari", "sustantivo","tómmatuari.mp3"),
	("maestro", "maixtialero", "sustantivo","maixtialero.mp3"),
	("maestros", "maixtialerom", "sustantivo","maixtialerom.mp3"),
	("maestra", "maixtialero", "sustantivo","maixtialero.mp3"),
	("maestras", "maixtialerom", "sustantivo","maixtialerom.mp3"),
	("mayo", "yoreme", "sustantivo","yoreme.mp3"),
	("mayos", "yoremem", "sustantivo","yoremem.mp3"),
	("mestizo", "yoori", "sustantivo","yoori.mp3"),
	("mestizos", "yoorim", "sustantivo","yoorim.mp3"),
	("fantasma", "jowsi", "sustantivo","jowsi.mp3"),
	("fantasmas", "jowsim", "sustantivo","jowsim.mp3"),
	("espanto", "jowsi", "sustantivo","jowsi.mp3"),
	("espantos", "jowsim", "sustantivo","jowsim.mp3"),
	("dios", "itom atchay", "sustantivo","itom_atchay.mp3"),
	("yaqui", "jiaak", "sustantivo","jiaak.mp3"),
	("yaquis", "jiaakim", "sustantivo","jiaakim.mp3"),
	("demonio", "lemonyo", "sustantivo","lemonyo.mp3"),
	("demonios", "lemonyom", "sustantivo","lemonyom.mp3"),
	("desnudo", "bichi", "sustantivo","bichi.mp3"),
	("desnudos", "bichim", "sustantivo","bichim.mp3"),
	("persona", "batö", "sustantivo","batö.mp3"),
	("personas", "batöm", "sustantivo","batöm.mp3"),
	("muerto", "mukila", "sustantivo","mukila.mp3"),
	("muertos", "mukilam", "sustantivo","mukilam.mp3"),
	("fuerte", "uttia", "sustantivo","uttia.mp3"),
	("fuertes", "uttiam", "sustantivo","uttiam.mp3"),
	("amigo", "sämari", "sustantivo","sämari.mp3"),
	("amigos", "sämarim", "sustantivo","sämarim.mp3"),
	("fumador", "yenleero", "sustantivo","yenleero.mp3"),
	("fumadores", "yenleerom", "sustantivo","yenleerom.mp3"),
	("viejo", "öra", "sustantivo","öra.mp3"),
	("viejos", "öram", "sustantivo","öram.mp3"),
	("vieja", "jamyöra", "sustantivo","jamyöra.mp3"),
	("viejas", "jamyöram", "sustantivo","jamyöram.mp3"),
	("fariseo", "parisero", "sustantivo","parisero.mp3"),
	("fariseos", "pariserom", "sustantivo","pariserom.mp3"),
	
	-- Sustantivos: Cuerpo ✔
	("cuerpo", "takawa", "sustantivo","takawa.mp3"),
	("cabeza", "kobba", "sustantivo","kobba.mp3"),
	("brazo", "mam otta", "sustantivo","mam_otta.mp3"),
	("brazos", "mamam ottam", "sustantivo","mamam_ottam.mp3"),
	("mano", "mamma", "sustantivo","mamma.mp3"),
	("manos", "mammam", "sustantivo","mammam.mp3"),
	("pierna", "wok otta", "sustantivo","wok_otta.mp3"),
	("piernas", "wok ottam", "sustantivo","wok_ottam.mp3"),
	("pie", "wok", "sustantivo","wok.mp3"),
	("pies", "wokim", "sustantivo","wokim.mp3"),
	("espalda", "jö", "sustantivo","jö.mp3"),
	("pecho", "tawwi", "sustantivo","tawwi.mp3"),
	("cara", "puxba", "sustantivo","puxba.mp3"),
	("ojo", "puus", "sustantivo","puus.mp3"),
	("ojos", "puusim", "sustantivo","puusim.mp3"),
	("boca", "teen", "sustantivo","teen.mp3"),
	("nariz", "yekka", "sustantivo","yekka.mp3"),
	("oreja", "nakka", "sustantivo","nakka.mp3"),
	("cabello", "choon", "sustantivo","choon.mp3"),
	("cuello", "kútaanaa", "sustantivo","kútaanaa.mp3"),
	("corazón", "jiabsi", "sustantivo","jiabsi.mp3"),
	("piel", "bee", "sustantivo","bee.mp3"),
	("hueso", "otta", "sustantivo","otta.mp3"),
	("huesos", "ottam", "sustantivo","ottam.mp3"),
	("sangre", "oxbo", "sustantivo","oxbo.mp3"),
	("genitales", "baata", "sustantivo","baata.mp3"),
	("verijas", "baata", "sustantivo","baata.mp3"),
	("alma", "jiabsi", "sustantivo","jiabsi.mp3"),
	("espíritu", "jiabsi", "sustantivo","jiabsi.mp3"),
	("voz", "jiaawi", "sustantivo","jiaawi.mp3"),
	("bigote", "jimsi", "sustantivo","jimsi.mp3"),
	
	-- Sustantivos: Lugares ✔
	("bosque", "juyya ánia", "sustantivo","juyya_ánia.mp3"),
	("río", "batwe", "sustantivo","batwe.mp3"),
	("ríos", "batwem", "sustantivo","batwem.mp3"),
	("lago", "bawbäm", "sustantivo","bawbäm.mp3"),
	("laguna", "bawbäm", "sustantivo","bawbäm.mp3"),
	("mar", "baawe", "sustantivo","baawe.mp3"),
	("mares", "baawem", "sustantivo","baawem.mp3"),
	("océano", "baawe ánia", "sustantivo","baawe_ánia.mp3"),
	("monte", "juyya", "sustantivo","juyya.mp3"),
	("montes", "juyyam", "sustantivo","juyyam.mp3"),
	("cerro", "kawwi", "sustantivo","kawwi.mp3"),
	("cerros", "kawwim", "sustantivo","kawwim.mp3"),
	("sinaloa", "Sinna Rohay", "sustantivo","sinna_rohay.mp3"),
	
	-- Sustantivos: Animales ✔
	("animal", "animáal", "sustantivo","animáal.mp3"),
	("pata", "wok", "sustantivo","wok.mp3"),
	("cuero", "bee", "sustantivo","bee.mp3"),
	("alas", "massam", "sustantivo","massam.mp3"),
	("pelos", "boam", "sustantivo","boam.mp3"),
	("pescuezo", "kútaanaa", "sustantivo","kútaanaa.mp3"),
	("peludo", "boära", "sustantivo","boära.mp3"),
	("macho", "öw", "sustantivo","öw.mp3"),
	("hembra", "jammut", "sustantivo","jammut.mp3"),
	("perro", "chü", "sustantivo","chü.mp3"),
	("perros", "chüm", "sustantivo","chüm.mp3"),
	("gato", "missi", "sustantivo","missi.mp3"),
	("gatos", "missim", "sustantivo","missim.mp3"),
	("vaca", "waakas", "sustantivo","waakas.mp3"),
	("vacas", "waakasim", "sustantivo","waakasim.mp3"),
	("cerdo", "koowi", "sustantivo","koowi.mp3"),
	("cerdos", "koowim", "sustantivo","koowim.mp3"),
	("cochi", "koowi", "sustantivo","koowi.mp3"),
	("cochis", "koowim", "sustantivo","koowim.mp3"),
	("caballo", "kabbay", "sustantivo","kabbay.mp3"),
	("caballos", "kabbayim", "sustantivo","kabbayim.mp3"),
	("conejo", "taabu", "sustantivo","taabu.mp3"),
	("conejos", "taabum", "sustantivo","taabum.mp3"),
	("venado", "maaso", "sustantivo","maaso.mp3"),
	("venados", "maasom", "sustantivo","maasom.mp3"),
	("pájaro", "wiikit", "sustantivo","wiikit.mp3"),
	("pájaros", "wiikichim", "sustantivo","wiikichim.mp3"),
	("ave", "wiikit", "sustantivo","wiikit.mp3"),
	("aves", "wiikichim", "sustantivo","wiikichim.mp3"),
	("gallo", "totoröra", "sustantivo","totoröra.mp3"),
	("gallos", "totoröram", "sustantivo","totoröram.mp3"),
	("gallina", "tótori", "sustantivo","tótori.mp3"),
	("gallinas", "tótorim", "sustantivo","tótorim.mp3"),
	("tigre", "yöko", "sustantivo","yöko.mp3"),
	("tigres", "yökom", "sustantivo","yökom.mp3"),
	("abeja", "muumu", "sustantivo","muumu.mp3"),
	("abejas", "muumum", "sustantivo","muumum.mp3"),
	("copechi", "kúpiri", "sustantivo","kúpiri.mp3"),
	("copechis", "kúpiris", "sustantivo","kúpiris.mp3"),
	("calandria", "mabbis", "sustantivo","mabbis.mp3"),
	("calandrias", "mabbisim", "sustantivo","mabbisim.mp3"),
	("iguana", "wikuri", "sustantivo","wikuri.mp3"),
	("iguanas", "wikurim", "sustantivo","wikurim.mp3"),
	("tortuga", "motchik", "sustantivo","motchik.mp3"),
	("tortugas", "motchikim", "sustantivo","motchikim.mp3"),
	("zorro", "aayes", "sustantivo","aayes.mp3"),
	("zorros", "aayesim", "sustantivo","aayesim.mp3"),
	("zorrillo", "juppa", "sustantivo","juppa.mp3"),
	("zorrillos", "juppam", "sustantivo","juppam.mp3"),
	("pez", "kutchu", "sustantivo","kutchu.mp3"),
	("peces", "kutchum", "sustantivo","kutchum.mp3"),
	("mosco", "wö", "sustantivo","wö.mp3"),
	("moscos", "wöm", "sustantivo","wöm.mp3"),
	("zancudo", "wö", "sustantivo","wö.mp3"),
	("zancudos", "wöm", "sustantivo","wöm.mp3"),
	("mosca", "sëböri", "sustantivo","sëböri.mp3"),
	("moscas", "sëbörim", "sustantivo","sëbörim.mp3"),
	
	-- Sustantivos: Plantas ✔
	("planta", "juyya", "sustantivo","juyya.mp3"),
	("pasto", "basso", "sustantivo","basso.mp3"),
	("zacate", "basso", "sustantivo","basso.mp3"),
	("flor", "seewa", "sustantivo","seewa.mp3"),
	("árbol", "owwo", "sustantivo","owwo.mp3"),
	("hoja", "sawwa", "sustantivo","sawwa.mp3"),
	("raíz", "naawa", "sustantivo","naawa.mp3"),
	("tallo", "otta", "sustantivo","otta.mp3"),
	("semilla", "báchia", "sustantivo","báchia.mp3"),
	("leña", "kutta", "sustantivo","kutta.mp3"),
	("maíz", "batchi", "sustantivo","batchi.mp3"),
	("mezquite", "jüpa", "sustantivo","jüpa.mp3"),
	("pitahaya", "aaki", "sustantivo","aaki.mp3"),
	("carrizo", "baaka", "sustantivo","baaka.mp3"),
	("trigo", "tirixkom", "sustantivo","tirixkom.mp3"),
	
	-- Sustantivos: Alimentos ✔
	("alimento", "buäwame", "sustantivo","buäwame.mp3"),
	("comida", "buäwame", "sustantivo","buäwame.mp3"),
	("calabaza", "kamma", "sustantivo","kamma.mp3"),
	("tortilla", "táxkari", "sustantivo","táxkari.mp3"),
	("tortillas", "táxkarim", "sustantivo","táxkarim.mp3"),
	("elote", "áabari", "sustantivo","áabari.mp3"),
	("elotes", "áabarim", "sustantivo","áabarim.mp3"),
	("manteca", "seebo", "sustantivo","seebo.mp3"),
	("pan", "páanim", "sustantivo","páanim.mp3"),
	("panes", "páanimim", "sustantivo","páanimim.mp3"),
	("carne", "waakas", "sustantivo","waakas.mp3"),
	("caldo", "bäwa", "sustantivo","bäwa.mp3"),
	("miel", "mumu bäwa", "sustantivo","mumu_bäwa.mp3"),
	("fruta", "taaka", "sustantivo","taaka.mp3"),
	("frutas", "taakam", "sustantivo","taakam.mp3"),
	("frijol", "muun", "sustantivo","muun.mp3"),
	("frijoles", "muunim", "sustantivo","muunim.mp3"),
	("melón", "minnol", "sustantivo","minnol.mp3"),
	("manzana", "mansáani", "sustantivo","mansáani.mp3"),
	("manzanas", "mansáanim", "sustantivo","mansáanim.mp3"),
	("nuez", "mansáani", "sustantivo","mansáani.mp3"),
	("nueces", "mansáanim", "sustantivo","mansáanim.mp3"),
	("nixtamal", "nápobakki", "sustantivo","nápobakki.mp3"),
	("sandía", "sákobari", "sustantivo","sákobari.mp3"),
	("sandías", "sákobarim", "sustantivo","sákobarim.mp3"),
	("carne", "waakas", "sustantivo","waakas.mp3"),
	("carnes", "waakasim", "sustantivo","waakasim.mp3"),
	("pescado", "kutchu", "sustantivo","kutchu.mp3"),
	("pescados", "kutchum", "sustantivo","kutchum.mp3"),
	("leche", "lechim", "sustantivo","lechim.mp3"),
	
	-- Sustantivos: Tiempo ✔
	("tiempo", "tiéempo", "sustantivo","tiéempo.mp3"),
	("segundo", "sewundo", "sustantivo","sewundo.mp3"),
	("segundos", "sewundom", "sustantivo","sewundom.mp3"),
	("día", "tawari", "sustantivo","tawari.mp3"),
	("días", "tawarim", "sustantivo","tawarim.mp3"),
	("semana", "semáana", "sustantivo","semáana.mp3"),
	("semanas", "semáanam", "sustantivo","semáanam.mp3"),
	("año", "wásuktia", "sustantivo","wásuktia.mp3"),
	("años", "wásuktiam", "sustantivo","wásuktiam.mp3"),
	("ayer", "tuuka", "sustantivo","tuuka.mp3"),
	("mañana", "yooko", "sustantivo","yooko.mp3"),
	("mañanas", "yookom", "sustantivo","yookom.mp3"),
	("tarde", "kuptey", "sustantivo","kuptey.mp3"),
	("tardes", "kupteyim", "sustantivo","kupteyim.mp3"),
	("noche", "tukáa", "sustantivo","tukáa.mp3"),
	("noches", "tukáam", "sustantivo","tukáam.mp3"),
	
	-- Sustantivos: Materiales ✔
	("agua", "bä", "sustantivo","bä.mp3"),
	("aire", "jeeka", "sustantivo","jekka.mp3"),
	("polvo", "toröchia", "sustantivo","toröchia.mp3"),
	("rayo", "yukku jímmari", "sustantivo","yukku_jímmari.mp3"),
	("luz", "machiria", "sustantivo","machiria.mp3"),
	("papel", "jiösia", "sustantivo","jiösia.mp3"),
	("luvia", "yukku", "sustantivo","yukku.mp3"),
	("sol", "tä", "sustantivo","tä.mp3"),
	("calor", "táttara", "sustantivo","táttara.mp3"),
	("hielo", "sappam", "sustantivo","sappam.mp3"),
	("tierra", "buía", "sustantivo","buía.mp3"),
	("lodo", "techoa", "sustantivo","techoa.mp3"),	
	
	-- Sustantivos: Ropa ✔
	("ropa", "sanko", "sustantivo","sanko.mp3"),
	("zapato", "boocha", "sustantivo","boocha.mp3"),
	("zapatos", "boocham", "sustantivo","boocham.mp3"),
	("camisa", "suppe", "sustantivo","suppe.mp3"),
	("camisas", "suppem", "sustantivo","suppem.mp3"),
	("brassier", "pippi bóosam", "sustantivo","pippi_bóosam.mp3"),
	("calzón", "buajji", "sustantivo","buajji.mp3"),
	("calzones", "buajjim", "sustantivo","buajjim.mp3"),
	("blusa", "suppe", "sustantivo","suppe.mp3"),
	("blusas", "suppem", "sustantivo","suppem.mp3"),
	
	-- Sustantivos: Otros ✔
	("camino", "bö", "sustantivo","bö.mp3"),
	("metate", "matta", "sustantivo","matta.mp3"),
	("piedra", "tetta", "sustantivo","tetta.mp3"),
	("viento", "jeeka", "sustantivo","jekka.mp3"),
	("fiesta", "paxko", "sustantivo","paxko.mp3"),
	("feria", "nakúlia", "sustantivo","nakúlia.mp3"),
	("español", "yorinok", "sustantivo","yorinok.mp3"),
	("luto", "luutu", "sustantivo","luutu.mp3"),
	("idioma", "nooki", "sustantivo","nooki.mp3"),
	("enfermedad", "kökoa", "sustantivo","kökoa.mp3"),
	("trabajo", "tekkil", "sustantivo","tekkil.mp3"),
	("color", "yókkia", "sustantivo","yókkia.mp3"),
	("cosa", "óori", "sustantivo","óori.mp3"),
	("regalo", "miiki", "sustantivo","miiki.mp3"),
	("rezo", "lionokki", "sustantivo","lionokki.mp3"),
	("revista", "jiösia", "sustantivo","jiösia.mp3"),
	("revistas", "jiösiam", "sustantivo","jiösiam.mp3"),
	("periódico", "jiösia", "sustantivo","jiösia.mp3"),
	("periódicos", "jiösiam", "sustantivo","jiösiam.mp3"),
	("libro", "jiösia", "sustantivo","jiösia.mp3"),
	("libros", "jiösiam", "sustantivo","jiösiam.mp3"),
	("montura", "siila", "sustantivo","siila.mp3"),
	("fuerza", "uttia", "sustantivo","uttia.mp3"),
	("basura", "chukki", "sustantivo","chukki.mp3"),
	("cesto", "wari", "sustantivo","wari.mp3"),
	("pedazo", "rebbey", "sustantivo","rebbey.mp3"),
	("racimo", "téjönia", "sustantivo","téjönia.mp3"),
	
	
	-- =========================================================================================
	-- Adjetivos
	("mañoso", "maynak", "adjetivo","maynak.mp3"),
	("mañosa", "maynak", "adjetivo","maynak.mp3"),
	("hermoso", "tüli", "adjetivo","tüli.mp3"),
	("hermosa", "tüli", "adjetivo","tüli.mp3"),
	("perezoso", "obëra", "adjetivo","obëra.mp3"),
	("perezosa", "obëra", "adjetivo","obëra.mp3"),
	("flojo", "obëra", "adjetivo","obëra.mp3"),
	("floja", "obëra", "adjetivo","obëra.mp3"),
	("grande", "buéwru", "adjetivo","buéwru.mp3"),
	("gordo", "awwi", "adjetivo","awwi.mp3"),
	("gorda", "awwi", "adjetivo","awwi.mp3"),
	("pulgoso", "téppuchëra", "adjetivo","téppuchëra.mp3"),
	("pulgosa", "téppuchëra", "adjetivo","téppuchëra.mp3"),
	("sabroso", "kiwwa", "adjetivo","kiwwa.mp3"),
	("sabrosa", "kiwwa", "adjetivo","kiwwa.mp3"),
	("mayor", "yöwe", "adjetivo","yöwe.mp3"),
	("zurdo", "mikkoy", "adjetivo","mikkoy.mp3"),
	("zurda", "mikkoy", "adjetivo","mikkoy.mp3"),
	("pobre", "póobe", "adjetivo","póobe.mp3"),
	("rápido", "nóolikki", "adjetivo","nóolikki.mp3"),
	("rápida", "nóolikki", "adjetivo","nóolikki.mp3"),
	("lleno", "tápuni", "adjetivo","tápuni.mp3"),
	("llena", "tápuni", "adjetivo","tápuni.mp3"),
	("cobarde", "nawía", "adjetivo","nawía.mp3"),
	("duro", "námaka", "adjetivo","námaka.mp3"),
	("dura", "námaka", "adjetivo","námaka.mp3"),
	("claro", "kálako", "adjetivo","kálako.mp3"),
	("clara", "kálako", "adjetivo","kálako.mp3"),
	("feo", "júnnera", "adjetivo","júnnera.mp3"),
	("fea", "júnnera", "adjetivo","júnnera.mp3"),
	("delgado", "wiloxko", "adjetivo","wiloxko.mp3"),
	("delgada", "wiloxko", "adjetivo","wiloxko.mp3"),
	("flaco", "wiloxko", "adjetivo","wiloxko.mp3"),
	("flaca", "wiloxko", "adjetivo","wiloxko.mp3"),
	("pequeño", "ilitchi", "adjetivo","ilitchi.mp3"),
	("pequeña", "ilitchi", "adjetivo","ilitchi.mp3"),
	("pilili", "ninniwëra", "adjetivo","ninniwëra.mp3"),
	("alto", "teebe", "adjetivo","teebe.mp3"),
	("alta", "teebe", "adjetivo","teebe.mp3"),
	("bajo", "komëra", "adjetivo","komëra.mp3"),
	("baja", "komëra", "adjetivo","komëra.mp3"),
	("húmedo", "baari", "adjetivo","baari.mp3"),
	("húmeda", "baari", "adjetivo","baari.mp3"),	
	("caliente", "tatta", "adjetivo","tatta.mp3"),
	("frío", "sebbe", "adjetivo","sebbe.mp3"),
	("pesado", "bette", "adjetivo","bette.mp3"),
	("pesada", "bette", "adjetivo","bette.mp3"),
	("suave", "tüli", "adjetivo","tüli.mp3"),
	("blando", "bualko", "adjetivo","bualko.mp3"),
	("blanda", "bualko", "adjetivo","bualko.mp3"),
	("fresco", "baali", "adjetivo","baali.mp3"),
	("fresca", "baali", "adjetivo","baali.mp3"),
	("dulce", "kákkära", "adjetivo","kákkära.mp3"),
	("salteado", "móola", "adjetivo","móola.mp3"),
	("sazón", "jójoni", "adjetivo","jójoni.mp3"),
	("salado", "chöko", "adjetivo","chöko.mp3"),
	("amargo", "chiibu", "adjetivo","chiibu.mp3"),
	("antigüo", "bínwatume", "adjetivo","bínwatume.mp3"),
	
	-- Adjetivos: Colores ✔
	("blanco", "tósali", "adjetivo","tósali.mp3"),
	("blanca", "tósali", "adjetivo","tósali.mp3"),
	("negro", "chukuli", "adjetivo","chukuli.mp3"),
	("gris", "tóroko", "adjetivo","tóroko.mp3"),
	("azul", "teweli", "adjetivo","teweli.mp3"),
	("rojo", "síkiri", "adjetivo","síkiri.mp3"),
	("roja", "síkiri", "adjetivo","síkiri.mp3"),
	("verde", "siáari", "adjetivo","siáari.mp3"),
	("naranja", "naráaso", "adjetivo","naráaso.mp3"),
	("amarillo", "sawali", "adjetivo","sawali.mp3"),
	("café", "kafée", "adjetivo","kafée.mp3"),
	("rosa", "tósali síkiri", "adjetivo","tósali_síkiri.mp3"),
	
	
	-- ======================================================================================
	-- Adverbios
	("nada", "kaita", "abverbio","kaita.mp3"),
	("abajo", "bétuk", "abverbio","bétuk.mp3"),
	("acá", "äbo", "abverbio","äbo.mp3"),
	("allá", "áma", "abverbio","áma.mp3"),
	("allí", "áma", "abverbio","áma.mp3"),
	("tras", "saw", "abverbio","saw.mp3"),
	("vez", "béleku", "abverbio","béleku.mp3"),
	("ya", "beja", "abverbio","beja.mp3"),
	("muy", "may", "abverbio","may.mp3"),
	("poco", "ili", "abverbio","ili.mp3"),
	("poquito", "ámmäli", "abverbio","ámmäli.mp3"),
	("luego", "láwti", "abverbio","láwti.mp3"),
	("bien", "tüysi", "abverbio","tüysi.mp3"),
	("mal", "ka tüysi", "abverbio","ka_tüysi.mp3"),
	("ahorita", "jübua", "abverbio","jübua.mp3"),
	("montón", "móora", "abverbio","móora.mp3"),
	("aún", "ketune", "abverbio","ketune.mp3"),
	("lejos", "mekka", "abverbio","mekka.mp3"),
	("antes", "batnaateka", "abverbio","batnaateka.mp3"),
	("siempre", "jibba", "abverbio","jibba.mp3"),
	("cerca", "ka mekka", "abverbio","ka_mekka.mp3"),
	("junto", "naapo", "abverbio","naapo.mp3"),
	("mejor", "chë tü", "abverbio","chë_tü.mp3"),
	("mucho", "büru", "abverbio","büru.mp3"),
	("apenas", "ën jübua", "abverbio","ën_jübua.mp3"),
	("algo", "jita", "abverbio","jita.mp3"),
	("casi", "abe", "abverbio","abe.mp3"),
	("demasiado", "úuna", "abverbio","úuna.mp3"),
	("despacio", "lawti", "abverbio","lawti.mp3"),
	("como", "bénnasi", "abverbio","bénnasi.mp3"),
	("nunca", "kaybu", "abverbio","kaybu.mp3"),
	("jamás", "kaybu", "abverbio","kaybu.mp3"),
	("también", "ket", "abverbio","ket.mp3"),
	("quizá", "jamak", "abverbio","jamak.mp3"),
	("quizás", "jamak", "abverbio","jamak.mp3"),
	("ahora", "ën", "abverbio","ën.mp3"),
	("así", "ínël", "abverbio","ínël.mp3"),
	
	
	
	-- ==================================================================================
	-- Verbos
	("es", "ájäria", "verbo","ájäria.mp3"),
	("son", "amëríamme", "verbo","amëríamme.mp3"),
	("está", "aane", "verbo","aane.mp3"),
	("están", "aanem", "verbo","aanem.mp3"),
	("cae", "wétche", "verbo","wetche.mp3"),
	("tiene", "jípure", "verbo","jípure.mp3"),
	("tienes", "jípurem", "verbo","jípurem.mp3"),
	("trae", "núupa", "verbo","núupa.mp3"),
	("duele", "köko", "verbo","köko.mp3"),
	("sabe", "jüneyya", "verbo","jüneyya.mp3"),
	("sacude", "takke", "verbo","takke.mp3"),
	("saluda", "tebote", "verbo","tebote.mp3"),
	("sazona", "jójonia", "verbo","jójonia.mp3"),
	("florece", "seewa", "verbo","seewa.mp3"),
	("falta", "bëye", "verbo","bëye.mp3"),
	("estudia", "extudiáarua", "verbo","extudiáarua.mp3"),
	("adora", "muxte", "verbo","muxte.mp3"),
	("enferma", "kökori", "verbo","kökori.mp3"),
	("echa", "tója", "verbo","tója.mp3"),
	("quiere", "wáatia", "verbo","wáatia.mp3"),
	("trabaja", "tekipánoa", "verbo","tekipánoa.mp3"),
	("ir", "va", "verbo","va.mp3"),
	("da", "miika", "verbo","miika.mp3"),
	("va", "weyye", "verbo","weyye.mp3"),
	("van", "kaate", "verbo","kaate.mp3"),
	("ve", "bitcha", "verbo","bitcha.mp3"),
	("ven", "yaawa", "verbo","yaawa.mp3"),
	("vive", "jiabsa", "verbo","jiabsa.mp3"),
	("vuela", "nëye", "verbo","nëye.mp3"),
	("debe", "wikiria", "verbo","wikiria.mp3"),
	("desea", "ukule", "verbo","ukule.mp3"),
	("cree", "suáale", "verbo","suáale.mp3"),
	("cría", "bukke", "verbo","bukke.mp3"),
	("cosecha", "chuppa", "verbo","chuppa.mp3"),
	("crece", "yötu", "verbo","yötu.mp3"),
	("corta", "chuktia", "verbo","chuktia.mp3"),
	("corre", "buyte", "verbo","buyte.mp3"),
	("piensa", "eyya", "verbo","eyya.mp3"),
	("pierde", "täru", "verbo","täru.mp3"),
	("puede", "ára", "verbo","ára.mp3"),
	("reza", "lionokka", "verbo","lionokka.mp3"),
	("ríe", "aache", "verbo","aache.mp3"),
	("lee", "jiösiam bitcha", "verbo","jiösiam_bitcha.mp3"),
	("lame", "tëbua", "verbo","tëbua.mp3"),
	("llora", "buaana", "verbo","buaana.mp3"),
	("llega", "yebsa", "verbo","yebsa.mp3"),
	("llama", "chaaye", "verbo","chaaye.mp3"),
	("tira", "jimma", "verbo","jimma.mp3"),
	("avienta", "jimma", "verbo","jimma.mp3"),
	("fue", "siika", "verbo","siika.mp3"),
	("fuma", "yenna", "verbo","yenna.mp3"),
	("ocupado", "obisi aane", "verbo","obisi_aane.mp3"),
	("abre", "étapo", "verbo","étapo.mp3"),
	
	
	-- ==================================================================================
	-- Interjecciones ✔
	("adiós", "jáléppantuko", "interjección","jáléppantuko.mp3"),
	("que", "jitta", "interjección","jitta.mp3"),
	("pero", "të", "interjección","të.mp3"),
	("si", "jewwi", "interjección","jewwi.mp3"),
	("no", "ka", "interjección'","ka.mp3"),
	("y", "ento", "interjección'","ento.mp3"),
	("cómo", "jáchin", "interjección","jáchin.mp3"),
	("cuándo", "jakwéey", "interjección","jakwéey.mp3"),
	("cuánto", "jayki", "interjección","jayki.mp3"),
	("cuál", "jitta", "interjección","jitta.mp3"),
	("cuáles", "jittam", "interjección","jittam.mp3"),
	("dónde", "jákun", "interjección","jákun.mp3"),
	("quién", "jabbe", "interjección","jabbe.mp3");


SELECT * FROM tabla_diccionario;
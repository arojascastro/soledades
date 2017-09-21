# *Soledades*. Edición anotada. Criterios de codificación 

Este documento tiene por objetivo exponer los criterios de codificación empleados en el archivo `soledades_anotada.xml`.

Esta codificación de las *Soledades* ha sido concebida para que el usuario acceda a la transcripción paleográfica y al texto modernizado de Chacón. El texto viene acompañado de dos tipos de notas (editorial y explicativa). 

## Encabezado

El encabezado TEI es el lugar del archivo XML en el que se recogen los metadatos, es decir, toda aquella información que permite identificar un documento digital y declarar cuál es la fuente de la que deriva el texto. En esta parte del archivo, además, se pueden registrar otro tipo de información suplementaria como los criterios editoriales, el tipo de texto o datos relativos a la creación de la obra desde un punto de vista intelectual.


### Descripción del archivo

#### Título

El elemento `<fileDesc>` contiene una serie de elementos con información bibliográfica sobre el archivo electrónico necesaria para su citación y catalogación. Se inicia con el elemento `<titleStmt>` en donde se sitúa el título de la edición digital, el autor del texto codificado, el editor y la agencia que financia el proyecto: 

```xml
<titleStmt>
				<title>Soledades. Edición digital anotada</title>
				<author>Luis de Góngora</author>
				<respStmt>
					<resp>Edición, codificación y diseño gráfico de </resp>
					<persName ref="http://antoniorojascastro.com">Antonio Rojas Castro</persName>
				</respStmt>
				<funder>Ministerio de Economía y Competitividad. Todo Góngora II [I+D+I FFI2010-17349]</funder>
			</titleStmt>
```

#### Edición

Dentro del elemento `<fileDesc>`, se localiza toda una serie de elementos que aportan información complementaria sobre el número de edición. Con el elemento `<edition>`, contenido en `<editionStmt>`, doy el número de la edición:
 
```xml
<editionStmt>
				<edition n="2"><date when="2017-09">Septiembre de 2017</date></edition>
			</editionStmt>
```

En este caso se trata de una segunda edición; si en el futuro se publicara este archivo en internet y otro investigador lo modificara o lo reutilizara con otros fines, sería posible identificar el número de edición y añadir un elemento `<respStmt>` en el que se especificaría cuál ha sido la aportación del nuevo editor, así como su nombre y apellidos. El elemento `<editionStmt>` no es obligatorio, pero la TEI lo recomienda. 

#### Publicación 

A continuación, se sitúa el elemento `<publicationStmt>`. Con esta etiqueta, obligatoria, se proporciona información sobre qué sujeto, institución o grupo publica el archivo electrónico y bajo qué licencia se puede acceder a él y utilizar:

```xml
 <publicationStmt>
				<distributor>Antonio Rojas Castro</distributor>
				<pubPlace>Colonia</pubPlace>
				<date when="2017-09">2017</date>
				<availability status="free">
					<licence target="http://creativecommons.org/licenses/by/4.0/">Esta obra se publica con una licencia de Creative Commons Reconocimiento 4.0 Internacional</licence>
				</availability>
			</publicationStmt>
```

En mi propuesta de codificación XML/TEI de las *Soledades* me he identificado como `<publisher>` porque utilizo un servidor personal para publicar esta edición. Por lo demás, el elemento `<pubPlace>` contiene el nombre del lugar de publicación y `<date>`, la fecha de publicación.

Menos detalles precisa el elemento `<availability>` con el que se da información sobre la disponibilidad del texto. Es posible indicar la licencia de publicación y uso de dos maneras distintas: mediante un párrafo en prosa contenido en un elemento `<p>` o bien mediante el elemento `<license>`. Tal y como he realizado en esta propuesta de codificación, en el segundo caso se puede utilizar un atributo `@target` que apunte hacia una URL en donde se explican los términos de la licencia.


#### Descripción de las fuentes

El último elemento que contiene el `<fileDesc>` corresponde al `<sourceDesc>`. Se trata de un elemento obligatorio y en el caso de una edición crítica digital es el más importante porque se utiliza para registrar las fuentes de las que deriva el archivo electrónico. Si el texto no deriva de ningún documento, es necesario declarar esto con una frase como *Documento nacido digital* dentro de un elemento `<p>`. 

Si el texto codificado es una digitalización de un solo documento (por ejemplo, una edición impresa publicada en época moderna) el elemento `<sourceDesc>` puede contener simplemente un elemento `<bibl>` o bien, si queremos estructurar la información, un elemento `<biblStruct>`. En ambos elementos se indicaría el autor, el título, el lugar de publicación, la casa editorial y el año de publicación. 

Para establecer el texto de las *Soledades* he utilizado 22 documentos: 17 manuscritos y 5 impresos. La relación de estos documentos se encuentra en el encabezado TEI en el elemento `<listWit>` que, a su vez, contiene cada uno de los elementos `<witness>` en donde se identifican y describen los testimonios utilizados. 

Este elemento contiene un atributo `@xml:id` que permite identificar cada documento mediante un valor único —en este caso, las siglas del testimonio—. Para describir los testimonios en detalle, he incorporado en el esquema el módulo *msdescription* correspondiente al capítulo décimo de las *Guidelines* de la TEI. De esta manera se puede utilizar el elemento `<msDesc>` para identificar con precisión el documento y su contenido intelectual. Asimismo, he utilizado un atributo `@type` dentro del elemento `<msDesc>` para distinguir entre manuscritos e impresos mediante los valores *manuscript* y *print*. En el caso del manuscrito Chacón, además, he utilizado el atributo *@subtype* para indicar que se trata del manuscrito base —el valor que he definido es *basetext*—; en otras palabras, aquel documento que, en principio, contiene las lecciones preferidas y que por ello ha sido utilizado para cotejar el resto de testimonios. 

La identificación del manuscrito se lleva a cabo con el elemento `<msIdentifier>`: 

```xml
<msDesc type="manuscript">
                            <msIdentifier>
                                <country>España</country>
                                <settlement>Madrid</settlement>
                                <repository>Biblioteca Nacional de España</repository>
                                <collection>Fondo antiguo</collection>
                                <idno type="cataloguenumber">Mss/4075</idno>
                                <msName>Varias poesías de Luis de Góngora</msName>
                                <msName>Manuscrito Alba</msName>
                            </msIdentifier>
                            <msContents>
                                <msItem>
                                    <locus from="235r" to="275v">235r-275v</locus>
                                    <title level="m">Soledades</title>
                                </msItem>
                            </msContents>
                        </msDesc>
```

En este elemento se etiqueta el país, la ciudad, la biblioteca o repositorio y la colección en donde se encuentra el manuscrito que se pretende describir. Con el elemento `<idno>` se codifica la signatura.  Si existe otra forma de identificar el manuscrito —por ejemplo, una signatura distinta en el pasado— es posible codificarla con el elemento `<altIdentifier>`. Por último, en el elemento `<msName>` se halla el  nombre o sobrenombre con el que se conoce el manuscrito.

Los documentos que transmiten la poesía de Góngora suelen ser manuscritos unitarios que contienen muchos poemas del mismo autor por lo que conviene identificar con precisión cuál es el texto realmente utilizado. Para ello, he utilizado los elementos `<msContents>` y `<msItem>`. De esta manera, sería posible identificar cada uno de los textos que contiene un documento mediante su localización exacta tomando como unidad las páginas o folios que ocupa y, en caso de que tenga uno, el título. Puesto que para realizar esta edición crítica digital solo he cotejado el texto de las *Soledades*, me ha parecido suficiente codificar la posición que ocupa en el manuscrito.

### Perfil del texto

El elemento <profileDesc> agrupa varios elementos con los que se puede codificar información no bibliográfica. En esta codificación TEI he recogido en el encabezado una lista de entidades mencionadas en el texto.

#### Personas

Por un lado, tenemos una lista de personas o seres animados (en su  mayoría personajes mitológicos) referidos de manera explicita a lo largo del poema. Estas entidades se han codificado en la lista `<listPerson xml:id="onomastico">`. Dicha lista contiene una serie de elementos `<person>` en los que doy información sobre el nombre y la ocupación de la entidad:

```xml 
<person xml:id="act01">
						<persName>Acteón</persName>
						<occupation>Era un célebre cazador iniciado en este arte por el centauro Quirón, también maestro de Aquiles. Hijo de Autónoe y nieto de Cadmo, sufrió la ira de Diana tras verla desnuda
							bañándose en un lago; la diosa lo convirtió en ciervo y sus propios perros le dieron caza.</occupation>
					</person>
```

Es importante remarcar que cada elemento `<person>` debe tener un atributo `@xml:id` al que remiten las menciones codificadas en el poema.

#### Lugares

Por el otro lado, tenemos los lugares mencionados de manera explícita; estos se han codificado en el elemento `<settingDesc>`. Se compone de una lista de elementos `<place>` que, en este caso, solo contienen el elemento `<geogName>`:

```xml
<place xml:id="aga101">
						<geogName>Aganipe</geogName>
					</place>
```

Como ocurre con el elemento utilizado para representar personas, aquí también es obligatorio el uso del atributo `@xml:id` porque los nombres de lugares etiquetados en el poema deben remitir a una entidad contenida en el encabezado.

## Texto

Tras detallar cómo se ha codificado la información contenida en el `<teiHeader>`, hay que pasar a comentar la segunda parte que todo documento TEI debe tener: el elemento `<text>` en donde, como es lógico, debe situarse un texto. Este elemento `<text>` contiene un atributo `@xml:lang` con valor *spa* que sirve para definir la lengua en que está escrito el texto. 

Esta edición de las *Soledades* contiene tres partes principales: los preliminares o ensayo introductorio, el poema en sí, y una bibliografía. Las tres partes están, representadas, respectivamente en en los elementos: `<front>`, `<body>` y `<back>`. 

### Preliminares

Los preliminares se han codificado en el elemento `<front>`. Este elemento, a su vez, contiene tres elementos `<div>` con atributos `@xml:id`. 

Los elementos `<div>`pueden contener elementos `<head>` con el título y, asimismo, otros elementos `<div>` con apartados. En general, éstos se componen de elementos `<p>` (párrafos), `<q>` (bloques de cita) y `<list>` (listas de ítems). 

Los párrafos de prosa suelen contener títulos, palabras mencionadas y referencias bibliográficas. Los títulos sido codificados con el elemento `<hi rend="italic">`, las palabras mencionadas, con `<mentioned rend="italic">` y las referencias bibliográficas, con `<ref target="#gon1994">`; estas últimas contienen un atributo `@target` con el que se remite a una entradada bibliográfica contenida en el elemento `<back>`.   

 
### Cuerpo 

#### Título, partes y subtítulos del poema

El texto de las *Soledades* se sitúa en el elemento `<body>`, que contiene un elemento `<head>` (el título de la obra) y tres elementos `<div>` correspondientes a las tres partes del poema: Dedicatoria, *Soledad primera* y *Soledad segunda*:

```xml
    <body>
    <head type="main">
    <div n="0" type="part" xml:id="p-0">
    <div n="1" type="part" xml:id="p-1">
    <div n="2" type="part" xml:id="p-2">
    </body>
```

Cada uno de estos elementos `<div>` contiene un atributo `@xml:id` con el que se ha identificado de manera inequívoca con un código único cada una de las partes. Cada una de estas partes, a su vez, se inicia con un título que se ha representado con el elemento `<head>`. En los tres casos he puesto un atributo `@type` con valor *sub* para distinguirlos del título general de la obra. Los títulos o encabezamientos de cada una de estas partes pertenecen al manuscrito Chacón.  
 

#### Versos

Las *Soledades* es una larga silva en el que se combinan con cierta libertad endecasílabos y heptasílabos. Algunos editores modernos como Dámaso Alonso introdujeron cortes en el poema con el objetivo de facilitar la comprensión de la obra; pero John Beverley, Robert Jammes y Antonio Carreira prefirieron eliminar estos cortes, editar el texto como un todo y sugerir algunas pausas mediante el sangrado del primer verso. La fuente que utilizaron todos estos editores —el manuscrito Chacón— no introduce líneas en blanco para separar las estrofas pero esto no quiere decir que no haya grupos de versos de extensión variada. El inicio de estos grupos se visualiza en el manuscrito mediante el sangrado del primer verso hacia la izquierda, es decir, a la francesa. En otras palabras, estos grupos de versos no se distinguen por razones métricas sino por su disposición sobre la página.

En esta propuesta de codificación he seguido la estructuración por grupos de versos que da el manuscrito Chacón. Para marcar estos grupos de versos he utilizado no he utilizado la etiqueta `<lg>`, sino que he marcado el primer veso de cada grupo con un atributo `@rend` con valor `indent`. En total, hay 87 versos con dicho atributo. 

Ahora bien, en el *codex optimus* de la tradición gongorina, en realidad, se hallan 88 grupos de versos pero, en mi opinión, el que empieza con «Víbora pisa tal el pensamiento» debe presentarse unido al grupo de versos anterior: en lugar de un punto y aparte, creo que es mejor utilizar un punto y seguido porque la relación entre las dos oraciones es muy estrecha. En consecuencia, en mi codificación no hay 88  versos indentados a la francesa, sino 87 tanto en el transcripción paleográfica como en el texto modernizado. 
 
Los versos se codifican con la etiqueta `<l>`. La TEI define este elemento desde el punto de vista métrico y no tipográfico; en otras palabras, si por razones de espacio algún verso queda roto la TEI recomienda o bien ignorar este hecho o bien utilizar el elemento <lb> para marcarlo. En esta propuesta de las *Soledades* solo se han codificado versos teniendo en cuenta sus rasgos métricos. En total se han codificado 2.107 versos.

Los elementos `<l>` pueden contener hasta tres atributos: en primer lugar, un `@xml:id` con el que se identifica cada uno de los versos cuyo valor ha sido definido de la siguiente manera: *v* (*verso*), guion y número correlativo de cuatro cifras (por ejemplo, *v-0001*); este atributo es obligatorio en mi propuesta de codificación. En segundo lugar, encontramos el atributo `@n` que sirve para numerar los versos. No todos los versos contienen este atributo porque, siguiendo la tradición impresa, me ha parecido suficiente numerar cada cinco versos; la numeración, por lo demás, sigue el texto de la versión final. Por último, como ya se ha dicho, el atributo `@rend` con valor *indent* para codificar los 87 versos que Chacón sangró hacia la izquierda.
  
A continuación, inserto un fragmento de XML que contiene los tres atributos mencionados del elemento `<l>`:

```xml
<l n="90" rend="indent" xml:id="v-0127">
					<choice>
						<orig>Llegò</orig>
						<reg>Llegó</reg>
					</choice> pues el mancebo, <choice>
						<orig>i</orig>
						<reg>y</reg>
					</choice> saludado</l>
```

#### Saltos de página

Además del sistema de referencias basado en las partes del texto —Dedicatoria, *Soledad primera* y *Soledad segunda*— , esta codificación incluye la paginación del manuscrito Chacón; para ello se ha utilizado el elemento `<pb/>`; sirve para codificar estructuras no jerárquicas que dividen el texto en trozos. Al marcar los saltos de página es posible captar la estructura del documento y permitir al usuario navegar el texto de manera fragmentaria. 

Con `<pb/>` es posible representar cuándo se inician las páginas o folios de todos los testimonios cotejados gracias al atributo `@ed` pues su valor se define en el atributo `@xml:id` del elemento `<witness>`. Ahora bien, en esta codificación solo he marcado los saltos de página del manuscrito base porque se pretende atraer la atención del usuario hacia el *codex optimus* de la tradición gongorina. Veamos un ejemplo:

```xml
<pb ed="#Ch" facs="193.jpg" n="193"/>
				<l rend="indent" xml:id="v-0001">
					<choice>
						<orig>
							<hi rend="initial">P</hi>ASOS</orig>
						<reg>Pasos</reg>
					</choice> de <choice>
						<orig>vn</orig>
						<reg>un</reg>
					</choice> peregrino son errante
					[...]
				</l>
```

Como se puede apreciar, el elemento `<pb/>` se sitúa siempre al inicio de tal modo que el resto de elementos se sitúan tras él. Además del atributo `@ed`, con el que se identifica al testimonio, he utilizado otros dos: los atributos `@n` y `@facs`. El primero sirve para describir el número tal y como aparece en la fuente mientras que el segundo remite a un archivo .jpg a fin de que la web visualice el facsímil de cada página del manuscrito Chacón. 


#### Transcripción paleográfica y texto modernizado

Con la excepción de once lecciones procedentes de otros testimonios, el texto de las *Soledades* que he codificado coincide con el transmitido por el manuscrito Chacón. La particularidad de esta codificación consiste en la doble presentación del texto: por un lado, la transcripción paleográfica, que conserva la mayoría de rasgos característicos de la ortotipografía del manuscrito Chacón; por el otro, una modernización de la ortografía, los signos de puntuación y otros aspectos tipográficos del texto del siglo XVII. La primera dimensión, pues, es historicista y conservadora: transporta al lector al siglo XVII. La segunda, en cambio, es actualizadora en la medida en que adapta los aspectos accidentales del texto a la norma vigente de la lengua española y a las convenciones tipográficas contemporáneas. 

El elemento definido por la TEI para agrupar codificaciones alternativas se llama `<choice>`. Esta etiqueta contiene una pareja de elementos con los que se representan las intervenciones editoriales. Para ilustrar cómo he procedido creo que es mejor analizar directamente un caso concreto, por ejemplo, el verso 26 (*Ô DVQVE esclarecido!*) de la Dedicatoria, tal y como aparece en Chacón. El etiquetado XML/TEI es el siguiente: 

```xml
<l xml:id="v-0026">
					<choice>
						<orig/>
						<reg>¡</reg>
					</choice><choice>
						<orig>Ô</orig>
						<reg>oh</reg>
					</choice>
					<choice>
						<orig>DVQVE</orig>
						<reg>duque</reg>
					</choice> esclarecido!<choice>
						<orig/>
						<reg>,</reg>
					</choice>					
</l>
```

Con este ejemplo se puede ver con facilidad que el par de elementos `<orig>` y  `<reg>`se ha utilizado para presentar al mismo tiempo la forma original y la forma regularizada de tres aspectos del texto: la tipografía, el uso de mayúscula/minúscula y la puntuación.

El primer uso del elemento `<choice>` ejemplifica cómo es posible presentar vistas alternativas en relación con la tipografía. En este caso, y desde nuestra perspectiva contemporánea, al texto contenido por el manuscrito Chacón le falta un signo exclamativo de apertura pues solo presenta el de cierre. Para representar este fenómeno he dejado vacío el elemento `<orig>`; en el elemento `<reg>`, en cambio, he introducido un signo exclamativo de apertura:

```xml
<choice>
	<orig/>
 	<reg>¡</reg>
</choice>
```

En el segundo caso la misma combinación de elementos sirve para codificar cómo Chacón utiliza la mayúscula y para regularizar el texto respetando las convenciones actuales. En el elemento `<orig>` se sitúa la forma *Ô*, en mayúscula y con un acento circunflejo, mientras que en el elemento `<reg>` he regularizado la interjección `oh` poniéndola en minúscula, pues no antecede ningún punto, y con la letra `h`, tal y como se escribe actualmente:

```xml
    <choice>
        <orig>Ô</orig>
        <reg>oh</reg>
  </choice>
 ```

El tercer y último caso se parece al primero ya comentado. Chacón no puntúa el verso de ninguna manera, pero en mi propuesta de codificación de las *Soledades*, y siguiendo la costumbre de los editores modernos, he considerado conveniente añadir una coma, pues se trata de un vocativo. El elemento `<orig>`, por tanto, está vacío, no contiene texto alguno mientras que la modernización contiene una coma:

```xml
    <choice>
        <orig/>
        <reg>,</reg>
  	</choice>
```

La misma combinación de etiquetas ha sido utilizada para codificar la forma original y modernizada de las palabras. Así, en el ejemplo siguiente se percibe cómo la ortografía con que Chacón escribe `estranjero` se conserva gracias al elemento `<orig>` y, al mismo tiempo, se moderniza:  

```xml
   <l xml:id="v-0083">
					<choice>
						<orig>Quando</orig>
						<reg>cuando</reg>
					</choice><choice>
						<orig/>
						<reg>,</reg>
					</choice> entregado el <choice>
						<orig>misero</orig>
						<reg>mísero</reg>
					</choice>
					<choice>
						<orig>estrangero</orig>
						<reg>extranjero</reg>
					</choice>
				</l>
```

Aunque la TEI no se pronuncia sobre si este grupo de elementos debieran contener palabras o grafías, en las *Guidelines* solo se recogen ejemplos de codificación de palabras por lo que he seguido esta metodología. Por regla general, pues, he codificado las palabras una por una con la excepción de las contracciones o uniones fonético-sintácticas en las que es inevitable codificar el grupo léxico. Así, por ejemplo, aunque los casos son muchos y variados, la contracción de la preposición *de* y del artículo determinante masculino *el* en sus múltiples manifestaciones:

```xml
<l n="15" xml:id="v-0052">
					<choice>
						<orig>De el</orig>
						<reg>Del</reg>
					</choice> siempre en la montaña <choice>
						<orig>oppuesto</orig>
						<reg>opuesto</reg>
					</choice> pino</l>
```


#### Destacados

Aunque en el modelo de codificación TEI prima la estructura lógica por encima de la apariencia, ya se ha visto que también es posible marcar la paginación de los códices con el elemento `<pb/>` o qué versos se distinguen del resto por la sangría gracias al atributo `@rend`. También existe un elemento `<hi>` creado para codificar el aspecto de palabras que se distinguen gráficamente del resto. En esta propuesta de codificación el elemento `<hi>` se utiliza para identificar las letras iniciales con que se abren las tres partes del poema que Chacón presenta en tamaño mayor.
 
En efecto, en el primer verso de la *Soledad primera* la palabra *Era* aparece en mayúsculas y con la *E* inicial en un cuerpo de letra mayor. Para poder conservar este rasgo característico del manuscrito Chacón y a la vez ofrecer el pasaje normalizado según los hábitos de escritura actuales, he anidado el elemento `<hi>` en la combinación de etiquetas `<choice>` + `<orig>` / `<reg>` con un atributo `@rend` cuyo valor es `initial`:

```xml
<choice>
	<orig><hi rend="initial">E</hi>RA</orig>
	<reg>Era</reg>
</choice>
```

En el manuscrito Chacón hay otros casos en los que se podría haber utilizado el elemento `<hi>`: los títulos, subtítulos, la primera palabra con que se inicia cada una de las tres partes del poema, las palabras *duque* y *pasos* de la Dedicatoria y los nombres propios de los personajes (*Lícidas*, *Micón*, *Leucipe* y *Cloris*) que aparecen en la *Soledad segunda* se diferencian del resto porque van en mayúsculas. Ahora bien, no me parece necesario utilizar lenguaje de marcado para representar este fenómeno porque en la interfaz web basta con que aparezcan en mayúsculas.


#### Abreviaturas y expansiones

La misma combinación de elementos también puede utilizarse para codificar la forma abreviada y la forma expandida de una palabra. El manuscrito Chacón contiene pocas abreviaturas pero, precisamente por eso, creo que vale la pena conservarlas en la transcripción paleográfica y desarrollarlas en el texto modernizado. 

Para llevar a cabo esto he sustituidolos elementos `<orig>` y `<reg>` por las etiquetas `<abbr>` y `<expan>` respectivamente. Así, por ejemplo, en el verso 159 de la *Soledad segunda* (*o filos pongan de homicida hierro*) Chacón abrevia la *n* final de la forma verbal *pongan* mediante una virgulilla situada encima de la *a*. La combinación de elementos que propongo para este tipo de fenómenos textuales es la siguiente: 

```xml
<l xml:id="v-1287">
					<choice>
						<orig>O</orig>
						<reg>o</reg>
					</choice> filos <choice>
						<abbr>pongã</abbr>
						<expan>pongan</expan>
					</choice> de homicida hierro</l>
```

También se pueden encontrar otros casos en que la abreviatura afecta a los nombres propios de los personajes como ocurre con los pescadores de la *Soledad segunda*. La primera mención en el canto amebeo no presenta ningún problema pero en adelante Chacón abrevia los nombres, tanto de Micón como de Lícidas. Si queremos visualizar la forma abreviada y la expansión es necesario recurrir al elemento `<choice>`: 

```xml
<choice>
						<abbr>Lici</abbr>
						<expan>
							<persName ref="#lic057">Lícidas</persName>
						</expan>
					</choice><choice>
						<orig>.</orig>
						<reg/>
					</choice>
```

#### Errores y correcciones

El texto que contiene el manuscrito Chacón y que sirve de base para esta codificación contiene algunos errores evidentes. Las etiquetas definidas por la TEI para marcar los errores y las formas correctas propuestas por el editor son dos: `<sic>` y `<corr>`. En esta propuesta de codificación, ambos elementos se anidan en el elemento `<choice>` de la misma manera que lo hacen las abreviaturas y expansiones. 

Por un lado, tenemos errores ortotipográficos como la omisión de un signo de puntuación o bien el uso anómalo, al menos desde nuestra perspectiva contemporánea, de alguna coma, punto, dos puntos o paréntesis. Así, por ejemplo, en el verso 499 de la *Soledad primera* (*Quédese, amigo, en tan inciertos mares*), Chacón utiliza un paréntesis de apertura en lugar de una coma para introducir el vocativo. Como en los casos anteriores en los que se han codificado formas alternativas la combinación de elementos debe ser la siguiente:

```xml
<choice>
						<sic> (</sic>
						<corr>, </corr>
					</choice>amigo, 
```

Por el otro lado, pueden apreciarse con claridad pasajes que omiten alguna grafía, añaden alguna de más o simplemente la confunden con otra. Esta última posibilidad se ejemplifica con el verso 580 (*de musculosos jóvenes desnudos*) de la *Soledad segunda*; Chacón lee *muscolosos*, pero es evidente que el poeta quiso decir *musculosos*. He aquí nuevamente los elementos utilizados en esta propuesta de codificación XML/TEI: 

```xml
<l n="580" xml:id="v-1708">
					<choice>
						<orig>De</orig>
						<reg>de</reg>
					</choice>
					<choice>
						<sic>muscolosos</sic>
						<corr>musculosos</corr>
					</choice>
					<choice>
						<orig>jouenes</orig>
						<reg>jóvenes</reg>
					</choice> desnudos.</l>
```

Esta metodología, ideada para generar dos vistas alternativas en el navegador del usuario —los errores y las correcciones—, únicamente ha sido empleada para establecer el texto base transmitido por el manuscrito Chacón. 
 

#### Nombres propios

De la poesía de Góngora se ha destacado tradicionalmente como un rasgo característico la alusión y el uso de la perífrasis para evitar designar a los referentes por su nombre. Ahora bien, a lo largo de las *Soledades* se mencionan numerosas divinidades, héroes, astros y personajes mitológicos, históricos, ficticios y alegóricos. Los nombres de lugares también son frecuentes de tal modo que la designación de numerosos países, ciudades, regiones, continentes, ríos, montañas, fuentes y valles conforman la geografía de la obra. Todos estos nombres, por tanto, se pueden codificar con elementos TEI.

El objetivo de la codificación de los nombres propios (antropónimos y topónimos) es automatizar la creación de índices de tal modo que el usuario pueda leer el texto de las *Soledades* de manera no lineal. Para ello, TEI define dos elementos generales: `<name>` (para representar cualquier tipo de nombre propio) y `<rs>` para representar frases que equivalen a nombres (por ejemplo, una perífrasis). Sin embargo, en esta codificación he utilizado tres elementos más específicos: `<persName>`, `<placeName>` y `<geogName>`. Estos elementos permiten identificar nombres propios de personas, lugares y accidentes geográficos. El proceso de codificación es sencillo:

```xml
<l n="490" xml:id="v-0527">
					<choice>
						<orig>Que</orig>
						<reg>que</reg>
					</choice> pudo bien <choice>
						<orig><persName ref="#act01">Acteon</persName></orig>
						<reg><persName ref="#act01">Acteón</persName></reg>
					</choice> perderse en ellos.<note type="editorial"><p>La palabra <mentioned rend="italic">Acteón</mentioned> fue difícil de leer para varios copistas: por un lado, los testimonios Br y Rl
							leen, por error, <mentioned rend="italic">antes</mentioned>; por el otro, los testimonios O, Pr y Rm leen <mentioned rend="italic">Anteón</mentioned> (¿quizás una corrupción de Anteo, el
							gigante al que se enfrentó Hércules?). Teniendo en cuenta que los testimonios tempranos no leen <mentioned rend="italic">Acteón</mentioned> creo que no es arriesgado afirmar que la
							versión primitiva transmitía otra palabra; es posible que Góngora quisiera decir <mentioned rend="italic">Acteón</mentioned> pero escribiera erróneamente <mentioned rend="italic"
								>Anteón</mentioned>. Ni Alonso ni Jammes recogen esta variante.</p></note></l>
```

Como se puede observar en el ejemplo, el elemento `<persName>` está incluido dentro de los elementos `<orig>` y `<reg>`, y contiene un atributo `@ref` con un valor que corresponde al `@xml:id` del elemento `<person>` situado en el encabezado:

```xml
<person xml:id="act01">
						<persName>Acteón</persName>
						<occupation>Era un célebre cazador iniciado en este arte por el centauro Quirón, también maestro de Aquiles. Hijo de Autónoe y nieto de Cadmo, sufrió la ira de Diana tras verla desnuda
							bañándose en un lago; la diosa lo convirtió en ciervo y sus propios perros le dieron caza.</occupation>
					</person>
```

Por lo demás, solo hay que mencionar que los lugares han sido codificados con `<placeName>` y los accidentes geográficos con `<geogName>`. 

#### Notas

Esta codificación contiene 260 notas codificadas con el elemento `<note>`. Cada elemento `<note>` debe tener un atributo `@type` para distingur entre notas editoriales o explicativas, se inserta siempre dentro de un elemento `<l>` y, a su vez, contiene uno o varios elementos `<p>`:
 
```xml
<l xml:id="v-0136">
					<choice>
						<orig>Al</orig>
						<reg>al</reg>
					</choice>
					<choice>
						<orig>concauo</orig>
						<reg>cóncavo</reg>
					</choice> ajustando de los cielos<note type="editorial">
						<p>La versión primitiva de este pasaje era:</p>
						<lg>
							<l>al pespuntar de los cielos</l>
							<l>las agujas que ilustran tu edificio:</l>
						</lg>
						<p>Los testimonios que la transmiten son Rm y O. El manuscrito Pérez de Ribas también contiene esta versión pero tachada y sustituida por la definitiva. En el segundo verso el manuscrito O
							transmite un pequeño error de copia: <mentioned rend="italic">su edificio</mentioned>. Puesto que no están en ninguno de los manuscritos cotejados por Alonso, estos versos no se
							imprimieron en 1936; Jammes, en cambio, sí los imprimió.</p></note></l>
```

Además, de párrafos, como se puede percibir en el ejemplo, las notas pueden incluir grupos de versos codificados con `<lg>`, pues el objetivo es comentar fragmentos de texto.

### Anexo

El elemento `<back>` contiene las referencias bibliográficas citadas en esta edición. Cada referencia bibliográfica ha sido representada por medio del elemento `<bibl>`, y contiene un atributo `@xml:id` necesario para enlazar la cita en el texto y la referencia completa:

```xml
<bibl xml:id="gon2016"><author>Góngora, Luis de</author>. «Obra poética»<title><ref target="http://obvil-dev.paris-sorbonne.fr/corpus/gongora/gongora_obra-poetica/">Edición digital y estudio
								de la polémica gongorina</ref></title>. Ed. Antonio Carreira. Dir. Mercedes Blanco. París: OBVIL, 2016. Web.</bibl>
```

Anidado en el elemento `<bibl>` solo he etiquetado información referente al autor con el elemento `<author>`, al título principal de la obra con el elemento `<title>` y los enlaces a documentos publicados en internet con `<ref>`.  



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
                <title type="main">«Soledades» de Luis de Góngora. Edición crítica digital</title>
                <author>Luis de Góngora</author>
                <editor xml:id="ARC">Antonio Rojas Castro</editor>
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
				<pubPlace>Barcelona</pubPlace>
				<date when="2016-06">2016</date>
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

## Estructura 

 

## Título, partes y subtítulos del poema

Tras detallar cómo se ha codificado la información contenida en el `<teiHeader>`, hay que pasar a comentar la segunda parte que todo documento TEI debe tener: el elemento `<text>` en donde, como es lógico, debe situarse un texto. Este elemento `<text>` contiene un atributo `@xml:lang` con valor *spa* que sirve para definir la lengua en que está escrito el texto. El texto de las *Soledades* puede ponerse directamente en un elemento `<body>` porque en esta edición no se pretende dar acceso ni procesar preliminares ni apéndices; así, pues, no es necesario utilizar las etiquetas `<front>` y `<back>`.

El elemento `<body>` contiene el título de la obra, que se codifica con el elemento `<head>`, y el texto en sí. Aunque es un solo poema, este texto se divide en tres partes: Dedicatoria, *Soledad primera* y *Soledad segunda*. La TEI  recomienda tratar las partes lógicas del texto de manera neutra mediante un elemento `<div>`:

```xml
    <body>
    <head type="main">
    <div n="0" type="part" xml:id="p-0">
    <div n="1" type="part" xml:id="p-1">
    <div n="2" type="part" xml:id="p-2">
    </body>
```

Cada uno de estos elementos `<div>` contiene tres atributos: en primer lugar, con `@n` se enumeran las partes; en segundo lugar, con `@type` se clasifican; por último, con `@xml:id` se identifican de manera inequívoca con un código único. Los valores de este último atributo son *p-0*, *p-1* y *p-2*, respectivamente. De esta manera, es posible crear un sistema de referencias basado en las partes lógicas del texto, localizarlas con facilidad y crear un menú de navegación en la interfaz web que permita al usuario acceder de manera directa a la parte del texto que le interesa consultar o leer.

Cada una de estas partes, a su vez, se inicia con un título que se ha representado con el elemento `<head>`. En los tres casos he puesto un atributo `@type` con valor *sub* para distinguirlos del título general de la obra. Los títulos o encabezamientos de cada una de estas partes son los del manuscrito Chacón. Con esto quiero decir que, aunque he cotejado los títulos y subtítulos de todos los testimonios mencionados en el `<teiHeader>`, en la codificación doy únicamente la lección que se halla en el texto base y no ofrezco las variantes en el aparato crítico porque me han parecido variantes accidentales condicionadas por la difusión y por la voluntad de los copistas, editores y compiladores. Además, actualmente la TEI no permite que un elemento `<app>` contenga un elemento `<head>` aunque sí a la inversa.    
 
La codificación del título de la Dedicatoria merece una aclaración. El manuscrito Chacón lee simplemente *Al duque de Béjar* pero algunos editores modernos han añadido el término *Dedicatoria*, por lo general, entre corchetes. Por este motivo, ha sido codificado utilizando el elemento `<supplied>` con un atributo `@reason`, cuyo valor es *omitted-in-original*, para indicar que no se encuentra en el original sino que ha sido añadido por el editor. El etiquetado XML resultante es el siguiente:

    <head type="sub">
                        <choice>
                            <orig>
    <supplied reason="omitted-in-original">DEDICATORIA</supplied>
                            </orig>
                            <reg>
                                <supplied reason="omitted-in-original">Dedicatoria</supplied>
                            </reg>
                        </choice>
                        <choice>
                            <orig>AL</orig>
                            <reg>al</reg>
                        </choice>
                        <choice>
                            <orig>DUQUE</orig>
                            <reg>duque</reg>
                        </choice>
                        <choice>
                            <orig>DE</orig>
                            <reg>de</reg>
                        </choice>
                        <choice>
                            <orig>BEJAR</orig>
                            <reg>Béjar</reg>
                        </choice>
                        <choice>
                            <orig>.</orig>
                            <reg/>
                        </choice>
                    </head>

## Grupos de versos y versos

Las *Soledades* es una larga silva en el que se combinan con cierta libertad endecasílabos y heptasílabos. Algunos editores modernos como Dámaso Alonso introdujeron cortes en el poema con el objetivo de facilitar la comprensión de la obra; pero John Beverley, Robert Jammes y Antonio Carreira prefirieron eliminar estos cortes, editar el texto como un todo y sugerir algunas pausas mediante el sangrado del primer verso. La fuente que utilizaron todos estos editores —el manuscrito Chacón— no introduce líneas en blanco para separar las estrofas pero esto no quiere decir que no haya grupos de versos de extensión variada. El inicio de estos grupos se visualiza en el manuscrito mediante el sangrado del primer verso hacia la izquierda, es decir, a la francesa. En otras palabras, estos grupos de versos no se distinguen por razones métricas sino por su disposición sobre la página.

En esta propuesta de codificación he seguido la estructuración por grupos de versos que da el manuscrito Chacón. Para marcar estos grupos de versos he utilizado la etiqueta `<lg>`; la TEI define este elemento como un *group of lines* y su función consiste en agrupar más de un verso tanto si se trata de una estrofa como de un estribillo o de cualquier otra unidad. En total, he codificado 87 grupos de versos, que se distribuyen de la siguiente manera:

 - Dedicatoria: 1 grupo de versos; 
 - Soledad primera: 41 grupos de versos; 
 - Soledad segunda: 45 grupos de versos.

Cada uno de estos elementos `<lg>` contiene un atributo `@xml:id` que sirve para identificarlo. El valor de este atributo ha sido definido mediante la combinación siguiente: *g* (*grupo*), guion y un número correlativo de dos cifras, de tal modo que se empieza con *g-01* y se termina con *g-87*. De esta manera se podría crear un menú de navegación en la interfaz web a partir del cual el usuario podría elegir ir al grupo de versos que le interesara consultar o leer. Ahora bien, debo señalar una pequeña diferencia entre mi codificación y el modo en que se estructuran los versos en el manuscrito Chacón. En el *codex optimus* de la tradición gongorina, en realidad, se hallan 88 grupos de versos pero, en mi opinión, el que empieza con «Víbora pisa tal el pensamiento» debe presentarse unido al grupo de versos anterior: en lugar de un punto y aparte, creo que es mejor utilizar un punto y seguido porque la relación entre las dos oraciones es muy estrecha. En consecuencia, en mi codificación no hay 88 grupos de versos sino 87 tanto en el transcripción paleográfica como en el texto modernizado. 
 
Los versos contenidos en cada uno de los elemento `<lg>` se codifican con la etiqueta `<l>`. La TEI define este elemento desde el punto de vista métrico y no tipográfico; en otras palabras, si por razones de espacio algún verso queda roto la TEI recomienda o bien ignorar este hecho o bien utilizar el elemento <lb> para marcarlo. En esta propuesta de las *Soledades* solo se han codificado versos teniendo en cuenta sus rasgos métricos. En total se han codificado 2.138 versos. Esta cifra seguramente sorprenda a los gongoristas porque se suele afirmar que el poema consta de 2.107 versos. El incremento se debe a que en mi propuesta de codificación los versos de la versión primitiva, que fueron eliminados en la versión final, no se sitúan en un aparato a pie de página sino que forman parte del cuerpo del texto; volveré sobre la codificación de las variantes en el apartado.

A su vez los elementos `<l>` pueden contener hasta tres atributos: en primer lugar, un `@xml:id` con el que se identifica cada uno de los versos cuyo valor ha sido definido de la siguiente manera: *v* (*verso*), guion y número correlativo de cuatro cifras (por ejemplo, *v-0001*); este atributo es obligatorio en mi propuesta de codificación. En segundo lugar, encontramos el atributo `@n` que sirve para numerar los versos. No todos los versos contienen este atributo porque, siguiendo la tradición impresa, me ha parecido suficiente numerar cada cinco versos; la numeración, por lo demás, sigue el texto de la versión final. Por último, hay que mencionar el uso del atributo `@rend` con valor *indent* para codificar los 87 versos que Chacón sangró hacia la izquierda y que, por tanto, marcan el inicio de un nuevo grupo.
  
A continuación, inserto un fragmento de XML que contiene los tres atributos mencionados del elemento `<l>`; insisto en que, en esta propuesta de codificación, solo `@xml:id` es obligatorio en todos los versos: 

    <l n="90" rend="indent" xml:id="v-0127"><app>
                                <lem><choice>
                                        <orig>Llegò</orig>
                                        <reg>Llegó</reg>
                                    </choice></lem>
                                <rdg type="error" wit="#O">Llega</rdg>
                            </app> pues <app>
                                <lem>el</lem>
                                <rdg type="error" wit="#Br">al</rdg>
                            </app> mancebo, <choice>
                                <orig>i</orig>
                                <reg>y</reg>
                            </choice>
                            <app>
                                <lem>saludado</lem>
                                <rdg type="error" wit="#D">saludando</rdg>
                            </app></l>

Además de estos elementos creados para codificar textos poéticos, la TEI ha establecido algunos procedimientos para codificar el patrón rítmico y métrico de cada verso gracias a los atributos `@rhyme` y `@met` y un elemento `<rhyme>` con el que es posible codificar las palabras que riman. Dado que mi objetivo es estudiar la transmisión del texto y ofrecer variantes significativas, en esta propuesta de codificación de las *Soledades* no se han representado estos fenómenos acerca de la musicalidad del poema.  

## Saltos de página

Además del sistema de referencias basado en las partes del texto —Dedicatoria, *Soledad primera* y *Soledad segunda*— y en la estructuración por grupos de versos que acabamos de ver, esta propuesta incluye la paginación del manuscrito Chacón; para ello se ha utilizado el elemento `<pb/>`. Esta etiqueta es un *empty element* porque no tiene contenido textual y sirve para codificar estructuras no jerárquicas que dividen el texto en trozos. Al marcar los saltos de página es posible captar la estructura del documento y permitir al usuario navegar el texto de manera fragmentaria. 

Con `<pb/>` es posible representar cuándo se inician las páginas o folios de todos los testimonios cotejados gracias al atributo `@ed` pues su valor se define en el atributo `@xml:id` del elemento `<witness>`. Ahora bien, en esta propuesta de codificación solo se han marcado los saltos de página del manuscrito base porque se pretende atraer la atención del usuario hacia el *codex optimus* de la tradición gongorina. Veamos un ejemplo:

    <pb ed="#Ch" facs="193.jpg" n="193"/>
                <head type="main">
                    <choice>
                        <orig>SOLEDADES</orig>
                        <reg>Soledades</reg>
                    </choice>
                    <choice>
                        <orig>.</orig>
                        <reg/>
                    </choice>
                </head>

Como se puede apreciar, el elemento `<pb/>` se sitúa siempre al inicio de cada página de tal modo que el resto de elementos se sitúan tras él. Además del atributo `@ed`, con el que se identifica al testimonio, he utilizado otros dos: los atributos `@n` y `@facs`. El primero sirve para describir el número tal y como aparece en la fuente mientras que el segundo remite a un archivo .jpg con el objetivo de que en la interfaz web se pueda visualizar el facsímil de cada página del manuscrito Chacón. 

Para recapitular, gracias a la codificación de las partes lógicas del texto, los grupos de versos y la paginación del manuscrito Chacón es posible explorar y navegar el texto poético de distintas maneras. En consecuencia, la edición académica digital adquiere interactividad en la medida en que combina múltiples vistas: por un lado, la imagen facsimilar, que pone de manifiesto la materialidad del documento; por el otro, el texto (en doble presentación: transcripción paleográfica y modernización). El usuario, pues, es capaz de seleccionar una u otra vista, o bien, dividiendo la pantalla en dos partes, acceder simultáneamente a las dos y, así, poder apreciar la relación dialéctica entre el manuscrito Chacón y el texto establecido tras cotejar el resto de testimonios. 


## Transcripción paleográfica y texto modernizado

Con la excepción de once lecciones procedentes de otros testimonios, el texto de las *Soledades* que he codificado es el que transmite el manuscrito Chacón. La particularidad de mi propuesta consiste en la doble presentación del texto: por un lado, la transcripción paleográfica, que conserva la mayoría de rasgos característicos de la ortotipografía del documento original; por el otro, una modernización de la ortografía, los signos de puntuación y otros aspectos tipográficos del texto contenido en Chacón. La primera dimensión, pues, es historicista y conservadora: transporta al lector al siglo XVII. La segunda, en cambio, es actualizadora en la medida en que adapta los aspectos accidentales del texto a la norma vigente de la lengua española y a las convenciones tipográficas contemporáneas. 

El elemento definido por la TEI para agrupar codificaciones alternativas se llama `<choice>`. Esta etiqueta contiene una pareja de elementos con los que se representan las intervenciones editoriales. Para ilustrar cómo he procedido creo que es mejor analizar directamente un caso concreto, por ejemplo, el verso 26 (*Ô DVQVE esclarecido!*) de la Dedicatoria, tal y como aparece en Chacón. El etiquetado XML/TEI es el siguiente: 

    <l xml:id="v-0026">
                            <app>
                                <lem>
                                    <choice>
                                        <orig/>
                                        <reg>¡</reg>
                                    </choice>
                                    <choice>
                                        <orig>Ô</orig>
                                        <reg>oh</reg>
                                    </choice>
                                    <choice>
                                        <orig>DVQVE</orig>
                                        <reg>duque</reg>
                                    </choice> esclarecido!<choice>
                                        <orig/>
                                        <reg>,</reg>
                                    </choice></lem>
                                <rdg wit="#Pr #Rm"/>
                            </app>
                        </l>

Si obviamos por un momento que este verso está incluido en los elementos `<app>` y `<lem>` —volveré sobre ello en el apartado dedicado al aparato crítico— y centramos nuestra atención en los elementos `<choice>` se puede ver con facilidad que estos se han utilizado para presentar al mismo tiempo la forma original y la forma regularizada de tres aspectos del texto: la tipografía, el uso de mayúscula/minúscula y la puntuación. En todos los casos la combinación de etiquetas es la misma: un elemento `<choice>` contiene, en primer lugar, un elemento `<orig>` con la forma original; y, en segundo lugar, un elemento `<reg>` con la regularización. 

El primer uso del elemento `<choice>` ejemplifica cómo es posible presentar vistas alternativas en relación con la tipografía. En este caso, y desde nuestra perspectiva contemporánea, al texto contenido por el manuscrito Chacón le falta un signo exclamativo de apertura pues solo presenta el de cierre. Para representar este fenómeno he dejado vacío el elemento `<orig>`; en el elemento `<reg>`, en cambio, he introducido un signo exclamativo de apertura:

    <choice>
                                        <orig/>
                                        <reg>¡</reg>
                                    </choice>

En el segundo caso la misma combinación de elementos sirve para codificar cómo Chacón utiliza la mayúscula y para regularizar el texto respetando las convenciones actuales. En el elemento `<orig>` se sitúa la forma *Ô*, en mayúscula y con un acento circunflejo, mientras que en el elemento `<reg>` he regularizado la interjección `oh` poniéndola en minúscula, pues no antecede ningún punto, y con la letra `h`, tal y como se escribe actualmente:

    <choice>
                                        <orig>Ô</orig>
                                        <reg>oh</reg>
                                    </choice>

El tercer y último caso se parece al primero ya comentado. Chacón no puntúa el verso de ninguna manera pero en mi propuesta de codificación de las *Soledades*, y siguiendo la costumbre de los editores modernos, he considerado conveniente poner una coma pues se trata de un vocativo. El elemento `<orig>`, por tanto, está vacío, no contiene texto alguno mientras que la modernización contiene una coma:

    <choice>
                                        <orig/>
                                        <reg>,</reg>
                                    </choice>

La misma combinación de etiquetas ha sido utilizada para codificar la forma original y modernizada de las palabras. Así, en el ejemplo siguiente se percibe cómo la ortografía con que Chacón escribe `estranjero` se conserva gracias al elemento `<orig>` y, al mismo tiempo, se moderniza:  

    <l xml:id="v-0083">
                            <choice>
                                <orig>Quando</orig>
                                <reg>cuando</reg>
                            </choice><choice>
                                <orig/>
                                <reg>,</reg>
                            </choice> entregado <app>
                                <lem>el</lem>
                                <rdg type="error" wit="#S">al</rdg>
                            </app>
                            <choice>
                                <orig>misero</orig>
                                <reg>mísero</reg>
                            </choice>
                            <choice>
                                <orig>estrangero</orig>
                                <reg>extranjero</reg>
                            </choice></l>

Aunque la TEI no se pronuncia sobre si este grupo de elementos debieran contener palabras o grafías, en las *Guidelines* solo se recogen ejemplos de codificación de palabras por lo que he seguido esta metodología. Por regla general, pues, he codificado las palabras una por una con la excepción de los casos estudiados en la tesis y de las contracciones o uniones fonético-sintácticas en las que es inevitable codificar el grupo léxico. Así, por ejemplo, aunque los casos son muchos y variados, la contracción de la preposición de y del artículo determinante masculino el en sus múltiples manifestaciones:

    <l n="15" xml:id="v-0052">
                            <choice>
                                <orig>De el</orig>
                                <reg>Del</reg>
                            </choice> siempre en la montaña <app>
                                <lem><choice>
                                        <orig>oppuesto</orig>
                                        <reg>opuesto</reg>
                                    </choice></lem>
                                <rdg type="error" wit="#D"><subst>
                                        <del rend="annotation">opreso</del>
                                        <add place="margin">opuesto</add>
                                    </subst></rdg>
                            </app>pino</l>

Para codificar la separación de las palabras tal y como aparecen en Chacón he seguido la metodología de la *Guía para editar textos CHARTA según el estándar TEI* coordinada por Carmen Isasi y Paul Spence (2014) en donde se propone el uso del elemento `<choice>`. Se trata, en mi opinión, del elemento más acertado pero también creo que es conveniente plantear un cambio en las *Guidelines* para que se haga explícito este uso y se muestren algunos ejemplos. 

Desde un punto de vista conceptual y para recapitular lo dicho al respecto, podría afirmarse que las codificaciones alternativas que agrupa el elemento `<choice>` constituyen dos capas de un mismo texto que se deberían procesar como vistas en la interfaz web. El beneficio de este tipo de codificación es evidente: el lector puede acceder al texto original y a la modernización propuesta por el editor y, en consecuencia, compararlas eligiendo una u otra vista. Este tipo de codificación, pues, deviene una especie de instrumento que el editor otorga al lector para que pueda examinar su hipótesis de trabajo y valorar la calidad del resultado final. La mayor dificultad reside en el número de etiquetas necesario para llevarla a cabo: como mínimo tres etiquetas por —casi— cada palabra en textos anteriores al siglo XVIII. Por eso, antes de empezar conviene tener en cuenta que la tarea requiere muchísima paciencia y sobre todo tiempo.

### Destacados

Aunque en el modelo de codificación TEI prima la estructura lógica por encima de la apariencia, ya se ha visto que también es posible marcar la paginación de los códices con el elemento `<pb/>` o qué versos se distinguen del resto por la sangría gracias al atributo `@rend`. También existe un elemento `<hi>` creado para codificar el aspecto de palabras que se distinguen gráficamente del resto. En esta propuesta de codificación el elemento `<hi>` se utiliza para identificar las letras iniciales con que se abren las tres partes del poema que Chacón presenta en tamaño mayor.
 
En efecto, en el primer verso de la *Soledad primera* la palabra *Era* aparece en mayúsculas y con la *E* inicial en un cuerpo de letra mayor. Para poder conservar este rasgo característico del manuscrito Chacón y a la vez ofrecer el pasaje normalizado según los hábitos de escritura actuales, he anidado el elemento `<hi>` en la combinación de etiquetas `<choice>` + `<orig>` / `<reg>` con un atributo `@rend` cuyo valor es `initial`:

    <l rend="indent" xml:id="v-0038">
                            <choice>
                                <orig><hi rend="initial">E</hi>RA</orig>
                                <reg>Era</reg>
                            </choice>
                            <choice>
                                <orig>de el</orig>
                                <reg>del</reg>
                            </choice> año la <choice>
                                <orig>estacion</orig>
                                <reg>estación</reg>
                            </choice>
                            <app>
                                <lem>florida</lem>
                                <rdg type="error" wit="#I">floria</rdg>
                                <rdg type="error" wit="#Rl">primera</rdg>
                            </app><choice>
                                <orig>,</orig>
                                <reg/>
                            </choice></l>

En el manuscrito Chacón hay otros casos en los que se podría haber utilizado el elemento `<hi>`: los títulos, subtítulos, la primera palabra con que se inicia cada una de las tres partes del poema, las palabras *duque* y *pasos* de la Dedicatoria y los nombres propios de los personajes (*Lícidas*, *Micón*, *Leucipe* y *Cloris*) que aparecen en la *Soledad segunda* se diferencian del resto porque van en mayúsculas. Ahora bien, no me parece necesario utilizar lenguaje de marcado para representar este fenómeno porque en la interfaz web basta con que aparezcan en mayúsculas.

En síntesis, en esta propuesta de codificación de las *Soledades* solo se utiliza el elemento `<hi>` de manera restringida: por un lado, para identificar aquellas letras que tienen un tamaño mayor al inicio de cada una de las tres partes del poema; por el otro, como se verá en el siguiente apartado, para representar las grafías en posición volada. Por el contrario, las palabras que en el cuerpo del texto van en mayúscula no han sido representadas con lenguaje de marcado.

### Abreviaturas y expansiones

La misma combinación de elementos también puede utilizarse para codificar la forma abreviada y la forma expandida de una palabra. El manuscrito Chacón contiene pocas abreviaturas pero, precisamente por eso, creo que vale la pena conservarlas en la transcripción paleográfica y desarrollarlas en el texto modernizado. Para llevar a cabo esto he añadido dentro de los elementos `<orig>` y `<reg>` las etiquetas `<abbr>` y `<expan>` respectivamente. Así, por ejemplo, en el verso 159 de la *Soledad segunda* (*o filos pongan de homicida hierro*) Chacón abrevia la *n* final de la forma verbal *pongan* mediante una virgulilla situada encima de la *a*. La combinación de elementos que propongo para este tipo de fenómenos textuales es la siguiente: 

    <choice>
                                                <orig><abbr>pongã</abbr></orig>
                                                <reg><expan>pongan</expan></reg>
                                            </choice>

También se pueden encontrar otros casos en que la abreviatura afecta a los nombres propios de los personajes como ocurre con los pescadores de la *Soledad segunda*. La primera mención en el canto amebeo no presenta ningún problema pero en adelante Chacón abrevia los nombres, tanto de Micón como de Lícidas.  Si queremos visualizar la forma abreviada y la expansión es necesario recurrir al elemento `<choice>` y añadir ambas formas en los elementos `<orig>` y `<reg>` tal y como se muestra a continuación: 

    <label>
                            <persName>
                                <choice>
                                    <orig>
                                        <abbr>Lici.</abbr>
                                    </orig>
                                    <reg>
                                        <expan>Lícidas</expan>
                                    </reg>
                                </choice>
                            </persName></label>


Además de estos glifos, la nota contiene una abreviatura que merece ser explicada: el nombre propio del compilador y amigo de Góngora aparece con una o volada seguida de punto. La estrategia adoptada ha consistido en utilizar un elemento `<hi>` con un atributo `@rend` para codificar la posición de dicha letra: 

    <choice>
                                    <orig><abbr>Ant<hi rend="superscript">o</hi>.</abbr></orig>
                                    <reg><expan>Antonio</expan></reg>
                                </choice>

Por último, conviene tener en cuenta que la TEI define otros dos elementos que se podrían utilizar para marcar la secuencia de letras añadidas en la expansión o bien las grafías presentes en la abreviatura que han sido suprimidas en la forma desarrollada. Son respectivamente los elementos `<ex>` y `<am>`. En esta propuesta de codificación, sin embargo, no se ha considerado necesario el uso de estas etiquetas porque el lector puede comparar ambas formas y distinguir con claridad cuál es la intervención del editor sin añadir un nuevo elemento; sin embargo, no se descarta que en el futuro se incorporen siguiendo el consejo de la red CHARTA (Isasi *et al*., 2014). 

### Errores y correcciones

El texto que contiene el manuscrito Chacón y que sirve de base para esta codificación contiene algunos errores evidentes. Las etiquetas definidas por la TEI para marcar los errores y las formas correctas propuestas por el editor son dos: `<sic>` y `<corr>`. En esta propuesta de codificación, ambos elementos se anidan en `<orig>` y `<reg>` de la misma manera que lo hacen las abreviaturas y expansiones. 

Por un lado, tenemos errores ortotipográficos como la omisión de un signo de puntuación o bien el uso anómalo, al menos desde nuestra perspectiva contemporánea, de alguna coma, punto, dos puntos o paréntesis. Así, por ejemplo, en el verso 499 de la *Soledad primera* (*Quédese, amigo, en tan inciertos mares*), Chacón utiliza un paréntesis de apertura en lugar de una coma para introducir el vocativo. Como en los casos anteriores en los que se han codificado formas alternativas la combinación de elementos debe ser la siguiente:

    <choice>
                                <orig><sic> (</sic></orig>
                                <reg><corr>, </corr></reg>
                            </choice>amigo, en tan inciertos

Por el otro lado, pueden apreciarse con claridad pasajes que omiten alguna grafía, añaden alguna de más o simplemente la confunden con otra. Esta última posibilidad se ejemplifica con el verso 580 (*de musculosos jóvenes desnudos*) de la *Soledad segunda*; Chacón lee *muscolosos* pero es evidente que el poeta quiso decir *musculosos* y que por tanto estamos ante un error de copia. He aquí nuevamente los elementos utilizados en esta propuesta de codificación XML/TEI: 

    <choice>
                                        <orig>De</orig>
                                        <reg>de</reg>
                                    </choice>
                                    <choice>
                                        <orig><sic>muscolosos</sic></orig>
                                        <reg><corr>musculosos</corr></reg>
                                    </choice>
                                    <choice>
                                        <orig>jouenes</orig>
                                        <reg>jóvenes</reg>
                                    </choice> desnudos.

Esta metodología, ideada para generar dos vistas alternativas en el navegador del usuario —los errores y las correcciones—, únicamente ha sido empleada para establecer el texto base transmitido por el manuscrito Chacón. Como se verá en el apartado siguiente,  los errores contenidos en el aparato de variantes se codifican con otros elementos y atributos. 
 

## Nombres propios

De la poesía de Góngora se ha destacado tradicionalmente como un rasgo característico la alusión y el uso de la perífrasis para evitar designar a los referentes por su nombre. Ahora bien, a lo largo de las *Soledades* se mencionan numerosas divinidades, héroes, astros y personajes mitológicos, históricos, ficticios y alegóricos. Los nombres de lugares también son frecuentes de tal modo que la designación de numerosos países, ciudades, regiones, continentes, ríos, montañas, fuentes y valles conforman la geografía de la obra. Todos estos nombres, por tanto, se pueden codificar con elementos TEI.

El objetivo de la codificación de los nombres propios (antropónimos y topónimos) es automatizar la creación de índices de tal modo que el usuario pueda leer el texto de las *Soledades* de manera no lineal. Para ello, la TEI define dos elementos generales: `<name>` (para representar cualquier tipo de nombre propio) y `<rs>` para representar frases que equivalen a nombres (por ejemplo, una perífrasis). Sin embargo, en esta propuesta de codificación he utilizado tres elementos más específicos: `<persName>`, `<placeName>` y `<geogName>`. Estos elementos permiten identificar nombres propios de personas, lugares y accidentes geográficos. El proceso de codificación es sencillo:

    <l n="490" xml:id="v-0527"><choice>
                                <orig>Que</orig>
                                <reg>que</reg>
                            </choice> pudo bien <app>
                                <lem><persName ref="#act01"><choice>
                                            <orig>Acteon</orig>
                                            <reg>Acteón</reg>
                                        </choice></persName></lem>
                                <rdg type="error" wit="#Br #Rl">antes</rdg>
                                <rdg cert="low" type="error" wit="#S">Action</rdg>
                                <rdg cert="low" type="error" wit="#O #Pr #Rm">Anteón</rdg>
                            </app> perderse en ellos.</l>

Como se puede observar en el ejemplo, el elemento `<persName>` engloba en este caso a la combinación de elementos `<choice>`, `<orig>` y `<reg>` para identificar que *Acteón* es un nombre propio. Ahora bien, hay que advertir que la codificación de nombres propios solo se ha llevado a cabo en el texto base porque lo que me interesa es crear un índice a partir de las lecciones de la versión definitiva que considero auténticas. Por eso, la lección *Anteón*, que transmiten los testimonios O, Pr y Rm, no ha sido codificada con un elemento `<persName>`.

Puesto que la metodología desarrollada para codificar nombres de lugares y de accidentes geográficos es la misma no es necesario detenerse con otro ejemplo. Lo que sí vale la pena señalar es que en esta propuesta de codificación los nombres propios de personas, lugares y accidentes geográficos se documentan en el encabezado TEI para automatizar la creación de índices mediante transformaciones XSLT. Para ello es necesario utilizar el atributo `@ref` en los elementos `<persName>`, `<placeName>` y `<geogName>`. El valor de este atributo apunta hacia el valor definido en el atributo `@xml:id` del elemento `<person>` situado en el encabezado TEI: 

    <particDesc>
                    <listPerson>
                        <person xml:id="act01">
                            <persName>Acteón</persName>
                        </person>
                        <person xml:id="acu002">
                            <persName>Acuario</persName>
                        </person>
                           [...]
                    </listPerson>
                </particDesc>

En este fragmento de XML se puede apreciar que un elemento `<particDesc>` con el que se describen los participantes del texto contiene un elemento `<listPerson>`. Esta lista de personas está formada por una serie de elementos `<person>` con un atributo `@xml:id` y uno o varios elementos `<persName>` pues una persona puede llamarse de distintas maneras y su nombre puede variar en función del idioma. La metodología empleada para conectar los nombres de lugares y de accidentes geográficos es idéntica; solo cambian los nombres de los elementos: por un lado, tenemos el elemento `<settingDesc>`, que describe los lugares mencionados en un texto; por el otro, el elemento `<listPlace>` que contiene una serie de elementos `<place>` con atributos `@xml:id`. En estos elementos `<place>` se anidan uno o varios elementos `<placeName>` o `<geogName`. Por último, debo señalar que tanto el elemento `<particDesc>` como el elemento `<settingDesc>` se sitúan en el `<teiHeader>`; en concreto, en el elemento `<profileDesc>`.




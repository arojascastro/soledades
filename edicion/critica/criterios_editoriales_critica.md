# *Soledades*. Edición crítica digital. Criterios de codificación 

Este documento tiene por objetivo exponer los criterios de codificación empleados en el archivo `soledades_critica.xml`.  

Esta codificación de las *Soledades* ha sido concebida para que el usuario pueda leer un texto crítico establecido tras cotejar 22 testimonios del siglo XVII. El usuario, asimismo, puede juzgar las decisiones editoriales gracias a la consulta del aparato crítico. Las variantes se identifican con el testimonio en donde se encuentra y se clasificadas en dos clases (error o variante de autor) a fin de que el usuario pueda filtrarlas de acuerdo con sus intereses.
 

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
                <edition n="1"><date when="2017-06">Junio de 2017</date></edition>
            </editionStmt>
```

En este caso se trata de una primera edición; si en el futuro se publicara este archivo en internet y otro investigador lo modificara o lo reutilizara con otros fines, sería posible identificar el número de edición y añadir un elemento `<respStmt>` en el que se especificaría cuál ha sido la aportación del nuevo editor, así como su nombre y apellidos. El elemento `<editionStmt>` no es obligatorio, pero la TEI lo recomienda. 

#### Publicación 

A continuación, se sitúa el elemento `<publicationStmt>`. Con esta etiqueta, obligatoria, se proporciona información sobre qué sujeto, institución o grupo publica el archivo electrónico y bajo qué licencia se puede acceder a él y utilizar:

```xml
 <publicationStmt>
                <publisher>Cologne Center for eHumanities (CCeH)</publisher>
                <pubPlace>Köln</pubPlace>
                <availability status="free">
                    <licence target="http://creativecommons.org/licenses/by-nc/3.0/deed.es">Publicado bajo una licencia Creative Commons Atribución-NoComercial 3.0</licence>
                </availability>
            </publicationStmt>
```

En mi propuesta de codificación XML/TEI de las *Soledades* he identificado como `<publisher>` al Cologne Cenger for eHumanities (CCeH), porque los servidores donde se aloja la edición pertenecen a la Universidad de Colonia. Por lo demás, el elemento `<pubPlace>` contiene el nombre del lugar de publicación y `<date>`, la fecha de publicación.

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


### Descripción de la codificación

En el elemento `<encodingDesc>` se detallan los principios editoriales y el modo de codificar el texto electrónico. Aunque no se trata de un elemento obligatorio, la TEI lo recomienda porque con él se establece la relación entre las fuentes manuscritas e impresas y el texto electrónico. La información contenida en este elemento puede presentarse por medio de párrafos en prosa o bien utilizando otros elementos más específicos. 


#### Descripción del proyecto

En esta propuesta de codificación de las *Soledades* se documenta, en primer lugar, de manera explícita, la finalidad de la codificación con `<projectDesc>`:

```xml
<projectDesc>
                <p>Esta edición ha sido realizada con fines académicos y didácticos siguiendo las recomendaciones de la TEI P5.</p>
            </projectDesc>
```

En segundo lugar, las prácticas editoriales relacionadas con la normalizacíon del texto base gracias al elemento `<editorialDecl>`:

```xml
<editorialDecl>
                <normalization method="silent">
                    <p>El texto base es una modernización del manuscrito Chacón.</p>
                    <p>En el aparato de variantes se han regularizado y expandido todas las palabras de manera silenciada.</p>
                    <p>El espacio entre palabras ha sido normalizado.</p>
                    <p>Se han añadido comillas en los pasajes dialogados y en los dicursos citados.</p>
                </normalization>
            </editorialDecl>
```


En tercer lugar, qué elementos, atributos y valores se han utilizado por medio de `<refsDecl>`:

```xml
<refsDecl>
                <p>Las tres partes del poema se han codificado con <gi>div</gi>; cada una de estas partes contiene un atributo <att>xml:id</att>, cuyo valor se forma añadiendo a una <val>p</val>, un
                    guión y un número consecutivo a partir de 0: <val>p-0</val>. Estas partes también tienen un atributo <gi>n</gi> con el que se numeran y un atributo <att>type</att> con el que se
                    clasifican; en este último caso solo hay un valor válido: <val>part</val>.</p>
                <p>Los títulos y subtítulos se han codificado ambos con el elemento <gi>head</gi> y con un atributo <att>type</att>, cuyo valor solo puede ser <val>main</val> y <val>sub</val>.</p>
                <p>Los grupos de versos se han codificado con el elemento <gi>lg</gi>; cada uno de ellos contiene un atributo <att>xml:id</att> cuyo valor se forma concatenando números consecutivos al
                    código siguiente: <val>s-01</val>.</p>
                <p>Los versos se han codificado con <gi>l</gi> y todos llevan un atributo <att>xml:id</att> cuyo valor se forma concatenando números consecutivos al código <val>v-0001</val>. Cada
                    cinco versos se añade un atributo <att>n</att> con el número de verso; la numeración no se reinicia al empezar una nueva parte del texto.</p>
                <p>Algunos versos codificados en el <gi>app</gi> pueden contener la desinencia (<val>-p</val>) para indicar que se trata de un verso de la versión primitiva que desaparece en la
                    versión definitiva.</p>
                <p>Los testimonios que no transmiten determinado verso (por omisión o bien porque transmiten un texto <hi rend="italics">in fieri</hi>) se han identificado con el atributo
                        <att>exclude</att>; este atributo aparece en el elemento <gi>l</gi>.</p>
            </refsDecl>
```      


Por último, el elemento `<variantEncoding>` contiene un tipo de información específica de las ediciones críticas. Con este elemento se declara en el encabezado TEI el método seguido para codificar variantes:

```xml
<variantEncoding location="internal" method="parallel-segmentation"/>
```


### Perfil del texto

En el elemento `<profileDesc>` se recoge información no bibliográfica sobre los aspectos del texto como la situación en que fue producido o el idioma.

#### Creación 

El elemento `<creation>` documento los dos lugares en donde Góngora debió de escribir las *Soledades* y una cronología dividida en nueve fases:

```xml
<creation>
                <placeName>Córdoba</placeName>
                <listChange ordered="true">
                    <change notAfter="1613-05" notBefore="1612-06" xml:id="FIRST">1612/06-1613/05: Primera fase </change>
                    <change notAfter="1613-05" notBefore="1612-06" xml:id="SECOND">1612/06-1613-05: Segunda fase</change>
                    <change notAfter="1613-05-11" notBefore="1613-05" xml:id="THIRD">1613/05-1613/05/11 Tercera fase</change>
                    <change notAfter="1614-02" notBefore="1613-09" xml:id="FOURTH">1613709-1614/02: Cuarta fase</change>
                    <change notAfter="1614-12" notBefore="1614-02" xml:id="FIFTH">1614/02-1614/12: Quinta fase</change>
                    <change notAfter="1616-05" notBefore="1615-01" xml:id="SIXTH">1615/01-1616/05: Sexta fase</change>
                    <change notAfter="1617-04" notBefore="1616-05" xml:id="SEVENTH">1616/05-1617/04: Séptima fase</change>
                </listChange>
                <placeName>Madrid</placeName>
                <listChange ordered="true">
                    <change notAfter="1617-10" notBefore="1617-04" xml:id="EIGHTH">1617/04-1617/10: Octava fase</change>
                    <change notAfter="1626" notBefore="1617-10" xml:id="NINTH">1617/10-1626: Novena fase</change>
                </listChange>
            </creation>
```

Los elementos `<change>` registran cada una de las fases y contienen los atributos `notAfter` y `notBefore` con los límites temporales aproximados.
 

#### Idioma 

En el elemento `<langUsage>` y, más concretamente, en el elemento `<language>` se declara el idioma del texto. Este último elemento contiene el atributo `@ident` con el que se identifica el idioma siguiendo la nomenclatura recomendada por la ISO.

## Títulos y partes

Tras detallar cómo se ha codificado la información contenida en el `<teiHeader>`, hay que pasar a comentar la segunda parte que todo documento TEI debe tener: el elemento `<text>` en donde, como es lógico, debe situarse un texto. El texto de las *Soledades* puede ponerse directamente en un elemento `<body>` porque en esta edición no se pretende dar acceso ni procesar preliminares ni apéndices; así, pues, no es necesario utilizar las etiquetas `<front>` y `<back>`.

El elemento `<body>` contiene el título de la obra, que se codifica con el elemento `<head>`, y el texto en sí. Aunque es un solo poema, este texto se divide en tres partes: Dedicatoria, *Soledad primera* y *Soledad segunda*. La TEI  recomienda tratar las partes lógicas del texto de manera neutra mediante un elemento `<div>`:


```xml

    <text>
    <body>
    <head type="main">Soledades</head>
    <div n="0" type="part" xml:id="p-0">
    <div n="1" type="part" xml:id="p-1">
    <div n="2" type="part" xml:id="p-2">
    </body>
    </text>
```


Cada uno de estos elementos `<div>` contiene tres atributos: en primer lugar, con `@n` se enumeran las partes; en segundo lugar, con `@type` se clasifican; por último, con `@xml:id` se identifican de manera inequívoca con un código único. Los valores de este último atributo son *p-0*, *p-1* y *p-2*, respectivamente. De esta manera, es posible crear un sistema de referencias basado en las partes lógicas del texto, localizarlas con facilidad y crear un menú de navegación en la interfaz web que permita al usuario acceder de manera directa a la parte del texto que le interesa consultar o leer.

Cada una de estas partes, a su vez, se inicia con un título que se ha representado con el elemento `<head>`. En los tres casos he puesto un atributo `@type` con valor *sub* para distinguirlos del título general de la obra: 

```xml
<head type="sub">[Dedicatoria] al duque de Béjar</head>`
``` 

Los títulos o encabezamientos de cada una de estas partes son los del manuscrito Chacón. Con esto quiero decir que, aunque he cotejado los títulos y subtítulos de todos los testimonios mencionados en el `<teiHeader>`, en la codificación doy únicamente la lección que se halla en el texto base y no ofrezco las variantes en el aparato crítico porque me han parecido variantes accidentales condicionadas por la difusión y por la voluntad de los copistas, editores y compiladores.
 

## Grupos de versos y versos

Las *Soledades* es una larga silva en el que se combinan con cierta libertad endecasílabos y heptasílabos. Algunos editores modernos como Dámaso Alonso introdujeron cortes en el poema con el objetivo de facilitar la comprensión de la obra; pero John Beverley, Robert Jammes y Antonio Carreira prefirieron eliminar estos cortes, editar el texto como un todo y sugerir algunas pausas mediante el sangrado del primer verso. La fuente que utilizaron todos estos editores —el manuscrito Chacón— no introduce líneas en blanco para separar las estrofas; sin embargo, esto no quiere decir que no haya grupos de versos de extensión variada. El inicio de estos grupos se visualiza en el manuscrito mediante el sangrado del primer verso hacia la izquierda, es decir, a la francesa. En otras palabras, estos grupos de versos no se distinguen por razones métricas sino por su disposición sobre la página.

En esta propuesta de codificación he seguido la estructuración por grupos de versos que da el manuscrito Chacón. Para marcar estos grupos de versos he utilizado la etiqueta `<lg>`; la TEI define este elemento como un *group of lines* y su función consiste en agrupar más de un verso tanto si se trata de una estrofa como de un estribillo o de cualquier otra unidad. En total, he codificado 87 grupos de versos, que se distribuyen de la siguiente manera:

 - Dedicatoria: 1 grupo de versos; 
 - Soledad primera: 41 grupos de versos; 
 - Soledad segunda: 45 grupos de versos.

Cada uno de estos elementos `<lg>` contiene un atributo `@xml:id` que sirve para identificarlo. El valor de este atributo ha sido definido mediante la combinación siguiente: *g* (*grupo*), guion y un número correlativo de dos cifras, de tal modo que se empieza con *g-01* y se termina con *g-87*. Ahora bien, debo señalar una pequeña diferencia entre mi codificación y el modo en que se estructuran los versos en el manuscrito Chacón. En el *codex optimus* de la tradición gongorina, en realidad, se hallan 88 grupos de versos pero, en mi opinión, el que empieza con «Víbora pisa tal el pensamiento» debe presentarse unido al grupo de versos anterior: en lugar de un punto y aparte, creo que es mejor utilizar un punto y seguido porque la relación entre las dos oraciones es muy estrecha.
 
Los versos contenidos en cada uno de los elemento `<lg>` se codifican con la etiqueta `<l>`. La TEI define este elemento desde el punto de vista métrico y no tipográfico; en otras palabras, si por razones de espacio algún verso queda roto la TEI recomienda o bien ignorar este hecho o bien utilizar el elemento `<lb>` para marcarlo. En esta propuesta de las *Soledades* solo se han codificado versos teniendo en cuenta sus rasgos métricos. En total se han codificado 2.138 versos. Esta cifra seguramente sorprenda a los gongoristas porque se suele afirmar que el poema consta de 2.107 versos. El incremento se debe a que en mi propuesta de codificación los versos de la versión primitiva, que fueron eliminados en la versión final, no se sitúan en un aparato a pie de página sino que forman parte del cuerpo del texto; volveré sobre la codificación de las variantes más abajo.

Los elementos `<l>` pueden contener hasta tres atributos: en primer lugar, un `@xml:id` con el que se identifica cada uno de los versos cuyo valor ha sido definido de la siguiente manera: *v* (*verso*), guion y número correlativo de cuatro cifras (por ejemplo, *v-0001*); este atributo es obligatorio en mi propuesta de codificación. En segundo lugar, encontramos el atributo `@n` que sirve para numerar los versos. No todos los versos contienen este atributo porque, siguiendo la tradición impresa, me ha parecido suficiente numerar cada cinco versos; la numeración, por lo demás, sigue el texto de la versión final. Por último, hay que mencionar el uso del atributo `@rend` con valor *indent* para codificar los 87 versos que Chacón sangró hacia la izquierda y que, por tanto, marcan el inicio de un nuevo grupo.
  
A continuación, inserto un fragmento de XML que contiene los tres atributos mencionados del elemento `<l>`; insisto en que, en esta propuesta de codificación, solo `@xml:id` es obligatorio en todos los versos: 

```xml
<l n="570" rend="indent" xml:id="v-1698">«Las que el cielo mercedes</l>
```

 
## Aparato de variantes

A diferencia de los fenómenos textuales ya vistos, la representación del aparato de variantes plantea algunos problemas. La TEI dedica el capítulo doceavo de las *Guidelines* a este tema, pero las explicaciones y ejemplos son escasos y, además, muchos de ellos se centran en cómo codificar aparatos ya existentes, impresos. Lo primero que conviene saber son los componentes de un aparato de variantes y cómo se suelen codificar:

 - las entradas mediante el elemento `<app>`; 
 - las variantes mediante los elementos `<lem>` y `<rdg>`;
 - y los testimonios en donde se encuentran las variantes mediante el elemento `<wit>` o el atributo `@wit`.

Tal y como se advierte en las *Guidelines*, el elemento `<app>` se parece al elemento `<choice>` en la medida en que ambos permiten codificar lecciones alternativas de un mismo pasaje; la diferencia entre ellos radica en que en `<app>` se pueden anidar más de dos alternativas mientras que con `<choice>` se suele presentar la grafía original del texto y la regularización propuesta por el editor. 

El elemento `<app>`, pues, contiene un elemento `<lem>` y uno o más de un elemento `<rdg>` con los que se identifican, respectivamente, la lección preferida (o lema) y las variantes. Asimismo, las variantes se pueden agrupar mediante el elemento `<rdgGroup>` si se desea diferenciar de manera estructurada entre variantes sustantivas y variantes accidentales gracias al atributo `@type`. El elemento `<app>` también puede anidar notas de carácter general mediante el elemento `<note>` y notas más específicas (por ejemplo, si se refieren a una variante en concreto) mediante el elemento `<witDetail>`. Por último, si el objetivo del proyecto es codificar un aparato de variantes ya publicado en formato impreso, se recomienda utilizar el elemento `<wit>` para conservar las siglas con que se identifican los testimonios en cada entrada del aparato.

Además de definir una serie de elementos para representar la variación textual, la TEI ha establecido tres métodos para codificar aparatos. Los dos primeros permiten codificar las variantes tanto en el mismo texto base (*in-line*) como de manera separada (aparato externo), por ejemplo, en el apéndice del documento, en un elemento `<back>`; en cambio, si se sigue el tercer método las variantes deben aparecer insertadas en el texto base. Los nombres de los métodos son los siguientes:

 - método de localización referenciada; 
 - método de adjunción de doble;
 - y método de segmentación paralela.

En esta codificación se ha utilizado el método de segmentación paralela por tres razones: en primer lugar, aunque no es el método más adecuado para procesar yuxtaposiciones y variación de tipo estructural, tiene la ventaja de ser mucho más fácil de realizar de manera manual que los otros dos métodos. En segundo lugar, la mayoría de herramientas que facilitan la creación de ediciones críticas (Versioning Machine, TEI Critical Edition Toolbox o Stemmaweb, entre otras) solo funcionan con este método de codificación. Por último, al menos desde un punto de vista teórico, el método de segmentación paralela está concebido para reconstruir todos los textos contenidos en los documentos cotejados, por ejemplo, en columnas paralelas o en ventanas enfrentadas. En consecuencia, y a diferencia de los otros dos métodos, las variantes se insertan únicamente en el texto base (*in-line*) de tal modo que cada lección se contrapone entre sí.  
 
Antes de ejemplificar cómo se han codificado las variantes, conviene señalar dos aspectos del aparato de las *Soledades*: por un lado, se trata de un aparato de variantes negativo en el que se combinan los elementos `<lem>` y `<rdg>` y en el que solo se identifican los testimonios que transmiten una lección que varía respecto al lema. La razón por la que he creado un aparato negativo es que para el ordenador es fácil deducir —consultando la lista de testimonios descritos en el encabezado TEI— qué documentos no han sido identificados con el atributo `@wit` en los elementos `<rdg>` porque no contienen variantes y, por tanto, dar los que coinciden con el lema. Por el otro lado, las variantes que he recogido en el aparato de variantes se pueden reducir a dos clases: errores de copia y variantes de autor. Para que el usuario pueda distinguir las variantes, he establecido una taxonomía de variantes gracias al atributo `@type` contenido en el elemento `<rdg>`; los valores que he definido son cuatro: 

 - *error*: sirve para identificar los pasajes en los que los amanuenses
   cometieron un error de copia tanto si fue enmendado posteriormente
   como si no lo fue;  
 - *variante*: sirve para identificar las variantes d autor.

A continuación, conviene ver una serie de casos concretos y comentar las principales dificultades. 

### Errores o variantes de copista

Según la crítica textual, se pueden distinguir errores por adición, omisión, sustitución o inversión; por lo general, estos son fáciles de distinguir porque no tienen sentido, se transmiten en un solo o en unos pocos testimonios y, en el caso de los poemas, no siguen la métrica del poema. Los errores, sin embargo, pueden tener una dimensión variable: desde una simple palabra, pasando por una expresión más larga, hasta un verso entero.

Así, el caso más fácil de codificar se da cuando el error atañe únicamente una palabra: 

```xml
<l rend="indent" xml:id="v-0038">Era del año la estación <app>
                            <lem>florida</lem>
                            <rdg type="error" wit="#I">floria</rdg>
                            <rdg type="error" wit="#Rl">primera</rdg>
                        </app>
                    </l>
```


En este caso la variante se ha codificado en una sola entrada del aparato que contiene la lección auténtica (*florida*) y las dos variantes: por un lado, el testimonio I transmite *floria*, es decir, el copista omitió una *d*; por el otro, el testimonio Rl lee un error por sustitución (*primera*). Puesto que son errores de copia evidentes, en ambos casos he utilizado un atributo `@type` con valor *error* para clasificar el contenido del elemento `<rdg>`. Como ya se dijo un poco más arriba, se trata de un aparato negativo y, por tanto, en el elemento `<lem>` no hace falta declarar qué testimonios transmiten florida porque se entiende que, de los 21 testimonios que he cotejado con el texto de Chacón, solo dos (I y Rl) transmiten una variante en este verso.

Ahora bien, en otras ocasiones el error atañe a más de una palabra; en tal caso, la metodología que he seguido se puede ilustrar con el siguiente ejemplo:

```xml
<l xml:id="v-0451">
                        <app>
                            <lem>violarona</lem>
                            <rdg type="error" wit="#Br #Rl">vio la arena</rdg>
                        </app> Neptuno,</l>
```

En esta ocasión la entrada de `<app>` se inserta el inicio del verso y el lema incluye más de una palabra (*Violaron a*) porque los testimonios Br y Rl leen *vio la arena*, es decir, un error de copia debido a la mala lectura (o retención) de dos palabras que tiene como resultado una variante de tres. En síntesis, en lugar de codificar este error en tres aparatos distintos, he codificado la variante en un solo elemento `<app>` porque creo que se corresponde mejor al fenómeno que intento captar y porque facilita la lectura al usuario ya que tiene más sentido leer todo junto *vio la arena* que el mismo grupo de palabras fragmentado en tres entradas distintas del aparato. 

Pero los copistas no solo cometen errores; algunos también enmiendan pasajes o intentan enmendarlos consultando otros documentos o bien por adivinación. En tales circunstancias, el valor del atributo `@type` del elemento `<rdg>` sigue siendo error porque lo que me interesa es que el usuario pueda filtrar los pasajes en que se cometió un error de copia y no si los amanuenses lo corrigieron. Veamos un ejemplo para que se entienda mejor: 

```xml
<l xml:id="v-0418">
                        <app>
                            <lem>escollo, el metal ella fulminante</lem>
                            <rdg type="error" wit="#Br">escollo, <add place="above">el</add> metal ella fulminante</rdg>
                            <rdg type="error" wit="#Ml">escollo, metal ella fulminante</rdg>
                            <rdg type="error" wit="#S">escollo, el metal ella ful<subst>
                                    <del rend="strikethrough">gente</del>
                                    <add place="above">minante</add>
                                </subst>
                            </rdg>
                        </app>
                    </l>
```


En este verso tres testimonios transmiten un error de copia; sin embargo, para simplificar la codificación, se ha utilizado un solo aparato de variantes. Al inicio, pues, se halla el elemento `<lem>`, que incluye la lección correcta: *escollo, el metal ella fulminante*. Los copistas de los testimonios Br y Ml omitieron este artículo pero el de Br lo añadió encima para corregir la lección. A continuación, es posible apreciar que en el testimonio S figura una corrección: el copista transcribió *fulgente* y luego intervino como editor tachando la terminación -*gente* y añadiendo encima la terminación -*minante*. Es decir, llevó a cabo una sustitución; de ahí el uso del elemento `<subst>`.
 

### Variantes de autor

Las variantes de autor han sido codificadas utilizando un atributo `@type` y el valor *variante*. De esta manera, de distinguir los errores de copia, es posible representar el proceso genético.

El caso más sencillo de codificación se produce cuando la variación atañe al verso entero. Una manera posible de representar este fenómeno es anidar dentro de `<l>` el aparato de variantes de tal manera que el verso de la versión definitiva sea el contenido del elemento `<lem>` y el verso de la versión primitiva o intermedia sea el contenido del elemento `<rdg>`. Veamos un ejemplo:

```xml
<l xml:id="v-1392" exclude="#Rm #Rl">
                        <app>
                            <lem>les ofrece el que, joven ya gallardo</lem>
                            <rdg type="variante" wit="#Pr">bien que de mimbres preso en garvín pardo</rdg>
                        </app>
                    </l>
```

   
En este ejemplo la entrada del aparato no incluye una palabra aislada sino todo el verso: por un lado, se representa en el elemento `<lem>` el verso *les ofrece el que, joven ya gallardo*;  por el otro, se representa en el elemento `<rdg>` el verso *bien que de mimbres preso en garvín pardo*; en este caso el único testimonio que transmite la versión primitiva es el manuscrito Pérez de Ribas por lo que solo es necesario un elemento `<rdg>` con los atributos `@type` y `@wit`. El resto de testimonios transmiten el verso de la versión definitiva que coincide con el lema.
 
En la mayoría de casos la situación no es tan sencilla porque los copistas actúan como editores y actualizan la versión del poema. El copista del testimonio Pr tachó *luciente* y añadió en el margen *mentido*; en el caso del copista del testimonio O la sustitución se llevó a cabo de modo menos evidente, pues no hay tachón sino únicamente una adición encima. La codificación de estas variantes es la siguiente: 

```xml
<l xml:id="v-0039">
                        <app>
                            <lem>en que el mentido robador de Europa</lem>
                            <rdg type="variante" wit="#Rm">en luciente robador de Europa</rdg>
                            <rdg type="variante" wit="#Pr">
                                <subst>
                                    <del rend="strikethrough">luciente</del>
                                    <add place="margin">mentido</add>
                                </subst> robador de Europa</rdg>
                            <rdg type="variante" wit="#O">
                                <subst>
                                    <del rend="unmarked">luciente</del>
                                    <add place="above">mentido</add>
                                </subst> robador de Europa</rdg>
                        </app>
                    </l>
```

En la versión primitiva, Góngora había escrito *luciente robador de Europa* mientras que en la definitiva se lee *mentido robador de Europa*. De todos los testimonios que he cotejado, tres transmiten la versión primitiva; de estos tres, en realidad, solo el testimonio Rm transmite *luciente* (o, mejor dicho, *en luciente*) porque en los otros dos los copistas actualizaron el poema sustituyendo una versión por otra: por un lado, el copista de Pr tachó y añadió en el margen; por el otro, aunque el copista de O no tachó ni subrayó *luciente* sino que añadió encima *mentido*, se puede *deducir* que su intención era sustituir las palabras. 

Cuando el paso de la versión primitiva a la versión definitiva supuso la eliminación de un verso, el elemento `<lem>` debe dejarse vacío: 

```xml
<l xml:id="v-0183-p">
                        <app>
                            <lem/>
                            <rdg type="variante" wit="#Rm #O">por absolverle escrúpulos al vaso),</rdg>
                            <rdg type="variante" wit="#Pr">
                                <del rend="strikethrough">por absolverle escrúpulos al vaso),</del>
                            </rdg>
                        </app>
                    </l>
```

En este ejemplo se ve cómo en el lema no hay ningún verso mientras que dos testimonios (Rm y O) transmiten el verso que sí había en la versión primitiva. Por su parte, en Pr la segunda mano tachó el verso *por absolverle escrúpulos al vaso)* con el fin de actualizar el poema por eso hay un elemento `<del>`.


## Extensión

Los testimonios cotejados tienen una extensión variable que nos permite conocer las fases de la escritura de las *Soledades*. Para representar la variación estructural se ha utilizado el atributo `@exclude` contenido en el elemento `<l>`:

```xml
 <l xml:id="v-2107" exclude="#A #Br #C #D #I #J #Ml #N #Rm #Pr #S #vi #Q #O #Rl">y a la estigia deidad con bella esposa.</l>
```

Tal y como se puede apreciar, en el último verso el valor del atributo `@exclude` contiene las 17 siglas con las que se identifican los testimonios. Esto quiere decir que esos 17 testimonios no transmiten el verso. El editor, pues, debe representar una ausencia mediante una elemento que sí está presente.  




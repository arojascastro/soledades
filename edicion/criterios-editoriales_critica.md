# *Soledades*. Edición critica digital. Criterios de codificación 

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

Más detalles precisa el elemento `<availability>` con el que se da información sobre la disponibilidad del texto. Es posible indicar la licencia de publicación y uso de dos maneras distintas: mediante un párrafo en prosa contenido en un elemento `<p>` o bien mediante el elemento `<license>`. Tal y como he realizado en esta propuesta de codificación, en el segundo caso se puede utilizar un atributo `@target` que apunte hacia una URL en donde se explican los términos de la licencia.


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

A diferencia de los fenómenos textuales ya vistos, la representación del aparato de variantes plantea algunos problemas debido a dos razones principales: por un lado, aunque la TEI dedica el capítulo doceavo de las *Guidelines* a este tema, las explicaciones y ejemplos son escasos y, además, muchos de ellos se centran en cómo codificar aparatos ya existentes, impresos; por el otro, en la actualidad el modelo conceptual de la TEI presupone que la variación textual solo afecta porciones reducidas del texto, como palabras o frases, en lugar de párrafos, estrofas, títulos, secciones o incluso partes del texto. El debate sobre esta cuestión existe en el seno de la comunidad TEI pero en el momento en que escribo estas líneas el elemento `<app>` no puede contener los elementos `<l>`, `<p>`, `<head>` o `<div>` sino siempre a la inversa. Como se verá, esto condiciona el modo en que la codificación del aparato de variantes debe llevarse a cabo y plantea dificultades a la hora de codificar distintas versiones de una misma obra o la extensión de los testimonios cotejados. 

De momento, sin embargo, conviene saber que la TEI define una metodología para representar los siguientes componentes de un aparato de variantes:

 - las entradas mediante el elemento `<app>`; 
 - las variantes mediante los elementos `<lem>` y `<rdg>`;
 - y los testimonios en donde se encuentran las variantes mediante el elemento `<wit>` o el atributo `@wit`.

Tal y como se advierte en las *Guidelines*, el elemento `<app>` se parece al elemento `<choice>` en la medida en que ambos permiten codificar lecciones alternativas de un mismo pasaje; la diferencia entre ellos radica en que en `<app>` se pueden anidar más de dos alternativas mientras que con `<choice>` se suele presentar la grafía original del texto y la regularización propuesta por el editor. El elemento `<app>`, pues, contiene un elemento `<lem>` y uno o más de un elemento `<rdg>` con los que se identifican, respectivamente, la lección preferida (o lema) y las variantes. Asimismo, conviene saber que las variantes se pueden agrupar mediante el elemento `<rdgGroup>` si se desea diferenciar de manera estructurada entre variantes sustantivas y variantes accidentales gracias al atributo `@type`. El elemento `<app>` también puede anidar notas de carácter general mediante el elemento `<note>` y notas más específicas (por ejemplo, si se refieren a una variante en concreto) mediante el elemento `<witDetail>`. Por último, si el objetivo del proyecto es codificar un aparato de variantes ya publicado en formato impreso, se recomienda utilizar el elemento `<wit>` para conservar las siglas con que se identifican los testimonios en cada entrada del aparato.

Además de definir una serie de elementos para representar la variación textual, la TEI ha establecido tres métodos para codificar aparatos. Los dos primeros permiten codificar las variantes tanto en el mismo texto base (*in-line*) como de manera separada (aparato externo), por ejemplo, en el apéndice del documento, en un elemento `<back>`; en cambio, si se sigue el tercer método las variantes deben aparecer insertadas en el texto base. Los nombres de los métodos son los siguientes:

 - método de localización referenciada; 
 - método de adjunción de doble
 - y método de segmentación paralela.

El método de localización referenciada se recomienda para codificar aparatos de variantes ya existentes porque conserva la estructura original del impreso: si el aparato es externo debe identificarse el pasaje del lema y luego enlazar el aparato haciendo uso del atributo `@loc` en el elemento `<app>`; en cambio, si el aparato se inserta en el texto (`in-line`), el elemento `<app>` se puede situar tras la lección del texto base o bien al final del verso o de la frase que contiene la variante.

El método de adjunción de doble destino se caracteriza porque el inicio y el fin del lema se señalan de manera explícita mediante etiquetas y atributos; así, es posible utilizar el atributo `@xml:id` en un elemento `<l>` para indicar el inicio del lema e identificar dónde termina gracias a un elemento `<anchor>` con un atributo `@xml:id`. Por su parte, el elemento `<app>` debe contener los atributos `@from` y `@to` para remitir a los valores definidos en los atributos `@xml:id` de `<l>` y de `<anchor>`. Este método se aconseja cuando el editor debe lidiar con variantes estructurales que resultan difíciles de encajar en la sintaxis arbórea del XML.
 
Por último, en el método de segmentación paralela las variantes se insertan únicamente en el texto base (*in-line*) de tal modo que cada lección se contrapone entre sí. Es el método elegido en esta propuesta de codificación XML/TEI por tres razones: en primer lugar, aunque no es el método más adecuado para procesar yuxtaposiciones y variación de tipo estructural, tiene la ventaja de ser mucho más fácil de realizar de manera manual que los otros dos métodos. En segundo lugar, la mayoría de herramientas que facilitan la creación de ediciones críticas (Versioning Machine, TEI Critical Edition Toolbox o Stemmaweb, entre otras) solo funcionan con este método de codificación. Por último, al menos desde un punto de vista teórico, el método de segmentación paralela está concebido para reconstruir todos los textos contenidos en los documentos cotejados, por ejemplo, en columnas paralelas o en ventanas enfrentadas.
 
Antes de ejemplificar cómo se han codificado las variantes, conviene señalar dos aspectos del aparato de las *Soledades*: por un lado, se trata de un aparato de variantes negativo en el que se combinan los elementos `<lem>` y `<rdg>` y en el que solo se identifican los testimonios que transmiten una lección que varía respecto al lema. La razón por la que he creado un aparato negativo es que para el ordenador es fácil deducir —consultando la lista de testimonios descritos en el encabezado TEI— qué documentos no han sido identificados con el atributo `@wit` en los elementos `<rdg>` porque no contienen variantes y, por tanto, dar los que coinciden con el lema. Por el otro lado, las variantes que he recogido en el aparato de variantes se pueden reducir a dos clases: errores de copia y variantes de autor. Para que el usuario pueda distinguir las variantes, he establecido una taxonomía de variantes gracias al atributo `@type` contenido en el elemento `<rdg>`; los valores que he definido son cuatro: 

 - *error*: sirve para identificar los pasajes en los que los amanuenses
   cometieron un error de copia tanto si fue enmendado posteriormente
   como si no lo fue;  
 - *prim*: sirve para identificar las variantes d autor pertenecientes a la versión primitiva; 
 - *interm*: sirve para identificar las variantes de autor intermedias, es decir, aquellas variantes posteriores a la versión primitiva y anteriores a la versión definitiva;
 - *intervention*: sirve para identificar las intervenciones de los copistas llevadas a cabo para actualizar (o refundir) las versiones del poema.

 
Por tanto, esta codificación de las *Soledades* está ideada para que el usuario pueda seleccionar, filtrar o visualizar las variantes en función de sus intereses a partir de dos criterios: el testimonio que transmite la variante y el tipo de variante. Así, por ejemplo, se puede imaginar una situación en la que un investigador está interesado en estudiar la filiación de los testimonios; en tal caso, es bastante probable que el usuario solo quiera visualizar las variantes identificadas como errores y una combinación concreta de testimonios. Con este método de codificación también es posible encontrar con facilidad qué lecciones del texto base (Chacón) aparecen en el aparato de variantes porque se consideran erróneas. Por último, ya que se han distinguido las variantes de autor, el usuario podría aislar el resto de variantes y acceder únicamente al texto reconstruido de la versión primitiva o bien a las variantes de autor identificadas como intermedias.

Dicho esto, a continuación conviene ver una serie de casos concretos y comentar las principales dificultades que he tenido que afrontar. En adelante, el apartado se centrará en la codificación de la tipología de variantes y de la distinta extensión que presentan los testimonios cotejados.

### Errores o variantes de copista
Según la crítitca textual, se pueden distinguir errores por adición, omisión, sustitución o inversión; por lo general, estos son fáciles de distinguir porque no tienen sentido, se transmiten en un solo o en unos pocos testimonios y no respetan la métrica del poema. Los errores, sin embargo, pueden tener una dimensión variable: desde una simple palabra, pasando por una expresión más larga, hasta un verso entero.

Así, el caso más fácil de codificar se da cuando el error atañe únicamente una palabra: 

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

En este caso la variante se ha codificado en una sola entrada del aparato que contiene la lección auténtica (*florida*) y las dos variantes: por un lado, el testimonio I transmite *floria*, es decir, el copista omitió una *d*; por el otro, el testimonio Rl lee un error por sustitución (*primera*). Puesto que son errores de copia evidentes, en ambos casos he utilizado un atributo `@type` con valor *error* para clasificar el contenido del elemento `<rdg>`. Como ya se dijo un poco más arriba, se trata de un aparato negativo y, por tanto, en el elemento `<lem>` no hace falta declarar qué testimonios transmiten florida porque se entiende que, de los 21 testimonios que he cotejado con el texto de Chacón, solo dos (I y Rl) transmiten una variante en este verso.

Ahora bien, en otras ocasiones el error atañe a más de una palabra; en tal caso, la metodología que he seguido se puede ilustrar con el siguiente ejemplo:

    <l xml:id="v-0451">
                            <app>
                                <lem>
                                    <choice>
                                        <orig>Violaron</orig>
                                        <reg>violaron</reg>
                                    </choice>
                                    <choice>
                                        <orig>à</orig>
                                        <reg>a</reg>
                                    </choice>
                                </lem>
                                <rdg type="error" wit="#Br #Rl">vio la arena</rdg>
                            </app>
                            <persName>Neptuno</persName>
                            <choice>
                                <orig/>
                                <reg>,</reg>
                            </choice>
                        </l>

En esta ocasión la entrada de `<app>` se inserta el inicio del verso y el lema incluye más de una palabra (*Violaron a*) porque los testimonios Br y Rl leen *vio la arena*, es decir, un error de copia debido a la mala lectura (o retención) de dos palabras que tiene como resultado una variante de tres. En síntesis, en lugar de codificar este error en tres aparatos distintos, he codificado la variante en un solo elemento `<app>` porque creo que se corresponde mejor al fenómeno que intento captar y porque facilita la lectura al usuario ya que tiene más sentido leer todo junto *vio la arena* que el mismo grupo de palabras fragmentado en tres entradas distintas del aparato. 

Pero los copistas no solo cometen errores; algunos también enmiendan pasajes o intentan enmendarlos consultando otros documentos o bien por adivinación. En tales circunstancias, el valor del atributo `@type` del elemento `<rdg>` sigue siendo error porque lo que me interesa es que el usuario pueda filtrar los pasajes en que se cometió un error de copia y no si los amanuenses lo corrigieron. Veamos un ejemplo para que se entienda mejor: 

    <l xml:id="v-0418"><choice>
                                <orig>Escollo</orig>
                                <reg>escollo</reg>
                            </choice>, <app>
                                <lem>el</lem>
                                <rdg type="error" wit="#Br"><add place="above">el</add></rdg>
                                <rdg type="error" wit="#Ml"/>
                            </app> metal ella <app>
                                <lem>fulminante</lem>
                                <rdg type="error" wit="#S">ful<subst>
                                        <del rend="strikethrough">gente</del>
                                        <add place="above">minante</add>
                                    </subst></rdg>
                            </app></l>

En este verso tres testimonios transmiten un error de copia pero dos de ellos afectan a la misma palabra, por lo que he codificado las variantes en dos elementos `<app>`. En el primero de ellos el elemento `<lem>` incluye la palabra *el*; los copistas de los testimonios Br y Ml omitieron este artículo pero el de Br lo añadió encima para corregir la lección. En el segundo elemento `<app>` el lema es *fulgente* mientras que un elemento `<rdg>` da la variante encontrada en el testimonio S. En este manuscrito el copista transcribió *fulgente* y luego intervino como editor tachando la terminación -*gente* y añadiendo encima la terminación -*minante*. Es decir, llevó a cabo una sustitución; de ahí el uso del elemento `<subst>`.

En algunas ocasiones los copistas también restituyen una lección. Es decir, la lección que transcribieron primero era la correcta pero luego, por alguna razón, la modificaron; finalmente, volvieron a la lección original. Este tipo de intervenciones editoriales han sido codificadas mediante el elemento `<restore>`:

    <l n="35" xml:id="v-0035">
                            <app>
                                <lem><choice>
                                        <orig>Que</orig>
                                        <reg>que</reg>
                                    </choice><choice>
                                        <orig/>
                                        <reg>,</reg>
                                    </choice>
                                    <choice>
                                        <orig>à</orig>
                                        <reg>a</reg>
                                    </choice> tu piedad <app>
                                        <lem><persName>Euterpe</persName></lem>
                                        <rdg type="error" wit="#N"><restore type="addition">Euterpe</restore></rdg>
                                        <rdg type="error" wit="#S">ya noble</rdg>
                                    </app> agradecida<choice>
                                        <orig>,</orig>
                                        <reg/>
                                    </choice></lem>
                                <rdg wit="#Rm #Pr"/>
                            </app>
                        </l>

En este ejemplo la palabra *Euterpe* ha sido codificada con el elemento `<restore>` porque era la lección que el copista transcribió originalmente; a continuación, debió de consultar otro documento (probablemente S) que contenía la variante *ya noble*; el copista de N tachó *Euterpe* y añadió encima *ya noble*. Por último, se dio cuenta de que al intervenir había corrompido la lección auténtica, así que tachó *ya noble* y añadió en el margen *Euterpe*. Todo este proceso, sin embargo, no se representa con lenguaje de marcado sino únicamente la palabra restituida y el modo en que se llevó a cabo la restitución mediante el atributo `@type`.     

En resumen, para codificar un error por omisión como el cometido por el copista del testimonio Ml he dejado el elemento vacío; para codificar una enmienda por parte del copista, como en los casos de Br y S, he utilizado los elementos `<del>`, `<add>` y `<subst>` para codificar la intervención editorial; para codificar restituciones se ha utilizado el elemento `<restore>`. En todos estos casos el elemento `<rdg>` tiene un atributo `@type` con valor error porque con ello quiero que el usuario pueda acceder a los pasajes en los versos que contienen (o contenían) un error de copia. 

Para acabar, conviene saber que la TEI define un atributo `@cause` para clasificar los errores desde un punto de vista causal; hasta el momento, en esta codificación XML/TEI de las *Soledades* no he utilizado este atributo porque creo que el usuario tiene suficiente con poder separar los errores de las variantes de autor. Sin embargo, en el futuro podría clasificar los errores según otra tipología como adición, omisión, sustitución o inversión.  

### Variantes de autor

Las variantes de autor han sido codificadas utilizando un atributo `@type` con tres valores posibles: *prim*, *interm* y *intervention*. De esta manera, además de los errores de copia, es posible representar, por un lado, el proceso genético del autor, y, por el otro, cómo los copistas realizan intervenciones editoriales en el manuscrito.  

El caso más sencillo de codificación se produce cuando la variación atañe al verso entero. Ya se ha dicho que el modelo conceptual actual de la TEI no permite que los elementos `<app>`, `<lem>` y `<rdg>` contengan un elemento `<l>` o `<lg>`. Así, pues, la única solución que he encontrado es anidar dentro de `<l>` estos elementos de tal modo que el verso de la versión definitiva sea el contenido del elemento `<lem>` y el verso de la versión definitiva sea el contenido del elemento `<rdg>`. Veamos un ejemplo:

    <l xml:id="v-1392">
                            <app>
                                <lem><choice>
                                        <orig>Les</orig>
                                        <reg>les</reg>
                                    </choice> ofrece el que<choice>
                                        <orig/>
                                        <reg>,</reg>
                                    </choice>
                                    <choice>
                                        <orig>jouen</orig>
                                        <reg>joven</reg>
                                    </choice>
                                    <choice>
                                        <orig>ia</orig>
                                        <reg>ya</reg>
                                    </choice> gallardo</lem>
                                <rdg type="prim" wit="#Pr">bien que de mimbres preso en garvín pardo</rdg>
                                <rdg wit="#Rm #Rl"/>
                            </app>
                        </l>

En este ejemplo la entrada del aparato no incluye una palabra aislada sino todo el verso: por un lado, se representa en el elemento `<lem>` el verso *les ofrece el que, joven ya gallardo*;  por el otro, se representa en el elemento `<rdg>` el verso *bien que de mimbres preso en garvín pardo*; en este caso el único testimonio que transmite la versión primitiva es el manuscrito Pérez de Ribas por lo que solo es necesario un elemento `<rdg>` con los atributos `@type` y `@wit`. El resto de testimonios transmiten el verso de la versión definitiva que coincide con el lema; ahora bien, puesto que la extensión de dos testimonios (Rl y Rm) no llega hasta este verso he debido dejar vacío un elemento `<rdg>` para representar esta omisión.
 
En la mayoría de casos la situación no es tan sencilla porque los copistas actúan como editores y actualizan la versión del poema. El copista del testimonio Pr tachó *luciente* y añadió en el margen *mentido*; en el caso del copista del testimonio O la sustitución se llevó a cabo de modo menos evidente pues no hay tachón sino únicamente una adición encima. La codificación de estas variantes es la siguiente: 

    <l xml:id="v-0039">
                            <choice>
                                <orig>En</orig>
                                <reg>en</reg>
                            </choice> que <app>
                                <lem>el</lem>
                                <rdg type="error" wit="#Rm">en</rdg>
                            </app>
                            <app>
                                <lem>mentido</lem>
                                <rdg type="prim" wit="#Rm">luciente</rdg>
                                <rdg type="intervention" wit="#Pr"><subst>
                                        <del rend="strikethrough">luciente</del>
                                        <add place="margin">mentido</add>
                                    </subst></rdg>
                                <rdg type="intervention" wit="#O"><subst>
                                        <del rend="unmarked">luciente</del>
                                        <add place="above">mentido</add>
                                    </subst></rdg>
                            </app> robador de <persName>Europa</persName><choice>
                                <orig>,</orig>
                                <reg/>
                            </choice></l>

En este verso la variante de autor atañe a una sola palabra. En la versión primitiva Góngora había escrito *luciente robador de Europa* mientras que en la definitiva se lee *mentido robador de Europa*. De todos los testimonios que he cotejado, tres transmiten la versión primitiva; de estos tres, en realidad, solo el testimonio Rm transmite *luciente* porque en los otros dos los copistas actualizaron el poema sustituyendo una versión por otra: por un lado, el copista de Pr tachó y añadió en el margen; por el otro, aunque el copista de O no tachó ni subrayó *luciente* sino que añadió encima *mentido*, se puede *deducir* que su intención era sustituir las palabras. Asimismo, en la codificación de este verso se observa cómo la misma combinación de elementos se puede utilizar para representar distintos fenómenos pues el testimonio Rm transmite un error que ha sido codificado con `<app>`, `<lem>` y `<rdg>`. La diferencia entre la primera y la segunda lección se representa mediante los valores del atributo `@type`.
  
Ahora bien, aunque la variación afecte únicamente a una palabra, en ocasiones conviene codificar el verso entero en el aparato de variantes; esto ocurre porque los copistas a menudo sustituyen grupos de palabras o versos enteros:

    <l xml:id="v-0041"><app>
                                <lem>
                                    <choice>
                                        <orig>Y</orig>
                                        <reg>y</reg>
                                    </choice> el <choice>
                                        <orig>Sol</orig>
                                        <reg>sol</reg>
                                    </choice>
                                    <app>
                                        <lem>todo</lem>
                                        <rdg type="error" wit="#A #Br #Ch #D #Ml #N #S #pe #ho33 #Rl">todos</rdg>
                                    </app> los rayos de su pelo)<choice>
                                        <orig/>
                                        <reg>,</reg>
                                    </choice></lem>
                                <rdg type="prim" wit="#Rm">y el sol todo en su pelo</rdg>
                                <rdg type="intervention" wit="#Pr">y el sol todo <subst>
                                        <del rend="strikethrough">en su pelo</del>
                                        <add place="margin">los rayos de su pelo</add>
                                    </subst></rdg>
                                <rdg type="intervention" wit="#O">y el sol todo<subst>
                                        <del rend="underlined">en</del>
                                        <add place="above">los rayos de</add>
                                    </subst> su pelo</rdg>
                            </app></l>

En este ejemplo la entrada del aparato contiene el verso entero: por un lado, el elemento `<lem>` da la versión definitiva; por el otro, los elementos `<rdg>` dan la versión primitiva. Ahora bien, la sustitución llevada a cabo por los copista de Pr y O difiere: el primero tachó *en su pelo* y añadió en el margen *los rayos de su pelo*; el segundo, en cambio, subrayó la preposición *en* y añadió encima *los rayos de*. Si se quieren captar con fidelidad cómo intervienen los copistas, es necesario incluir en el elemento *<rdg>* no solo las variantes en sí sino también las palabras que no varían y que están en el entorno. La alternativa sería crear una entrada de aparato por cada una de las palabras que variasen; pero esta estrategia, sin duda, complicaría el procesamiento del etiquetado y haría mucho más difícil la lectura en pantalla. Por lo demás, debo advertir que la TEI permite anidar elementos `<app>` en otros elementos `<app>` de tal manera que es posible representar variantes contenidas en el lema; esto es lo que ocurre con la variante *todos* transmitida por diez testimonios (incluido Chacón) e identificada como error de copia mediante el atributo `@type`.

Cuando el paso de la versión primitiva a la versión definitiva supuso la eliminación de un verso, el elemento `<lem>` debe dejarse vacío: 

    <l xml:id="v-0183-p">
                            <app>
                                <lem/>
                                <rdg type="prim" wit="#Rm #O">por absolverle escrúpulos al
                                        vaso),</rdg>
                                <rdg type="intervention" wit="#Pr">
                                    <del rend="strikethrough">por absolverle escrúpulos al
                                            vaso),</del>
                                </rdg>
                            </app>
                        </l>

En este ejemplo se ve cómo en el lema no hay ningún verso mientras que dos testimonios (Rm y O) transmiten el verso que sí había en la versión primitiva. Por su parte, en Pr la segunda mano tachó el verso *por absolverle escrúpulos al vaso)* con el fin de actualizar el poema por eso hay un elemento `<del>`. Aunque la TEI define un atributo `@hand` con el que identificar quién es el responsable de la intervención editorial, en esta propuesta de codificación no me ha parecido oportuno utilizarlo porque mi objetivo principal es que el usuario filtre las variantes por testimonio y tipología, y no por manos pues la mayoría de manuscritos fueron trasladados por un solo amanuense.

Por último, la distinción entre la versión primitiva y las variantes de autor producidas en una fase intermedia se lleva a cabo mediante el atributo `@type`. Veamos un ejemplo: 

    <l xml:id="v-0735"><choice>
                                <orig>Papel</orig>
                                <reg>papel</reg>
                            </choice> fue de pastores, <app>
                                <lem>aunque rudo,</lem>
                                <rdg type="prim" wit="#Rm #O">y no rudo,</rdg>
                                <rdg type="interm" wit="#Br #Rl">si bien rudo,</rdg>
                                <rdg type="intervention" wit="#Pr"><subst>
                                        <del rend="strikethrough">y no rudo,</del>
                                        <add place="margin">aunque rudo,</add>
                                    </subst></rdg>
                            </app></l>

En este verso se pueden distinguir tres estadios en la parte final: en primer lugar, *y no rudo*; en segundo lugar, *si bien rudo*; por último, *aunque rudo*. El procedimiento es idéntico al que ya ha sido explicado: la versión definitiva se codifica en el elemento `<lem>` mientras que las otras dos aparecen en el elemento `<rdg>`; lo que diferencia a la versión primitiva de la intermedia es únicamente el valor del atributo `@type. 

## Extensión

Los testimonios cotejados tienen una extensión variable que nos permite conocer las fases de la escritura de las *Soledades*. Para representar la variación estructural con el método de segmentación paralela es necesario dejar vacíos algunos elementos `<rdg>`; esto ocurre en la codificación de todos los versos que componen la Dedicatoria: 

    <l xml:id="v-0021">
                            <app>
                                <lem>
                                    <choice>
                                        <orig>La</orig>
                                        <reg>la</reg>
                                    </choice>
                                    <choice>
                                        <orig>hasta</orig>
                                        <reg>asta</reg>
                                    </choice> de tu luciente <choice>
                                        <orig>jaualina</orig>
                                        <reg>jabalina</reg>
                                    </choice><choice>
                                        <orig>;</orig>
                                        <reg>,</reg>
                                    </choice></lem>
                                <rdg wit="#Pr #Rm"/>
                            </app>
                        </l>

Los testimonios Pr y Rm no transmiten la Dedicatoria. Ahora bien, no se trata de un error por omisión por lo que no se debe poner un atributo `@type` con valor *error*. Esta estrategia ha sido llevada a cabo a lo largo del poema de tal modo que en el último verso el valor del atributo `@wit` contiene 17 siglas con las que se identifican los testimonios que no lo transmiten: 

    <l xml:id="v-2107">
                            <app>
                                <lem><choice>
                                        <orig>I</orig>
                                        <reg>y</reg>
                                    </choice>
                                    <choice>
                                        <orig>á</orig>
                                        <reg>a</reg>
                                    </choice> la <choice>
                                        <orig>stygia</orig>
                                        <reg>estigia</reg>
                                    </choice>
                                    <choice>
                                        <orig>Deidad</orig>
                                        <reg>deidad</reg>
                                    </choice> con bella esposa.</lem>
                                <rdg wit="#A #Br #C #D #I #J #Ml #N #Rm #Pr #S #vi #Q #O #Rl"/>

Por supuesto, el incremento de siglas identificadas en el atributo `@wit` es progresivo pero no por ello deja de ser un proceso complejo: el editor debe representar una ausencia mediante una elemento presente que se repite verso tras verso.  




# *Soledades* de Luis de Góngora 

Una edición crítica digital. 

Documentación de Antonio Rojas Castro

## Contacto

Twitter: @RojasCastro

E-mail: rojas.castro.antonio at gmail dot com

Web: www.antoniorojascastro.com

## Derechos

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Licencia de Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />Este obra se publica bajo una <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">licencia de Creative Commons Reconocimiento 4.0 Internacional</a>.

## Intro

Toda representación TEI de un texto debe tener un propósito; en otras palabras, se codifican ciertos fenómenos textuales (no todos) para que el ordenador pueda procesarlos y el usuario interactúe con ellos en la interfaz web. Mi codificación de las *Soledades* ha sido concebida para que el usuario pueda acceder al texto paleográfico y modernizado de Chacón, pueda filtrar las variantes de autor por testimonio y clase (error, variante de autor e intervención editorial) y pueda navegar el texto de distintas maneras (partes, versos, discursos o cronología); con todo ello se pretende poner de relieve la dialéctica entre obra, texto y documento.

## Contenidos
- [encabezado] (https://github.com/arojascastro/soledades/blob/master/README.md#encabezado) 
- [título, partes y subtítulos] (https://github.com/arojascastro/soledades/blob/master/README.md#t%C3%ADtulo-partes-y-subt%C3%ADtulos)
- [grupos de versos y versos] (https://github.com/arojascastro/soledades/blob/master/README.md#grupos-de-versos-y-versos)
- [saltos de página] (https://github.com/arojascastro/soledades/blob/master/README.md#saltos-de-páginas)
- [fases de la cronología] (https://github.com/arojascastro/soledades/blob/master/README.md#fases-de-la-cronología)
- [discursos y diálogos] (https://github.com/arojascastro/soledades/blob/master/README.md#discursos-y-diálogos)
- [transcripción paleográfica y texto modernizado] (https://github.com/arojascastro/soledades/blob/master/README.md#transcripci%C3%B3n-paleogr%C3%A1fica-y-texto-modernizado)
- [aparato de variantes] (https://github.com/arojascastro/soledades/blob/master/README.md#aparato-de-variantes)
- [fiabilidad y palabras suplidas] (https://github.com/arojascastro/soledades/blob/master/README.md#fiabilidad-y-palabras-suplidas)
- [anotación] (https://github.com/arojascastro/soledades/blob/master/README.md#anotaci%C3%B3n) 
- [nombres propios] (https://github.com/arojascastro/soledades/blob/master/README.md#nombres-propios)

## Encabezado

El encabezado TEI es el lugar del archivo XML en el que se recogen los metadatos, es decir, toda aquella información que permite identificar al documento y declarar cuál es la fuente de la que deriva el texto. En esta parte del archivo, además, se pueden registrar otro tipo de información suplementaria como los criterios editoriales, el tipo de texto u otros datos relativos a la creación de la obra desde un punto de vista intelectual. 

### Descripción del archivo

El elemento `<fileDesc>` contiene una serie de elementos con información bibliográfica sobre el archivo electrónico necesaria para su citación y catalogación. En primer lugar, se halla el elemento `<titleStmt>` en donde se sitúa el título de la obra electrónica, el autor del texto codificado y quién es el responsable de la edición, entre otros datos. En mi caso he decidido utilizar el nombre del poema en el título principal y, a continuación, añadir un subtítulo que especifica, distingue del resto de ediciones y aclara cuál es su objetivo y finalidad. 

    <titleStmt>
                    <title type="main">Soledades</title>
                    <title type="sub">Una edición crítica digital</title>
                    <author>
                        <name>
                            <forename>Luis</forename>
                            <nameLink>de</nameLink>
                            <surname>Góngora</surname>
                        </name>
                    </author>
                    <respStmt xml:id="ARC">
                        <resp>Edición y codificación de</resp>
                        <name>
                            <forename>Antonio</forename>
                            <surname>Rojas</surname>
                            <surname>Castro</surname>
                        </name>
                    </respStmt>
                    <funder>Ministerio de Economía y Competitividad. Todo Góngora II [I+D+I
                        FFI2010-17349]</funder>
                </titleStmt>

Tras el título sigue el elemento `<author>`, el elemento `<respStmt>` y el elemento `<funder>`. El primero de estos contiene el nombre del autor. Seguidamente se puede hallar el elemento `<editor>`, en donde se identifica al creador del archivo electrónico. También es posible utilizar la etiqueta `<respStmt>` para detallar este tipo de información. En mi propuesta de codificación he preferido esta segunda opción para así poder declarar que soy responsable tanto de la edición del texto como de la codificación. Este elemento contiene un atributo `@xml:id` con valor `ARC`: de esta manera, es posible identificar y referenciar mis intervenciones en el resto del archivo XML. Por último, he creído oportuno utilizar la etiqueta `<funder>` para declarar que tanto la tesis como la codificación XML/TEI de las *Soledades* han sido financiadas por el Ministerio de Economía y Competitividad como miembro del proyecto Todo Góngora II.

Dentro del elemento `<fileDesc>`, se localiza toda una serie de elementos que aportan información complementaria sobre el número de edición, la extensión del archivo y quién es el responsable de la publicación: por un lado, con el elemento `<edition>`, contenido en `<editionStmt>`, doy el número de la edición. En este caso se trata de una primera edición; si en el futuro se publicara este archivo en internet y otro investigador lo modificara o lo reutilizara con otros fines, sería posible identificar el número de edición y añadir un elemento `<respStmt>` en el que se especificaría cuál ha sido la aportación del nuevo editor, así como su nombre y apellidos. El elemento `<editionStmt>` no es obligatorio pero la TEI lo recomienda. Por el otro, el elemento `<extent>` sirve para declarar el tamaño de archivo en alguna medida estándar. En el caso de las *Soledades* el archivo sobrepasa ligeramente los 1,94 megabytes. La TEI no establece una unidad de medida y, en consecuencia, es posible expresar un mismo tamaño de distintas maneras, incluso con el número de palabras; este elemento también es opcional:

    <editionStmt>
                    <edition n="1">Primera edición</edition>
                </editionStmt>
    <extent>1,94 Mb</extent>

A continuación, se sitúa el elemento `<publicationStmt>`. Con esta etiqueta, obligatoria, se proporciona información sobre qué sujeto, institución o grupo publica el archivo electrónico y bajo qué licencia se puede acceder a él y utilizar:

    <publicationStmt>
                    <publisher>Universitat Pompeu Fabra</publisher>
                    <distributor>Todo Góngora II</distributor>
                    <pubPlace>
                        <address>
                         <orgName>Universitat Pompeu Fabra</orgName>
                         <street>Ramon Trias Fargas, 25-27</street>
                         <settlement>Barcelona</settlement>
                         <postCode>08005</postCode>
                         <country>España</country>
                     </address>
                    </pubPlace>
                    <availability status="free">
                        <licence target="[http://creativecommons.org/licenses/by-nc/3.0/deed.es](http://creativecommons.org/licenses/by-nc/3.0/deed.es)">Publicado bajo una licencia Creative Commons Atribución-NoComercial 3.0</licence>
                    </availability>
                </publicationStmt>

En mi propuesta de codificación XML/TEI de las *Soledades* he identificado como `<publisher>` a la Universitat Pompeu Fabra ya que la codificación se llevó a cabo como parte de una investigación vinculada al Departament d’Humanitats. En cuanto al elemento `<distributor>` he identificado al grupo de investigación Todo Góngora II, que sería quien validara el texto editado. Dicho en otras palabras, con el primer elemento se hace referencia a quien publica el ítem desde un punto de vista bibliográfico; con el segundo, al responsable de la distribución del texto. Con todo, hay que reconocer que la distinción entre `<publisher>` y `<distributor>` no me parece del todo clara tal y como aparece actualmente en las *Guidelines* de la TEI. 

El elemento `<pubPlace>` contiene el nombre del lugar de publicación. Como el `<publisher>` sería la Universitat Pompeu Fabra, he decidido describir la dirección postal en donde se encuentra el campus de Ciutadella mediante una serie de etiquetas creadas para ello; no me detendré en ellas porque el uso es evidente. 

Más detalles precisa el elemento `<availability>` con el que se da información sobre la disponibilidad del texto. Es posible indicar la licencia de publicación y uso de dos maneras distintas: mediante un párrafo en prosa contenido en un elemento `<p>` o bien mediante el elemento `<license>`. Tal y como he realizado en esta propuesta de codificación, en el segundo caso se puede utilizar un atributo `@target` que apunte hacia una URL en donde se explican los términos de la licencia.

Dentro de `<publicationStmt>` pueden hallarse otras etiquetas relevantes como `<date>`. En mi propuesta de codificación, puesto que de momento permanecerá inédita, he preferido no utilizar este elemento porque su uso se restringe a la fecha de publicación.

El último elemento que contiene el `<fileDesc>` corresponde al `<sourceDesc>`. Se trata de un elemento obligatorio y en el caso de una edición crítica digital es el más importante porque se utiliza para registrar las fuentes de las que deriva el archivo electrónico. Si el texto no deriva de ningún documento, es necesario declarar esto con una frase como *Documento nacido digital* dentro de un elemento `<p>`. 

Si el texto codificado es una digitalización de un solo documento (por ejemplo, una edición impresa publicada en época moderna) el elemento `<sourceDesc>` puede contener simplemente un elemento `<bibl>` o bien, si queremos estructurar la información, un elemento *<biblStruct>*. En ambos elementos se indicaría el autor, el título, el lugar de publicación, la casa editorial y el año de publicación. 

Para establecer el texto de las *Soledades* he utilizado 22 documentos: 17 manuscritos y 5 impresos. La relación de estos documentos se encuentra en el encabezado TEI en el elemento `<listWit>` que, a su vez, contiene cada uno de los elementos `<witness>` en donde se identifican y describen los testimonios utilizados. Este elemento contiene un atributo `@xml:id` que permite identificar cada documento mediante un valor único —en este caso, las siglas del testimonio—. Además, para describir los testimonios en detalle, he incorporado en el esquema el módulo *msdescription* correspondiente al capítulo décimo de las *Guidelines* de la TEI. De esta manera se puede utilizar el elemento `<msDesc>` para identificar con precisión el documento y su contenido intelectual, describir su aspecto físico desde un punto de vista codicológico y, por último, incluir datos sobre la historia y procedencia del manuscrito. Asimismo, he utilizado un atributo `@type` dentro del elemento `<msDesc>` para distinguir entre manuscritos e impresos mediante los valores *manuscript* y *print*. En el caso del manuscrito Chacón, además, he utilizado el atributo *@subtype* para indicar que se trata del manuscrito base —el valor que he definido es *basetext*—; en otras palabras, aquel documento que, en principio, contiene las lecciones preferidas y que por ello ha sido utilizado para cotejar el resto de testimonios. 

La identificación del manuscrito se lleva a cabo con el elemento `<msIdentifier>`: 

    <msIdentifier>
                                    <country>España</country>
                                    <settlement>Madrid</settlement>
                                    <repository>Biblioteca Nacional de España</repository>
                                    <collection>Fondo reservado</collection>
                                    <idno type="cataloguenumber">Res/45, 1</idno>
                                    <msName>Manuscrito Chacón</msName>
    </msIdentifier>

En este elemento se etiqueta el país, la ciudad, la biblioteca o repositorio y la colección en donde se encuentra el manuscrito que se pretende describir. Con el elemento `<idno>` se codifica la signatura. En este caso se trata del primer volumen del documento Res/45. Si existe otra forma de identificar el manuscrito —por ejemplo, una signatura distinta en el pasado— es posible codificarla con el elemento `<altIdentifier>`. Por último, en el elemento `<msName>` se halla el  nombre o sobrenombre con el que se conoce el manuscrito.

A continuación, se sitúa el elemento `<head>` que contiene el título del manuscrito. Los documentos que transmiten la poesía de Góngora suelen ser manuscritos unitarios que contienen muchos poemas del mismo autor por lo que conviene identificar con precisión cuál es el texto realmente utilizado. Para ello, he utilizado los elementos `<msContents>` y `<msItem>`:

    <head>Obras de don Luis de Góngora reconocidas y comunicadas con él por
                                    don Antonio Chacón Ponce de León, señor de Polvoranca</head>
                                <msContents>
                                    <msItem>
                                        <locus from="193" to="260">193-260 páginas</locus>
                                        <title>Soledades</title>
                                    </msItem>
                                </msContents>

De esta manera sería posible identificar cada uno de los textos que contiene un documento mediante su localización exacta tomando como unidad las páginas o folios que ocupa y, en caso de que tenga uno, el título. Puesto que para realizar esta edición crítica digital solo he cotejado el texto de las *Soledades*, me ha parecido suficiente codificar la posición que ocupa en el manuscrito; no obstante, sería posible seguir añadiendo, uno tras otro, cada uno de los poemas contenidos en el manuscrito Chacón utilizando elementos `<msItem>`. Si el manuscrito codificado fuera un cancionero colectivo también se podrían identificar distintos autores y otros fenómenos como incipits, colofón, citas, notas, etc., así como la lengua de cada uno de los textos, si varía. 

La descripción física del documento está contenida en el elemento `<physDesc>`. Esta etiqueta puede contener una descripción en prosa, dentro de un elemento `<p>`, sobre la forma, el soporte, el material del documento, el estilo de la escritura, el diseño de la página, la encuadernación, etc. O bien otros elementos mucho más precisos que presentan la misma información de manera estructurada y, por tanto, procesable por el ordenador.
 
El primer elemento que se anida dentro de `<phyDesc>` es `<objectDesc>`. Este elemento agrupa etiquetas que se pueden dividir en dos grandes conjuntos: por un lado, la descripción del soporte físico; por el otro, la descripción del diseño de la página. Veamos, a continuación, qué elementos contienen estos datos:

    <objectDesc>
                                        <supportDesc material="parch">
                                            <support>
                                                <p>Soporte en <material>papel de vitela</material>.</p>
                                            </support>
                                            <extent>9 hojas, 324 páginas, 6 hojas<dimensions scope="all" type="leaf" unit="cm">
                                                    <dim type="format">4º</dim>
                                                    <height>26 cm</height>
                                                    <width>18 cm</width>
                                                </dimensions></extent>
                                            <foliation>
                                                <p>Paginación original en el margen superior.</p>
                                            </foliation>
                                            <condition>Excelente estado de conservación.</condition>
                                        </supportDesc>
                                        <layoutDesc>
                                            <layout columns="1">
                                                <p>Escrito en una columna dentro de una caja.</p>
                                            </layout>
                                        </layoutDesc>
                                    </objectDesc>

En esta propuesta de codificación he utilizado un atributo `@material` en el elemento `<supportDesc>` para indicar el material del documento. El valor, en el caso del manuscrito Chacón, es *parch* porque se trata de papel de vitela utilizada en manuscritos de lujo. Se trata de una excepción: en el resto de documentos, tanto manuscritos como impresos, el valor de este atributo siempre es paper. Pero el material del documento también se puede codificar de otra manera: dentro del elemento `<support>` el codificador puede poner una frase en prosa y etiquetar el material con la etiqueta `<material>`. 

A continuación, siguen los elementos `<extent>`, en donde se codifica el número folios o páginas del manuscrito y las dimensiones (formato, altura y ancho), y `<foliation>`, en donde se detalla la información sobre la foliación como en qué parte del folio aparece el número, qué esquema o qué aspecto tiene, incluso quién es el responsable de la numeración. 

El último de los elementos contenidos por `<supportDesc>` corresponde a `<condition>`. En este elemento se puede declarar la condición en que se encuentra el documento. Por lo general, se recomienda utilizar una descripción en prosa contenida en un elemento `<p>` como *Excelente estado de conservación* o *Buen estado*; pero también es posible indicar si hay folios rotos o manchas.

La descripción del diseño de la página se detalla en el elemento `<layoutDesc>`. Este elemento contiene, a su vez, un elemento `<layout>` que sirve para explicitar el número de columnas mediante un atributo `@column`. En esta propuesta de codificación de las *Soledades* todos los manuscritos cotejados fueron escritos en una columna por lo que el valor de este atributo es 1, con la excepción del manuscrito Rm-6709, que fue escrito en dos. En este elemento se pueden describir otros aspectos del diseño de la página como el número de líneas o el interlineado pero este tipo de datos no son imprescindibles para la finalidad de la edición. También puede utilizarse más de un elemento `<layout>` si el diseño de la página varía a lo largo del manuscrito.

Hasta aquí, pues, llega la descripción física del documento contenida en el elemento `<objectDesc>`. Tras este siguen varios elementos incluidos también en el elemento `<physDesc>` que dan cuenta del tipo de letra, las decoraciones y la encuadernación: 

    <handDesc hands="1">
                                        <p>Una sola mano. Bella escritura.</p>
                                    </handDesc>
                                    <decoDesc>
                                        <p>Con epígrafes ornamentales, finales de capitales y otros
                                            adornos a pluma, sobrios y de gran gusto.</p>
                                    </decoDesc>
                                    <bindingDesc>
                                        <p>Encuadernación del siglo XIX en marroquín verde con hierros y corte dorados.</p>
                                    </bindingDesc>

La descripción de estos aspectos del manuscrito Chacón no plantea ningún problema al tratarse de un objeto de lujo. Así, se puede utilizar el elemento `<handDesc>` para declarar que solo un copista fue el responsable del traslado del texto. Algo parecido ocurre con la decoración, que es bastante uniforme. La descripción física de otros manuscritos, sin embargo, requiere utilizar otros elementos más precisos: por un lado, si la copia fue realizada por más de un escribano, resulta muy recomendable utilizar el elemento `<handNote>` con los atributos `@xml:id` y `@scope` para identificar respectivamente la mano y la extensión de cada una de las intervenciones. Asimismo, existe un elemento `<decoNote>` ideado para describir de manera aislada y en detalle los distintos tipos de decoraciones que presenta el manuscrito; incluso sería posible listar las decoraciones en un elemento `<list>` compuesto por varios elementos `<item>` y `<locus>`.

Finalmente, el elemento `<bindingDesc>` contiene información sobre el tipo de encuadernación del documento. En mi propuesta de codificación he utilizado únicamente un elemento `<p>` para contener una frase descriptiva pero la TEI permite el uso de otros elementos como `<decoNote>` o `<condition>` si queremos ser más específicos y dar detalles sobre la decoración o el estado de conservación. También es posible codificar los textos inscritos en el lomo o en el tejuelo de la encuadernación con el elemento `<quote>`. Aunque existen más elementos TEI, en esta propuesta de codificación el elemento `<bindingDesc>` pone punto y final a la descripción del manuscrito en tanto que documento u objeto físico.

Hasta ahora se ha visto cómo identificar correctamente el manuscrito y cómo describir su contenido intelectual y algunos rasgos materiales del documento. La TEI también permite etiquetar información sobre la historia del testimonio: 

    <history>
                                    <origin>
                                        <p>Manuscrito creado en <origPlace>España</origPlace> por
                                            Antonio Chacón. La dedicatoria está fechada en <origDate when="1628-12-12">12 de diciembre de
                                            1628</origDate>.</p>
                                    </origin>
                                    <provenance>
                                        <p>Antonio Chacón se lo regaló al conde-duque de Olivares.</p>
                                    </provenance>
                                    <provenance>
                                        <p>En el siglo XIX perteneció a Pascual de Gayangos.</p>
                                    </provenance>
                                    <acquisition>
                                        <p>Adquirido por la Biblioteca Nacional de España en el siglo
                                            XIX.</p>
                                    </acquisition>
                                </history>

Tal y como se puede apreciar el elemento `<history>` agrupa información diversa sobre la historia del manuscrito: en primer lugar se sitúa el elemento `<origin>` en donde se puede mencionar el lugar de creación, con la etiqueta `<origPlace>`, y la fecha de creación, con `<origDate>`; esta segunda etiqueta puede contener atributos como `@when` si se conoce la fecha exacta o `@notBefore` y `@notAfter` para dar los términos *a quo* y *ad quem*. En segundo lugar, tenemos el elemento `<provenance>` que la TEI recomienda utilizar para identificar al propietario del manuscrito después de su creación y antes de que fuera adquirido por el repositorio actual en donde se encuentra. Por último, el elemento `<acquisition>` contiene información sobre el proceso de adquisición del manuscrito por parte de la biblioteca o repositorio en donde actualmente se encuentra; si no dispongo de datos sobre cómo se produjo la adquisición, he utilizado igualmente dicho elemento para dejar constancia de ello.

El último elemento que he utilizado para describir los manuscritos es `<additional>`. Con él se puede detallar información administrativa, algunos datos adicionales sobre la fuente y su disponibilidad, o bien, tal y como he preferido, establecer, por un lado, una conexión entre el manuscrito original y alguna reproducción electrónica accesible en internet; y, por el otro, incluir referencias bibliográficas en las que se estudia el documento en cuestión. Puesto que no todos los manuscritos han sido publicados en formato facsímil o han sido estudiados con detenimiento, este elemento no es obligatorio:

    <surrogates>
                                        <p>Facsímil disponible en la <bibl><ref target="http://bdh-rd.bne.es/viewer.vm?id=0000015414amppage=204"/><relatedItem type="original">
                                                    <ref target="#Ch">Biblioteca Digital Hispánica</ref>
                                                </relatedItem></bibl> y en la <bibl><ref target="http://www.cervantesvirtual.com/obra-visor/obras-de-d-luis-de-gongora-tomo-i-manuscrito--0/html/"/><relatedItem type="original">
                                                    <ref target="#Ch">Biblioteca Virtual Miguel de Cervantes</ref>
                                                </relatedItem></bibl>.</p>
                                    </surrogates>

En el caso del manuscrito Chacón, el facsímil se puede encontrar en dos portales electrónicos: por un lado, en la *Biblioteca Digital Hispánica*; por el otro, en la *Biblioteca Virtual Miguel de Cervantes*. Para codificar esta información he utilizado varios elementos siguiendo el modelo de codificación empleado en las *Bibliothèques Virtuelles Humanistes*: en primer lugar, el elemento que agrupa al resto, `<surrogates>`, que contiene información sobre cualquier tipo de representación del original; seguidamente, el elemento `<bibl>`, que utilizo para indicar que tanto la *Biblioteca Digital Hispánica* como la *Biblioteca Virtual Cervantes* son portales que publican contenido digitalizado; en tercer lugar, tenemos la etiqueta `<ref>` con la que, gracias al atributo `@target`, se puede apuntar hacia una URL o bien hacia el original, representado por la sigla del manuscrito; por último, `<relatedItem>` sirve para establecer la conexión entre la representación digital y el original.

En cuanto a las referencias bibliográficas, he utilizado el elemento `<listBibl>` para codificar un listado de publicaciones estructuradas mediante el elemento `<bibl>`. El procedimiento es bastante sencillo por lo que no hace falta detenerse en ello: 

    <bibl type="article">
                                            <author>
                                                <name>
                                                    <surname>Foulché-Delbosc</surname>,
                                                      <forename>Raymond</forename></name>
                                            </author>. <title level="a">Note sur trois manuscrits des
                                                oeuvres poétiques de Góngora</title>. <bibl type="monogr">
                                                <title level="j">Revue Hispanique</title>
                                                <biblScope unit="volume">7</biblScope> (<date when="1900">1900</date>): <biblScope from="454" to="504" unit="page">454-504</biblScope>.</bibl>
                                        </bibl>

La descripción de los impresos puede considerarse menos compleja en comparación con la que acabamos de ver. La estructura es similar es bastante similar: la codificación de los impresos se lleva a cabo utilizando un elemento `<witness>` con un atributo `@xml:id`, cuyo valor corresponde a la sigla con que he identificado el testimonio. El elemento `<msDesc>` con un atributo `@type`, cuyo valor es *print*, sirve para agrupar varias etiquetas: en primer lugar encontramos el elemento `<msIdentifier>`, que, como ya se vio, identifica el país, la ciudad, el repositorio y la signatura del documento. En los impresos no se utiliza el elemento `<head>` porque para identificar el título de la publicación se prefiere el elemento `<title>`, que se encuentra dentro del elemento `<imprint>`, del que daré más detalles más abajo. Seguidamente, pues, se sitúa el elemento `<msContents>` con el que se codifica el contenido intelectual del documento; para identificar con exactitud qué texto he utilizado y dónde se encuentra dentro del volumen, he utilizado el elemento `<msItem>`; en él se anidan `<locus>` y `<title>`. 
Tras esto viene la descripción de las cuatro dimensiones del documento físico: el soporte, el diseño de la página, la decoración y la encuadernación. Los elementos utilizados vuelven a ser `<physDesc>` y `<objectDesc>`.

La información relativa al tipo de fuente, a la decoración o a la encuadernación ha sido codificada en el caso de los testimonios impresos utilizando los elementos `<typeDesc>`, `<decoDesc>` y `<bindingDesc>` respectivamente. Por último, cuando las hubiere, se han etiquetado las representaciones electrónicas en forma de facsímiles publicadas por bibliotecas virtuales mediante el elemento `<additional>` tal y como se expuso con los manuscritos.

Hasta aquí las similitudes. A diferencia del manuscrito, en la codificación de impresos he utilizado el elemento `<biblStruct>` para identificar con precisión el lugar y la fecha de publicación, el impresor y el librero. De esta manera es posible estructurar los elementos bibliográficos necesarios para citar al documento de manera ordenada. Los datos contenidos por estos elementos corresponden a nombres de personas o de lugares por lo que he utilizado las etiquetas `<persName>` y `<placeName>` respectivamente. Veamos cómo se anidan todos estos elementos tomando el caso de la imprenta de la edición de Vicuña:

    <biblStruct>
                                <monogr>
                                    <author>
                                        <persName ref="http://viaf.org/viaf/12309145" role="author">
                                            <forename>Luis</forename>
                                            <nameLink>de</nameLink>
                                            <forename>Góngora</forename>
                                        </persName>
                                    </author>
                                    <editor>
                                        <persName ref="http://viaf.org/viaf/59488463" role="editor">
                                            <forename>Juan</forename>
                                            <surname>López</surname>
                                            <nameLink>de</nameLink>
                                            <surname>Vicuña</surname>
                                        </persName>
                                    </editor>
                                    <title type="short">Obras en verso del Homero español</title>
                                    <imprint>
                                        <pubPlace>
                                            <placeName type="settlement">Madrid</placeName>
                                        </pubPlace>
                                        <respStmt>
                                            <resp>Impreso por</resp>
                                            <persName ref="http://viaf.org/viaf/34398749" role="impresor">
                                                <forename>Ana</forename>
                                                <nameLink>de</nameLink>
                                                <surname>Carasa</surname>
                                            </persName>
                                        </respStmt>
                                        <respStmt>
                                            <resp>A costa de</resp>
                                            <persName role="librero">
                                                <forename>Alonso</forename>
                                                <surname>Pérez</surname>
                                            </persName>
                                        </respStmt>
                                        <date when="1627">1627</date>
                                    </imprint>
                                </monogr>
                            </biblStruct>

El elemento TEI que agrupa etiquetas relacionadas con la producción, distribución y —en el caso del Siglo de Oro— venta del libro es `<imprint>`. Con `<pubPlace>` se identifica el lugar de publicación: Madrid. Como se trata del nombre de un lugar, he decidido añadir el elemento `<placeName>` y clasificarlo como ciudad por medio de un atributo `@type`. Acto seguido aparecen los nombres de los responsables de la publicación que, en principio, debieran etiquetarse con el elemento `<publisher>`. Ahora bien, en lugar de una empresa u organización como ocurre actualmente, en el siglo XVII aún se podían distinguir dos figuras: el impresor y el librero. En este caso la TEI recomienda utilizar los elementos `<respStmt>` y `<resp>` en lugar de `<publisher>`. En mi propuesta de codificación he descrito la responsabilidad en prosa tal y como se encuentra en los libros del siglo XVII y seguidamente he puesto los nombres del impresor y del librero dentro de las etiquetas `<persName>`. Estas pueden contener dos atributos: `@role` para definir el rol —librero o impresor— y `@ref` para incluir algún enlace permanente, por ejemplo, al *Fichero de Autoridades Virtual Internacional* (VIAF). En el caso de la edición de Vicuña, Ana de Carasa, la viuda de Luis Sánchez, sí ha sido identificada por VIAF; por el contrario y hasta la fecha, el librero Alonso Pérez no ha sido localizado en esta base de datos. En cualquier caso, tras la declaración de responsabilidad sigue la fecha de publicación contenida en un elemento `<date>`. 

Para recapitular lo que se ha dicho sobre la primera parte del `<teiHeader>`, el elemento `<fileDesc>` contiene información bibliográfica sobre el archivo electrónico en el `<titleStmt>`, sobre el número de la edición en el `<editionStmt>`, sobre la publicación, distribución y disponibilidad del archivo electrónico en el `<publicationStmt>` y, por último, sobre las fuentes de las que deriva el texto en el `<sourceDesc>`. Este último elemento resulta de importancia capital en esta propuesta de codificación de las *Soledades* porque en él se describen los 22 testimonios cotejados —manuscritos e impresos— para crear el texto crítico. 

### Descripción de la codificación

En el elemento `<encodingDesc>` se detallan los principios editoriales y el modo de codificar el texto electrónico. Aunque no se trata de un elemento obligatorio, la TEI lo recomienda porque con él se establece la relación entre las fuentes manuscritas e impresas y el texto electrónico. La información contenida en este elemento puede presentarse por medio de párrafos en prosa o bien utilizando otros elementos más específicos. En mi propuesta de codificación de las *Soledades* he preferido documentar de manera precisa la finalidad de la codificación con `<projectDesc>`, las prácticas editoriales (corrección, normalización y citación) en el elemento `<editorialDecl>`, y qué elementos, atributos y valores se han utilizado por medio de `<refsDecl>`. Puesto que los dos últimos aspectos de la codificación se analizarán y comentarán en profundidad en apartados posteriores, aquí me limitaré a mostrar el elemento `<projectDesc>`: 

    <projectDesc>
                    <p>Esta edición ha sido realizada con fines académicos y didácticos siguiendo las recomendaciones de la TEI P5.</p>
                </projectDesc>

Además de los elementos mencionados, el `<encodingDesc>` de esta propuesta de codificación de las *Soledades* contiene un tipo de información específica de las ediciones críticas: el elemento `<variantEncoding>`. Con este elemento se declara en el encabezado TEI el método seguido para codificar variantes:

    <variantEncoding location="internal" method="parallel-segmentation"/>

Por último, no hay que olvidar que en el elemento `<encodingDesc>` también debe figurar el modo en que se codifican los glifos y caracteres especiales; para ello se utiliza la etiqueta `<charDecl>`. Daré más detalles sobre los caracteres no representados por UNICODE en el apartado dedicado a las abreviaturas.

### Perfil del texto

El elemento <profileDesc> agrupa varios elementos con los que se puede codificar información no bibliográfica. Se trata de un elemento opcional que en mi propuesta de codificación de las *Soledades* contiene un elemento importante para representar las fases de la cronología establecida en la tesis; me refiero al elemento `<creation>`. En el caso de las *Soledades* es posible identificar hasta nueve fases. Cada una de estas fases ha sido codificada usando el elemento `<change>` con tres atributos: por un lado, `@notAfter` y `@notBefore` sirven para identificar los términos *a quo* y *ad quem*; por el otro, `@xml:id` identifica con un valor único cada uno de estos elementos de tal modo que se puedan referenciar en el texto de las *Soledades*. Asimismo, en este elemento `<creation>` se puede documentar el lugar en el que tuvo lugar el proceso creativo mediante `<placeName>`:

    <creation>
                    <placeName type="settlement">Córdoba</placeName>
                    <listChange>
                        <change notAfter="1613-05" notBefore="1612-06" xml:id="FIRST">Primera
                            fase</change>
                        <change notAfter="1613-05" notBefore="1612-06" xml:id="SECOND">Segunda
                            fase</change>
                        <change notAfter="1613-05-11" notBefore="1613-05" xml:id="THIRD">Tercera
                            fase</change>
                        <change notAfter="1614-02" notBefore="1613-09" xml:id="FOURTH">Cuarta
                            fase</change>
                        <change notAfter="1614-12" notBefore="1614-02" xml:id="FIFTH">Quinta
                            fase</change>
                        <change notAfter="1616-05" notBefore="1615-01" xml:id="SIXTH">Sexta
                            fase</change>
                        <change notAfter="1617-04" notBefore="1616-05" xml:id="SEVENTH">Séptima
                            fase</change>
                    </listChange>
                    <placeName type="settlement">Madrid</placeName>
                    <listChange>
                        <change notAfter="1617-10" notBefore="1617-04" xml:id="EIGHTH">Octava fase</change>
                        <change notAfter="1626" notBefore="1617-10" xml:id="NINTH">Novena fase</change>
                    </listChange>
                </creation>

En el `<profileDesc>` también se puede identificar la lengua en que está escrito el texto. En este caso el único idioma utilizado es el castellano pero sería posible utilizar más de un elemento `<language>` dentro de `<langUsage>` si el archivo electrónico contuviera un conjunto de textos escritos en varios idiomas. La etiqueta `<language>` tiene un atributo `@ident` con el que se identifica la lengua en cuestión mediante un código Internet Engineering Task Force (IET); en el caso del castellano los códigos son *spa* o bien *es*. 

Finalmente, hay que tener en cuenta que el elemento `<profileDesc>` puede contener otros elementos que no aparecen en esta propuesta de codificación. Así, por ejemplo, si el texto fuera un artículo científico, se podría codificar un resumen del contenido en un elemento `<abstract>`, clasificar el texto siguiendo algún tipo de tesauro de amplia difusión gracias al elemento `<textclass>` o añadir palabras clave mediante el elemento `<keywords>` a fin de facilitar su recuperación por un gestor de contenidos. 

### Historial de revisión

La cuarta y última parte del encabezado TEI corresponde al `<revisionDesc>`. Se trata de un elemento opcional en el que se registran todos los cambios realizados en el texto. Cuando el proyecto es administrado mediante un control de versiones y en él intervienen varios investigadores, puede ser muy útil para gestionar de manera eficiente las modificaciones y deshacerlas en caso de necesidad. Los cambios se pueden anidar en un elemento `<listChange>` o bien, como en mi propuesta, directamente en elementos `<change>`; el atributo `@when` puede utilizarse para especificar el día exacto en que se produjo el cambio:

    <revisionDesc>
                <change when="2015-02-12" who="#ARC">Se empezó a codificar fases de escritura con
                        <gi>milestone</gi></change>
                <change when="2014-08-18" who="#ARC">Se empezó a codificar el <att>type</att> de los
                    elementos <gi>rdg</gi>.</change>
                <change when="2014-08-11" who="#ARC">Se empezó a codificar con <gi>persName</gi>,
                        <gi>placeName</gi> y <gi>geogName</gi> nombres de personas, lugares y accidentes
                    geográficos, respectivamente.</change>
                <change when="2014-08-07" who="#ARC">Se mejoró la descripción de los testimonios
                    contenidos en <gi>listWit</gi>.</change>
                <change when="2014-07-17" who="#ARC">Se empezó a codificar el aparato negativo de
                    variantes <gi>app</gi>.</change>
                <change when="2014-05-16" who="#ARC">Se empezó a codificar con <gi>choice</gi>
                    transcripción paleográfica y texto modernizado.</change>
                <change when="2014-05-15" who="#ARC">Se modificó los valores de los atributos
                        <att>xml:id</att> de los versos.</change>
                <change when="2014-05-30" who="#ARC">Se añadió los elementos <gi>choice</gi>, modificó
                    las etiquetas <gi>sic</gi>, <gi>abbr</gi> y <gi>expan</gi> y empezó a codificar los
                    destacados con <gi>hi</gi>.</change>
                <change when="2014-05-07" who="#ARC">Se corrigió la transcripción.</change>
                <change when="2013-11-02" who="#ARC">Se identificó con atributos <att>xml:id</att> los
                    versos.</change>
                <change when="2013-10-28" who="#ARC">Se identificó con atributos dos estructuras del
                    texto: páginación del manuscrito y división.</change>
                <change when="2013-10-26" who="#ARC">Se mejoró el encabezamiento.</change>
                <change when="2013-10-16" who="#ARC">Se revisó los <gi>lg</gi> y la transcripción
                    paleográfica.</change>
                <change when="2013-10-12" who="#ARC">Se mejoró el encabezamiento.</change>
                <change when="2013-10-07" who="#ARC">Se empezó a codificar la transcripción
                    paleográfica.</change>
            </revisionDesc>

En cuanto a la responsabilidad de los cambios, esta se puede describir mediante un atributo `@who` contenido en `<change>`. El valor de este atributo remite al atributo `@xml:id` contenido en el elemento `<respStmt>` del `<titleStmt>`. Tal y como se aprecia en el código insertado es posible referirse a un determinado elemento o atributo mediante las etiquetas `<gi>` y `<att>`.   

## Título, partes y subtítulos 

Tras detallar cómo se ha codificado la información contenida en el `<teiHeader>`, hay que pasar a comentar la segunda parte que todo documento TEI debe tener: el elemento `<text>` en donde, como es lógico, debe situarse un texto. Este elemento `<text>` contiene un atributo `@xml:lang` con valor *spa* que sirve para definir la lengua en que está escrito el texto. El texto de las *Soledades* puede ponerse directamente en un elemento `<body>` porque en esta edición no se pretende dar acceso ni procesar preliminares ni apéndices; así, pues, no es necesario utilizar las etiquetas `<front>` y `<back>`.

El elemento `<body>` contiene el título de la obra, que se codifica con el elemento `<head>`, y el texto en sí. Aunque es un solo poema, este texto se divide en tres partes: Dedicatoria, *Soledad primera* y *Soledad segunda*. La TEI  recomienda tratar las partes lógicas del texto de manera neutra mediante un elemento `<div>`:

    <text xml:lang="spa">
    <body>
    <head type="main">
    <div n="0" type="part" xml:id="p-0">
    <div n="1" type="part" xml:id="p-1">
    <div n="2" type="part" xml:id="p-2">
    </body>
    </text>

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

## Fases de la cronología

Las fases de la cronología establecida en la tesis se documentan en el encabezado TEI mediante el elemento `<creation>`. Ahora bien, también se puede representar el inicio de cada una de estas fases en el mismo texto. Para ello he utilizado otro elemento vacío con el fin de respetar la sintaxis arbórea del XML. El elemento vacío en cuestión es `<milestone/>`. Según la TEI, este elemento «marca un punto de frontera que separa cada tipo de sección de un texto, indicado por cambios en el sistema de referencia estándar, donde la sección no es representada por un elemento estructural». A diferencia de `<pb/>`, que se restringe para la representación de saltos de página, este elemento no tiene una carga semántica pues se puede utilizar para representar cualquier tipo de fenómeno. En el texto de las *Soledades*, pues, he marcado el inicio de cada fase justo antes de los elementos `<lg>` o `<l>`: 

    <milestone type="stage" change="#THIRD"/>
                    <lg xml:id="g-36">
                        <l rend="indent" xml:id="v-0920">
                            <app>
                                <lem><choice>
                                        <orig>Leuantadas</orig>
                                        <reg>Levantadas</reg>
                                    </choice> las <app>
                                        <lem>mesas</lem>
                                        <rdg type="error" wit="#ho33">musas</rdg>
                                    </app>, <app>
                                        <lem>al</lem>
                                        <rdg type="error" wit="#O">el</rdg>
                                    </app> canoro</lem>
                                <rdg wit="#Rm"/>
                            </app>
                        </l>

En este caso el elemento `<milestone/>` aparece antes del elemento `<lg>` para indicar que los versos que van desde este punto hasta el siguiente elemento `<milestone/>` fueron redactados entre principios de mayo de 1613 y el 11 de mayo de 1613. Esta información, en realidad, no está presente en el elemento `<milestone/>` sino que se recupera mediante el atributo `@change` cuyo valor apunta hacia el atributo `@xml:id` del elemento `<change>` definido en el encabezado TEI. Además de este atributo `@change`, he utilizado `@type` para clasificar los elementos; de esta manera, puedo distinguir este uso del elemento `<milestone/>` del que se explicará en el apartado siguiente.
 
En la interfaz web se podría explotar la codificación de las fases de distintas maneras: por un lado, se puede crear otro menú de navegación en el que cuando el usuario clicase accediera a la parte del texto en el que se inicia una nueva fase; por el otro, sería posible señalar las fases de manera visual, por ejemplo, con un destacado (una barra horizontal de color distinto con el número de la fase y las fechas de la cronología) activado por el usuario interesado en conocer el proceso creativo y cómo se desarrolló la redacción del poema. 
    
## Discursos y diálogos

Las *Soledades* es una larga silva dividida en tres partes; en ella, además, pueden distinguirse con claridad varios discursos en los que la voz poética cede la palabra a alguno de los personajes. La TEI recomienda identificar estos discursos con un elemento llamado `<sp>` que forma parte del módulo *core* y que puede utilizarse tanto en texto teatrales como en textos poéticos o en prosa.

Ahora bien, la codificación de los grupos de versos y la de los discursos se yuxtapone por lo que he debido privilegiar la primera y buscar una alternativa para la segunda. Así, me ha parecido adecuado utilizar el elemento `<milestone/>` para representar el inicio de los discursos; por ejemplo, el primer discurso corresponde al apóstrofe que el peregrino dirige a los cabreros que lo acogen y que en el manuscrito Chacón, por cierto, se introduce sin comillas. En mi propuesta de codificación XML/TEI, pues, se ha indicado el inicio del discurso de la siguiente manera:

    <milestone type="speech" xml:id="d-1-peregrino"/>
                    <lg xml:id="g-06">
                        <l rend="indent" xml:id="v-0131">
                            <choice>
                                <orig/>
                                <reg>«</reg>
                            </choice>
                            <choice>
                                <orig/>
                                <reg>¡</reg>
                            </choice>
                            <choice>
                                <orig>O</orig>
                                <reg>Oh</reg>
                            </choice>
                            <choice>
                                <orig>bienauenturado</orig>
                                <reg>bienaventurado</reg>
                            </choice>
                        </l>

Como se puede ver, el elemento <milestone/> contiene dos atributos: `@type` y `@xml:id`. El valor del primero es *speech* en oposición a *stage*; el valor del segundo se define de la siguiente manera: *d* (*discurso*), guion, número de discurso, guion y personaje. En total pueden distinguirse siete discursos a lo largo de las *Soledades*: el apóstrofe del peregrino al bienaventurado albergue, el discurso contra las navegaciones proferido por cabrero, el célebre epitalamio en el que se convoca al dios Himeneo por parte de un coro de jóvenes, el canto de la bárbara musa, el métrico llanto del peregrino, el relato sobre la caza marina del isleño y el canto amebeo de los pescadores Lícidas y Micón. 

Por supuesto, estos discursos no son los únicos pasajes en los que la voz poética cede la palabra a los personajes. Aunque son pocos y breves, también se pueden encontrar algunos diálogos. Al iniciar la codificación XML/TEI de las *Soledades* quise representar estos intercambios mediante el elemento <said> pero, nuevamente, me encontré ante un tipo de fenómeno textual que se yuxtapone a la representación de los grupos de versos y de los versos porque la mayoría de diálogos ocupan más de un verso de tal modo que se produce un conflicto entre el cierre del elemento `<l>` y la continuidad del elemento `<said>`. La única solución que he encontrado consiste en anidar un elemento `<said>` dentro de `<l>` en cada uno de los versos. Ahora bien, esta estrategia supone falsear la verdadera naturaleza del diálogo; y, en consecuencia, me ha parecido más acertado renunciar a representar este fenómeno textual que, por lo demás, no resulta imprescindible para el usuario teniendo en cuenta que ya se codifican muchos aspectos del poema.

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

#### Destacados

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

#### Abreviaturas y expansiones

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

Un comentario más extenso merece la codificación de caracteres con tilde abreviativa que no son contemplados por Unicode; me refiero, por un lado, a la *y* con virgulilla que aparece en Chacón en la Soledad primera tras el canto de la bárbara musa; y, por el otro, a una *q*, también con virgulilla, que se encuentra en la nota final del manuscrito Chacón. En esta nota el copista señala los versos que Góngora compuso a su petición mediante un párrafo en prosa que contiene seis abreviaturas. Estas han sido codificadas bien como en los ejemplos precedentes, bien añadiendo el elemento `<g>` para marcar los glifos:

   

     <choice>
                                    <orig><abbr><g ref="#q1">q</g></abbr></orig>
                                    <reg><expan>que</expan></reg>
                                </choice> pasase adelante con las <title>Soledades</title><choice>
                                    <orig>;</orig>
                                    <reg>,</reg>
                                </choice>
                                <choice>
                                    <orig><abbr>aun<g ref="#q1">q</g></abbr></orig>
                                    <reg><expan>aunque</expan></reg>
                                </choice> determinado <choice>
                                    <orig>ia</orig>
                                    <reg>ya</reg>
                                </choice>

Además de utilizar el elemento `<g>` en el cuerpo del texto, es necesario describir los glifos en el elemento `<encodingDesc>` del encabezado; más específicamente este tipo de información se documenta en el elemento `<charDecl>`:

    <charDecl>
                    <glyph xml:id="y1">
                        <glyphName>LATIN SMALL LETTER Y WITH TILDE</glyphName>
                        <mapping type="paleographic">y</mapping>
                        <mapping type="modernized">y</mapping>
                    </glyph>
                    <glyph xml:id="q1">
                        <glyphName>LATIN SMALL LETTER Q WITH TILDE</glyphName>
                        <mapping type="paleographic">q</mapping>
                        <mapping type="modernized">q</mapping>
                    </glyph>
                </charDecl>

La conexión entre los elementos `<g>` y `<glyph>` se lleva a cabo mediante los valores de los atributos `@ref` y `@xml:id`. Por lo demás, debo advertir que en el elemento `<glyph>` se debe describir el glifo según las convenciones Unicode y que en el elemento `<mapping>` se identifica el carácter estándar que sustituye al glifo. 

Además de estos glifos, la nota contiene una abreviatura que merece ser explicada: el nombre propio del compilador y amigo de Góngora aparece con una o volada seguida de punto. La estrategia adoptada ha consistido en utilizar un elemento `<hi>` con un atributo `@rend` para codificar la posición de dicha letra: 

    <choice>
                                    <orig><abbr>Ant<hi rend="superscript">o</hi>.</abbr></orig>
                                    <reg><expan>Antonio</expan></reg>
                                </choice>

Por último, conviene tener en cuenta que la TEI define otros dos elementos que se podrían utilizar para marcar la secuencia de letras añadidas en la expansión o bien las grafías presentes en la abreviatura que han sido suprimidas en la forma desarrollada. Son respectivamente los elementos `<ex>` y `<am>`. En esta propuesta de codificación, sin embargo, no se ha considerado necesario el uso de estas etiquetas porque el lector puede comparar ambas formas y distinguir con claridad cuál es la intervención del editor sin añadir un nuevo elemento; sin embargo, no se descarta que en el futuro se incorporen siguiendo el consejo de la red CHARTA (Isasi *et al*., 2014). 

#### Errores y correcciones

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

### Errores
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

###Extensión

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

##Fiabilidad y palabras suplidas

Aunque el estado de los documentos cotejados es en general bueno, en ocasiones la grafía es poco clara y cuesta reconocer qué transcribió el copista, especialmente cuando hay una intervención editorial con tachón. Además, en tres ocasiones me he permitido conjeturar una lección de la versión primitiva.

La representación del grado de fiabilidad y de las conjeturas se puede representar con lenguaje de marcado de distintas maneras. La TEI define varios elementos como `<certainty>` y `<unclear>` para codificar, respectivamente, el nivel de certeza asociado a un etiquetado y los pasajes difíciles de leer. Sin embargo, para economizar el número de elementos, en esta propuesta de codificación he utilizado el atributo `@cert` para indicar el grado de certeza de ciertas lecciones y el elemento `<supplied>` para codificar aquellas palabras que he suplido porque en el manuscrito no se pueden leer, es decir, lo que se podría identificar como una conjetura.

En el primer caso, el atributo `@cert` aparece en el elemento `<rdg>`: 

    <l xml:id="v-0063">(<app>
                                <lem>
                                    <choice>
                                        <orig>Alga todo</orig>
                                        <reg>alga todo</reg>
                                    </choice></lem>
                                <rdg cert="low" type="error" wit="#N">alga
                                    <del rend="strikethrough">do</del> todo</rdg>
                                <rdg type="error" wit="#S">algado</rdg>
                            </app><choice>
                                <orig>,</orig>
                                <reg/>
                            </choice>
                            <choice>
                                <orig>i</orig>
                                <reg>y</reg>
                            </choice>
                            <app>
                                <lem>espumas</lem>
                                <rdg cert="low" type="error" wit="#S">espuma</rdg>
                                <rdg type="error" wit="#Rl">espuma</rdg>
                            </app>)</l>

En la codificación de este verso se puede ver claramente el uso del atributo `@cert`. En la primera entrada del aparato el testimonio S transmite *algado*; el copista del testimonio N tachó la terminación de la lección original que resulta, por este motivo, poco legible; pero es bastante probable que N leyera originalmente *algado* porque estos dos manuscritos están emparentados. El atributo `@cert` con valor *low* ha sido utilizado para representar este tipo de lecciones en las que el grado de certeza es menor de lo habitual. Ahora bien, en ocasiones no es posible reconstruir la lección, por lo que es necesario dejar constancia de ello mediante un elemento `<gap/>`, es decir, un elemento vacío con el que se representa una omisión.

Un ejemplo de cómo he representado palabras suplidas ya se vio más arriba al hablar de los títulos. Las palabras *Dedicatoria* y *Soledad*, que aparecen en los títulos de las dos primeras partes del poema, fueron codificadas con el elemento `<supplied>` porque no se encuentran en Chacón. En esta codificación el número total de elementos `<supplied>` utilizados asciende a 29: su uso, por tanto, es escaso. En la mayoría de ocasiones se encuentran en el aparato de variantes y se producen porque la intervención del copista (por lo general, la tachadura) impide leer con claridad la lección que se pretende enmendar. Sin embargo, en la versión primitiva de los versos 78 de la *Soledad primera* y 266 y 451 de la *Soledad segunda* he utilizado el elemento `<supplied>` porque la grafía no es legible. Así, la codificación del verso 266 tiene el aspecto siguiente:  

    <l xml:id="v-1394">
                            <app>
                                <lem><choice>
                                        <orig>Tosco</orig>
                                        <reg>tosco</reg>
                                    </choice> le <choice>
                                        <orig>à</orig>
                                        <reg>ha</reg>
                                    </choice> encordonado, pero <app>
                                        <lem>bello</lem>
                                        <rdg type="error" wit="#N">b<subst>
                                                <del rend="strikethrough"><gap reason="cancellation"/></del>
                                                <add place="above">e</add>
                                            </subst>llo</rdg>
                                    </app>.</lem>
                                <rdg wit="#Rm #Rl"/>
                                <rdg type="prim" wit="#Pr">que desde el mar pudiera <supplied reason="illegible">negar</supplied> bello.</rdg>
                            </app>
                        </l>

Además de ejemplificar el uso del elemento <gap/>, en este verso es perceptible la codificación de las palabras suplidas. Como ya se explicó en el apartado 4.2., las palabras razón, negar y cielo de los versos 78, 266 y 451 son tres hipótesis o conjeturas que propongo. He utilizado el elemento <supplied> y no el atributo @cert porque el primero se puede utilizar para marcar una sola palabra mientras que el atributo @cert atañe a todo el contenido del elemento. Es decir, el nivel de detalle del elemento <supplied> es mayor. Como en la tradición impresa, las palabras codificadas con este elemento se podrían presentar en la web entre corchetes cuadrados para indicar que la lección ha sido suplida.  

##Anotación 

Aunque el objetivo principal de esta edición de las *Soledades* ha sido establecer el texto de las dos versiones y representarlos con lenguaje de marco descriptivo, el resultado contiene algunas notas de carácter ecdótico. En primer lugar, como se sabe, el texto base contiene una nota en el verso 937 de la *Soledad segunda* en los que el escriba manifiesta, por un lado, que el poema está inacabado; y, por el otro, que los versos que siguen hasta el final de la página fueron escritos a petición de Chacón.
 
Para codificar esta nota que aparece en la fuente principal de la que deriva el texto he utilizado el elemento `<note>`; este elemento se sitúa inmediatamente antes de la etiqueta de cierre del elemento `<l>` del verso 937 y contiene dos atributos: `@place` con valor *bottom* para indicar que la nota aparece en el manuscrito al final de la página y `@type` con valor *scribal* para clasificarla.

Además de la nota de Chacón, en esta propuesta se encuentran otras notas editoriales de las cuales soy responsable. Así, he utilizado el elemento `<note>` para ofrecer las variantes de autor que descubrió Alonso en el manuscrito 3959 de la BNE y que, hasta el momento, no he cotejado. En lugar de codificar dichas variantes en una entrada de aparato, me ha parecido más oportuno proporcionarlas mediante la anotación de tal modo que el lector pueda reconstruir la versión primitiva pero dejando claro que no he sido responsable del cotejo. El elemento `<note>` vuelve a insertarse antes de la etiqueta de cierre del elemento `<l>` y en este caso contiene dos atributos: 

    <l rend="indent" xml:id="v-1740">[VERSO] <note resp="#ARC" type="editorial">En el texto de la versión primitiva reconstruido en 1936, Alonso imprimió <mentioned rend="italic">Invidia revocó, si no fue celo</mentioned> y señaló que esta variante se encuentra en el manuscrito 3959 de la Biblioteca Nacional de España; no se encuentra en ninguno de los testimonios cotejados para esta edición.</note></l>

Por un lado, con el atributo @resp declaro quién es el responsable de la nota enlazando el valor del atributo @xml:id del elemento <respStmt> del encabezado TEI; por el otro, con el atributo @type clasifico la nota puesto que el valor editorial se contrapone al valor scribal de la nota de Chacón. 
Aunque he intentado representar de manera estructurada todas las variantes que he encontrado, cuando los copistas transcriben por error un verso o parte de un verso de manera independiente, en lugar de codificarlo con un elemento <rdg> he preferido comentar este fenómeno en nota. En total esto sucede en 37 ocasiones. Ahora bien, no he utilizado el elemento <note> sino <witDetail> porque puede contener un atributo @wit con el que indicar en qué testimonio se transmite el error de copia. Veamos un ejemplo:
                

    <l xml:id="v-0054">
                        <app>
                            <lem/>
                            <rdg type="error" wit="#Br">y</rdg>
                        </app><choice>
                            <orig>Piadoso</orig>
                            <reg>piadoso</reg>
                        </choice> miembro roto, <witDetail wit="#Pr">El testimonio Pr transmite debajo <mentioned rend="italic">delfín no fue pequeño</mentioned>; la primera mano debió de tacharlo al darse cuenta del error y siguió con la copia del verso íntegro.</witDetail></l>

En este caso, tras el verso 17, la primera mano del testimonio Pr copió delfín no fue pequeño que es parte del verso 18; esta misma mano tachó y copió debajo el verso 18 íntegro. Codificar este error supondría incluir un nuevo elemento <l> que contendría un elemento <app> con un <lem> vacío y un <rdg> con la variante; por razones de economía, la alternativa que propongo es explicar el fenómeno con una nota en lugar de estructurar la información con elementos. 

##Nombres propios

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

Puesto que la metodología desarrollada para codificar nombres de lugares y de accidentes geográficos es la misma no es necesario detenerse con otro ejemplo. Lo que sí vale la pena señalar es que en esta propuesta de codificación los nombres propios de personas, lugares y accidentes geográficos se documentan en el encabezado TEI para automatizar la creación de índices mediante transformaciones XSLT. Para ello es necesario utilizar el atributo `@ref` en los elementos `<persName>`, `<placeName>` y `<geogName>`. El valor de este atributo apunta hacia el valor definido en el atributo `@xml:id` del elemento `<person> situado en el encabezado TEI: 

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




Encabezado
==========
El encabezado TEI es el lugar del archivo XML en el que se recogen los metadatos, es decir, toda aquella información que permite identificar al documento y declarar cuál es la fuente de la que deriva el texto. En esta parte del archivo, además, se pueden registrar otro tipo de información suplementaria como los criterios editoriales, el tipo de texto o datos relativos a la creación de la obra desde un punto de vista intelectual. 

Descripción del archivo
-----------------------
El elemento `<fileDesc>` contiene una serie de elementos con información bibliográfica sobre el archivo electrónico necesaria para su citación y catalogación. En primer lugar, se halla el elemento `<titleStmt>` en donde se sitúa el título de la obra electrónica, el autor del texto codificado y quién es el responsable de la edición, entre otros datos. En mi caso he decidido utilizar el nombre del poema en el título principal y, a continuación, añadir un subtítulo que especifica, distingue del resto de ediciones y aclara cuál es su objetivo y finalidad. La TEI permite que haya más de un título, completo o abreviado, en uno o en varios idiomas. Por lo demás, si la obra electrónica deriva de una impresa, no se recomienda ponerle el mismo título sino distinguirla de alguna manera.
 
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

Tras el título, pues, sigue el elemento `<author>`, el elemento `<respStmt>` y el elemento `<funder>`. El primero de estos contiene el nombre del autor, cuyos nombre de pila y apellidos pueden hacerse explícitos y estructurarse con otras etiquetas si así se desea. Seguidamente se puede hallar el elemento `<editor>`, en donde se identifica al creador del archivo electrónico. También es posible utilizar la etiqueta `<respStmt>` para detallar este tipo de información. En mi propuesta de codificación he preferido esta segunda opción para así poder declarar que soy responsable tanto de la edición del texto como de la codificación. Este elemento contiene un atributo `@xml:id` con valor `ARC`: de esta manera, es posible identificar y referenciar en el resto del archivo XML mis intervenciones. Por último, he creído oportuno utilizar la etiqueta `<funder>` para declarar que tanto la tesis como la codificación XML/TEI de las *Soledades* han sido financiadas por el Ministerio de Economía y Competitividad como miembro del proyecto Todo Góngora II.

Dentro del elemento `<fileDesc>`, se localiza toda una serie de elementos que aportan información complementaria sobre el número de edición, la extensión del archivo y quién es el responsable de la publicación: por un lado, con el elemento `<edition>`, contenido en `<editionStmt>`, doy el número de la edición. En este caso se trata de una primera edición; si en el futuro se publicara este archivo en internet y otro investigador lo modificara o lo reutilizara con otros fines, sería posible identificar el número de edición y añadir un elemento `<respStmt>` en el que se especificaría cuál ha sido la aportación del nuevo editor, así como su nombre y apellidos. El elemento `<editionStmt>` no es obligatorio pero la TEI lo recomienda. Por el otro, el elemento `<extent>` sirve para declarar el tamaño de archivo en alguna medida estándar. En el caso de las Soledades el archivo sobrepasa ligeramente los 1,94 megabytes. La TEI no establece una unidad de medida y, en consecuencia, es posible expresar un mismo tamaño de distintas maneras, incluso con el número de palabras; este elemento también es opcional:

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
                        <licence target="http://creativecommons.org/licenses/by-nc/3.0/deed.es">Publicado bajo una licencia Creative Commons Atribución-NoComercial
                            3.0</licence>
                    </availability>
                </publicationStmt>

En mi propuesta de codificación XML/TEI de las Soledades he identificado como `<publisher>` a la Universitat Pompeu Fabra ya que la codificación se llevó a cabo como parte de una investigación vinculada al Departament d’Humanitats. Además, hay que tener en cuenta que, para garantizar su preservación, la edición debería formar parte de la infraestructura digital universitaria y que buscadores como Google valoran positivamente, entre otros aspectos, la antigüedad del servidor para posicionar los resultados. En cuanto al elemento `<distributor>` he identificado al grupo de investigación Todo Góngora II, que sería quien validara el texto editado. Dicho en otras palabras, con el primer elemento se hace referencia a quien publica el ítem desde un punto de vista bibliográfico; con el segundo, al responsable de la distribución del texto. Con todo, hay que reconocer que la distinción entre `<publisher>` y `<distributor>` no me parece del todo clara tal y como aparece actualmente en las Recomendaciones de la TEI. 

El elemento `<pubPlace>` contiene el nombre del lugar de publicación. Como el `<publisher>` sería la Universitat Pompeu Fabra, he decidido describir la dirección postal en donde se encuentra el campus de Ciutadella mediante una serie de etiquetas creadas para ello; no me detendré en ellas porque el uso es evidente. Más detalles precisa el elemento `<availability>` con el que se da información sobre la disponibilidad del texto. Es posible indicar la licencia de publicación y uso de dos maneras distintas: mediante un párrafo en prosa contenido en un elemento `<p>` o bien mediante el elemento `<license>`. Tal y como he realizado en esta propuesta de codificación, en el segundo caso se puede utilizar un atributo `@target` que apunte hacia una URL en donde se explican los términos de la licencia. Así, he elegido una licencia Creative Commons Atribución-NoComercial 3.0. En consecuencia, doy permiso, por un lado, para copiar y redistribuir el material en cualquier medio o formato; y, por el otro, para adaptar, remezclar, transformar y crear a partir del material. Esta licencia se aplica únicamente si se cumplen dos condiciones: reconocimiento de la autoría y uso del material con fines no comerciales. 

Dentro de `<publicationStmt>` pueden hallarse otras etiquetas relevantes como `<date>`. En mi propuesta de codificación, puesto que de momento permanecerá inédita, he preferido no utilizar este elemento porque su uso se restringe a la fecha de publicación.

El último elemento que contiene el `<fileDesc>` corresponde al `<sourceDesc>`. Se trata de un elemento obligatorio y en el caso de una edición crítica digital es el más importante porque se utiliza para registrar las fuentes de las que deriva el archivo electrónico. Si el texto no deriva de ningún documento, es necesario declarar esto con una frase como Documento nacido digital dentro de un elemento `<p>`. 

Para establecer el texto de las *Soledades* he utilizado 22 documentos: 17 manuscritos y 5 impresos. La relación de estos documentos se encuentra en el encabezado TEI en el elemento `<listWit>` que, a su vez, contiene cada uno de los elementos `<witness>` en donde se identifican y describen los testimonios utilizados. Este elemento contiene un atributo `@xml:id` que permite identificar cada documento mediante un valor único —en este caso, las siglas del testimonio—. Por razones de espacio y porque todos siguen el mismo patrón, no voy a comentar qué información he dado de los 22 testimonios sino únicamente de un manuscrito y de un impreso. Empezaré por la descripción del manuscrito Chacón; muestro, primero, cómo he descrito el documento mediante el elemento `<witness>` y luego pasaré a comentar por separado los grupos de elementos utilizados: 

    <witness xml:id="Ch">
                            <msDesc subtype="basetext" type="manuscript">
                                <msIdentifier>
                                    <country>España</country>
                                    <settlement>Madrid</settlement>
                                    <repository>Biblioteca Nacional de España</repository>
                                    <collection>Fondo reservado</collection>
                                    <idno type="cataloguenumber">Res/45, 1</idno>
                                    <msName>Manuscrito Chacón</msName>
                                </msIdentifier>
                                <head>Obras de don Luis de Góngora reconocidas y comunicadas con él por
                                    don Antonio Chacón Ponce de León, señor de Polvoranca</head>
                                <msContents>
                                    <msItem>
                                        <locus from="193" to="260">193-260 páginas</locus>
                                        <title>Soledades</title>
                                    </msItem>
                                </msContents>
                                <physDesc>
                                    <objectDesc>
                                        <supportDesc material="parch">
                                            <support>
                                                <p>Soporte en <material>papel de vitela</material></p>
                                            </support>
                                            <extent>9 hojas, 324 páginas, 6 hojas<dimensions scope="all" type="leaf" unit="cm">
                                                    <dim type="format">4º</dim>
                                                    <height>26 cm</height>
                                                    <width>18 cm</width>
                                                </dimensions></extent>
                                            <foliation>
                                                <p>Paginación original en el margen superior.</p>
                                            </foliation>
                                            <condition>Excelente estado de conservación</condition>
                                        </supportDesc>
                                        <layoutDesc>
                                            <layout columns="1">
                                                <p>Escrito en una columna dentro de una caja.</p>
                                            </layout>
                                        </layoutDesc>
                                    </objectDesc>
                                    <handDesc hands="1">
                                        <p>Una sola mano. Bella escritura.</p>
                                    </handDesc>
                                    <decoDesc>
                                        <p>Con epígrafes ornamentales, finales de capitales y otros
                                            adornos a pluma, sobrios y de gran gusto.</p>
                                    </decoDesc>
                                    <bindingDesc>
                                        <p>Encuadernación del siglo XIX en marroquín verde con hierros y
                                            corte dorados.</p>
                                    </bindingDesc>
                                </physDesc>
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
                                <additional>
                                    <surrogates>
                                        <p>Facsímil disponible en la <bibl><ref target="http://bdh-rd.bne.es/viewer.vm?id=0000015414amppage=204"/><relatedItem type="original">
                                                    <ref target="#Ch">Biblioteca Digital Hispánica</ref>
                                                </relatedItem></bibl> y en la <bibl><ref target="http://www.cervantesvirtual.com/obra-visor/obras-de-d-luis-de-gongora-tomo-i-manuscrito--0/html/"/><relatedItem type="original">
                                                    <ref target="#Ch">Biblioteca Virtual Miguel de
                                                      Cervantes</ref>
                                                </relatedItem></bibl>.</p>
                                    </surrogates>
                                    <listBibl>
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
                                        <bibl type="bookSection">
                                            <author>
                                                <name>
                                                    <surname>Lawrance</surname>,
                                                      <forename>Jeremy</forename></name>
                                            </author>. <title level="s">Las <title>Obras de don Luis de
                                                    Góngora</title> y el conde-duque: mecenazgo,
                                                polémica literaria y publicidad en la España
                                                barroca</title>.</bibl>
                                        <biblStruct>
                                            <monogr>
                                                <title level="m">Poder y saber. Bibliotecas y
                                                    bibliofilia en la época del conde-duque de
                                                    Olivares</title>
                                                <editor>
                                                    <name><surname>Noble</surname><surname>Wood</surname>,
                                                      <forename>Oliver</forename></name>
                                                </editor>
                                                <editor>
                                                    <name><surname>Roe</surname>,
                                                      <forename>Jeremy</forename></name>
                                                </editor>
                                                <editor>
                                                    <name><surname>Lawrance</surname>,
                                                      <forename>Jeremy</forename></name>
                                                </editor>
                                                <imprint>
                                                    <publisher>Centro de Estudios Europa
                                                      Hispánica</publisher>
                                                    <pubPlace>Madrid</pubPlace>
                                                    <date when="2011">2011</date>
                                                </imprint>
                                                <biblScope from="249" to="260" unit="page">249-260</biblScope>
                                            </monogr>
                                        </biblStruct>
                                        <biblStruct>
                                            <monogr>
                                                <title>Obras de don Luis de Góngora (Manuscrito
                                                    Chacón)</title>
                                                <imprint>
                                                    <publisher>Caja de Ahorros</publisher>
                                                    <pubPlace>Ronda</pubPlace>
                                                    <date when="1990">1990</date>
                                                </imprint>
                                                <biblScope unit="volume">3</biblScope>
                                            </monogr>
                                        </biblStruct>
                                        <bibl type="bookSection">
                                            <author>
                                                <name>
                                                    <surname>Paz</surname>, <forename>Amelia</forename>
                                                    <nameLink>de</nameLink></name>
                                            </author>. <title level="s">Góngora en entredicho, o la
                                                superstición del codex optimus</title>.</bibl>
                                        <biblStruct>
                                            <monogr>
                                                <title level="m">El poeta Soledad</title>
                                                <editor>
                                                    <name><surname>López</surname>
                                                        <surname>Bueno</surname>,
                                                      <forename>Begoña</forename></name>
                                                </editor>
                                                <imprint>
                                                    <publisher>Prensas Universitarias de
                                                      Zaragoza</publisher>
                                                    <pubPlace>Zaragoza</pubPlace>
                                                    <date when="2011">2011</date>
                                                </imprint>
                                                <biblScope from="57" to="81" unit="page">57-81</biblScope>
                                            </monogr>
                                        </biblStruct>
                                    </listBibl>
                                </additional>
                            </msDesc>
                        </witness>

Si el texto codificado es una digitalización de un solo documento (por ejemplo, una edición impresa publicada en época moderna) el elemento <sourceDesc> puede contener simplemente un elemento <bibl> o bien, si queremos estructurar la información, un elemento <biblStruct>. En ambos elementos se indicaría el autor, el título, el lugar de publicación, la casa editorial y el año de publicación. En cambio, cuando se pretende realizar una edición digital nativa puede ser conveniente describir en profundidad cada uno de los testimonios. Para ello es necesario incorporar en el esquema el módulo msdescription correspondiente al capítulo décimo de las Recomendaciones de la TEI. De esta manera se puede utilizar el elemento <msDesc> para identificar con precisión el documento y su contenido intelectual, describir su aspecto físico desde un punto de vista codicológico y, por último, incluir datos sobre la historia y procedencia del manuscrito. 

En mi propuesta de codificación de las Soledades he utilizado un atributo @type dentro del elemento <msDesc> para distinguir entre manuscritos e impresos mediante los valores manuscript y print. En el caso del manuscrito Chacón, además, he utilizado el atributo @subtype para indicar que se trata del manuscrito base —el valor que he definido es basetext—; en otras palabras, aquel documento que, en principio, contiene las lecturas preferidas y que por ello ha sido utilizado para cotejar el resto de testimonios. La identificación del manuscrito se lleva a cabo con el elemento <msIdentifier>: 

    <msIdentifier>
                                    <country>España</country>
                                    <settlement>Madrid</settlement>
                                    <repository>Biblioteca Nacional de España</repository>
                                    <collection>Fondo reservado</collection>
                                    <idno type="cataloguenumber">Res/45, 1</idno>
                                    <msName>Manuscrito Chacón</msName>
    </msIdentifier>

En este elemento, tal y como se percibe en la ilustración, se etiqueta el país, la ciudad, la biblioteca o repositorio y la colección en donde se encuentra el manuscrito que se pretende describir. Con el elemento <idno> se codifica la signatura. En este caso se trata del primer volumen del documento Res/45. Si existe otra forma de identificar el manuscrito —por ejemplo, una signatura distinta en el pasado— es posible codificarla con el elemento <altIdentifier>. Por último, en el elemento <msName> se halla el  nombre o sobrenombre con el que se conoce el manuscrito.
A continuación se sitúa el elemento <head> que contiene el título del manuscrito. En mi propuesta de codificación he seguido muy de cerca el título que dan los catálogos de las bibliotecas que conservan cada uno de los documentos utilizados aunque he modernizado y unificado la ortografía, la acentuación y la puntuación. Como ya se dijo en el capítulo tercero, los documentos que transmiten la poesía de Góngora suelen ser manuscritos unitarios por lo que conviene identificar con precisión cuál es el texto realmente utilizado. Para ello, he utilizado los elementos `<msContents>` y `<msItem>`:

        <head>Obras de don Luis de Góngora reconocidas y comunicadas con él por
                                        don Antonio Chacón Ponce de León, señor de Polvoranca</head>
                                    <msContents>
                                        <msItem>
                                            <locus from="193" to="260">193-260 páginas</locus>
                                            <title>Soledades</title>
                                        </msItem>
                                    </msContents>

De esta manera sería posible identificar cada uno de los textos que contiene un documento mediante su localización exacta tomando como unidad las páginas o folios que ocupa y, en caso de que tenga uno, el título. Puesto que para realizar esta edición crítica digital solo he cotejado el texto de las Soledades, me ha parecido suficiente codificar la posición que ocupa en el manuscrito; no obstante, sería posible seguir añadiendo, uno tras otro, cada uno de los poemas contenidos en el manuscrito Chacón utilizando elementos <msItem>. Si el manuscrito codificado fuera un cancionero colectivo también se podrían identificar distintos autores y otros fenómenos como incipits, colofón, citas, notas, etc., así como la lengua de cada uno de los textos, si varía. 

La descripción física del documento está contenida en el elemento <physDesc>. Esta etiqueta puede contener una descripción en prosa, dentro de un elemento `<p>`, sobre la forma, el soporte, el material del documento, el estilo de la escritura, el diseño de la página, la encuadernación, etc. O bien otros elementos mucho más precisos que presentan la misma información de manera estructurada y, por tanto, procesable por el ordenador. 

El primer elemento que se anida dentro de <phyDesc> es <objectDesc>. Este elemento agrupa etiquetas que se pueden dividir en dos grandes conjuntos: por un lado, la descripción del soporte físico; por el otro, la descripción del diseño de la página. Veamos, a continuación, qué elementos contienen estos datos:

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

En esta propuesta de codificación he utilizado un atributo @material en el elemento <supportDesc> para indicar el material del documento. El valor, en el caso del manuscrito Chacón, es parch porque se trata de papel de vitela, es decir, piel de vaca o ternera utilizada en manuscritos de lujo. Se trata de una excepción: en el resto de documentos, tanto manuscritos como impresos, el valor de este atributo siempre es paper. Pero el material del documento también se puede codificar de otra manera: dentro del elemento <support> el codificador puede poner una frase en prosa y etiquetar el material con la etiqueta <material>. Por lo demás, el elemento <support> puede contener otros elementos como <watermark>, utilizado para dar algún detalle sobre las marcas de agua; en mi propuesta de codificación de las Soledades no me ha parecido relevante utilizarlo. 
A continuación, sigue el elemento <extent> en donde se codifica el número folios o páginas del manuscrito y las dimensiones (formato, altura y ancho). En tercer lugar, tenemos el elemento <foliation> en donde se detalla información sobre la foliación como en qué parte del folio aparece el número, qué esquema o qué aspecto tiene, incluso quién es el responsable de la numeración. Si en el manuscrito hay más de una foliación, se puede usar una segunda o, si es necesario, una tercera etiqueta <foliation>, con un atributo @xml:id para distinguirlas, así como el elemento <locus> para indicar a qué partes del manuscrito nos estamos refiriendo. 

El último de los elementos contenidos por <supportDesc> corresponde a <condition>. En este elemento se puede declarar la condición en que se encuentra el documento. Por lo general, se recomienda utilizar una descripción en prosa contenida en un elemento <p> como Excelente estado de conservación o Buen estado; pero también es posible indicar si hay folios rotos o manchas.

La descripción del diseño de la página se detalla en el elemento <layoutDesc>. Este elemento contiene, a su vez, un elemento <layout> que sirve para explicitar el número de columnas mediante un atributo @column. En esta propuesta de codificación de las Soledades todos los manuscritos cotejados fueron escritos en una columna por lo que el valor de este atributo es 1, con la excepción del manuscrito Rm. 6709, que fue escrito en dos. En este elemento se pueden describir otros aspectos del diseño de la página como el número de líneas o el interlineado pero este tipo de datos no son imprescindibles para la finalidad de la edición. También puede utilizarse más de un elemento <layout> si el diseño de la página varía a lo largo del manuscrito.

Hasta aquí, pues, llega la descripción física del documento contenida en el elemento <objectDesc>. Tras este siguen varios elementos incluidos también en el elemento <physDesc> que dan cuenta del tipo de letra, las decoraciones y la encuadernación: 

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

La descripción de estos aspectos del manuscrito Chacón no plantea ningún problema al tratarse de un objeto de lujo. Así, se puede utilizar el elemento <handDesc> para declarar que solo un copista fue el responsable del traslado del texto. Algo parecido ocurre con la decoración, que es bastante uniforme. La descripción física de otros manuscritos, sin embargo, requiere utilizar otros elementos más precisos: por un lado, si la copia fue realizada por más de un escribano, resulta muy recomendable utilizar el elemento <handNote> con los atributos @xml:id y @scope para identificar respectivamente la mano y la extensión de cada una de las intervenciones. Asimismo, existe un elemento <decoNote> ideado para describir de manera aislada y en detalle los distintos tipos de decoraciones que presenta el manuscrito; incluso sería posible listar las decoraciones en un elemento <list> compuesto por varios elementos <item> y <locus>.

El manuscrito Chacón, por otra parte, tampoco contiene adiciones llevadas a cabo posteriormente pero sería posible describir la marginalia o simplemente las notas añadidas mediante el elemento <additions>. Si el codificador busca un nivel de granularidad elevado, se pueden identificar cada una de las notas en un elemento <list> como con el caso de las decoraciones.  

Finalmente, el elemento <bindingDesc> refiere información sobre el tipo de encuadernación del documento. En mi propuesta de codificación he utilizado únicamente un elemento `<p>` para contener una frase descriptiva pero la TEI permite el uso de otros elementos como <decoNote> o <condition> si queremos ser más específicos y dar detalles sobre la decoración o el estado de conservación. También es posible codificar los textos inscritos en el lomo o en el tejuelo de la encuadernación con el elemento `<quote>`. Aunque existen más elementos TEI, en esta propuesta de codificación el elemento <bindingDesc> pone punto y final a la descripción del manuscrito en tanto que documento u objeto físico.

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

Tal y como se puede apreciar el elemento <history> agrupa información diversa sobre la historia del manuscrito: en primer lugar se sitúa el elemento <origin> en donde se puede mencionar el lugar de creación, con la etiqueta <origPlace>, y la fecha de creación, con <origDate>; esta segunda etiqueta puede contener atributos como @when si se conoce la fecha exacta o @notBefore y @notAfter para dar los términos ad quo y ad quem. En segundo lugar, tenemos el elemento <provenance> que la TEI recomienda utilizar para identificar al propietario del manuscrito después de su creación y antes de que fuera adquirido por el repositorio actual en donde se encuentra. Así, en la historia del manuscrito Chacón se pueden identificar claramente dos períodos en función de quién fue su propietario: primero Olivares, luego Pascual Gayangos. Por eso he utilizados dos etiquetas <provenance> distintas. Por último, el elemento <acquisition> contiene información sobre el proceso de adquisición del manuscrito por parte de la biblioteca o repositorio en donde actualmente se encuentra; si no dispongo de datos sobre cómo se produjo la adquisición, he utilizado igualmente dicho elemento para dejar constancia de ello.
El último elemento que he utilizado para describir los manuscritos es <additional>. Con él se puede detallar información administrativa, algunos datos adicionales sobre la fuente y su disponibilidad, o bien, tal y como he preferido, establecer, por un lado, una conexión entre el manuscrito original y alguna reproducción electrónica accesible en internet; y, por el otro, incluir referencias bibliográficas en las que se estudia el documento en cuestión. Puesto que no todos los manuscritos han sido publicados en formato facsímil o han sido estudiados con detenimiento, este elemento no es obligatorio:

    <surrogates>
                                        <p>Facsímil disponible en la <bibl><ref target="http://bdh-rd.bne.es/viewer.vm?id=0000015414amppage=204"/><relatedItem type="original">
                                                    <ref target="#Ch">Biblioteca Digital Hispánica</ref>
                                                </relatedItem></bibl> y en la <bibl><ref target="http://www.cervantesvirtual.com/obra-visor/obras-de-d-luis-de-gongora-tomo-i-manuscrito--0/html/"/><relatedItem type="original">
                                                    <ref target="#Ch">Biblioteca Virtual Miguel de
                                                      Cervantes</ref>
                                                </relatedItem></bibl>.</p>
                                    </surrogates>

En el caso del manuscrito Chacón, el facsímil se puede encontrar en dos portales electrónicos: por un lado, en la Biblioteca Digital Hispánica; por el otro, en la Biblioteca Virtual Miguel de Cervantes. Para codificar esta información he utilizado varios elementos siguiendo el modelo de codificación empleado en las Bibliothèques Virtuelles Humanistes: en primer lugar, el elemento que agrupa al resto, <surrogates>, que contiene información sobre cualquier tipo de representación del original; seguidamente, el elemento <bibl>, que utilizo para indicar que tanto la Biblioteca Digital Hispánica como la Biblioteca Virtual Cervantes son portales que publican contenido digitalizado; en tercer lugar, tenemos la etiqueta <ref> con la que, gracias al atributo @target, se puede apuntar hacia una URL o bien hacia el original, representado por la sigla del manuscrito; por último, <relatedItem> sirve para establecer la conexión entre la representación digital y el original.

En cuanto a las referencias bibliográficas, he utilizado el elemento <listBibl> para codificar un listado de publicaciones estructuradas mediante el elemento <bibl>. El procedimiento es bastante sencillo por lo que no hace falta detenerse en ello: 

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

La descripción de los impresos puede considerarse menos compleja en comparación con la que acabamos de ver. La estructura es similar y muchas etiquetas son las mismas aunque se incorporan otras no vistas aún. A modo de ilustración he decidido comentar la codificación de la edición de Vicuña. Veamos, de nuevo, las etiquetas utilizadas en conjunto: 

    <witness xml:id="vi">
                            <msDesc type="print">
                                <msIdentifier>
                                    <country>España</country>
                                    <settlement>Madrid</settlement>
                                    <repository>Biblioteca Nacional de España</repository>
                                    <collection>Fondo antiguo</collection>
                                    <idno type="cataloguenumber">R/8641</idno>
                                </msIdentifier>
                                <msContents>
                                    <msItem>
                                        <locus from="122" to="152">122-152</locus>
                                        <title>Soledades</title>
                                    </msItem>
                                </msContents>
                                <physDesc>
                                    <objectDesc>
                                        <supportDesc material="paper">
                                            <extent>6 hojas, 160 folios<dimensions>
                                                    <dim type="format">4º</dim>
                                                </dimensions></extent>
                                            <condition>Buen estado.</condition>
                                        </supportDesc>
                                        <layoutDesc>
                                            <layout columns="1">
                                                <p>Las <title>Soledades</title> se imprimen en una
                                                    columna.</p>
                                            </layout>
                                        </layoutDesc>
                                    </objectDesc>
                                    <typeDesc>
                                        <p>Letra redonda a excepción de la dedicatoria del editor a
                                            Antonio Zapata que se imprime en cursiva.</p>
                                    </typeDesc>
                                    <decoDesc>
                                        <p>Portada con viñeta y decoraciones barrocas al inicio de cada
                                            sección en forma de banda o ribete.</p>
                                    </decoDesc>
                                    <bindingDesc>
                                        <p>Encuadernación de la época en piel.</p>
                                    </bindingDesc>
                                </physDesc>
                                <additional>
                                    <listBibl>
                                        <biblStruct>
                                            <monogr>
                                                <author><name><surname>Alonso</surname>,
                                                      <forename>Dámaso</forename></name>.</author>
                                                <title level="a">Las <title>Obras en verso del Homero
                                                      español</title>. Hechos y problemas en torno a la
                                                    edición de Vicuña</title>
                                                <title level="j">Obras en verso del Homero
                                                    español</title>
                                                <imprint>
                                                    <publisher>CSIC</publisher>
                                                    <pubPlace>Madrid</pubPlace>
                                                    <date when="1963">1963</date>
                                                    <biblScope from="12" to="79" unit="page">XII-LXXIX</biblScope>
                                                </imprint>
                                            </monogr>
                                        </biblStruct>
                                        <bibl type="article">
                                            <author>
                                                <name>
                                                    <surname>Wilson</surname>, <forename>Edward
                                                      Meryon</forename></name>
                                            </author>. <title level="a">Variantes nuevas y otras
                                                censuras en las <title>Obras en verso del Homero
                                                    español</title></title>. <bibl type="monogr">
                                                <title level="j">Boletín de la Real Academia
                                                    Española</title>
                                                <biblScope unit="volume">48</biblScope>.<biblScope unit="issue">183</biblScope> (<date when="1968">1968</date>): <biblScope from="35" to="54" unit="page">35-54</biblScope>.</bibl>
                                        </bibl>
                                        <bibl type="article">
                                            <author>
                                                <name>
                                                    <surname>Moll</surname>,
                                                    <forename>Jaime</forename></name>
                                            </author>. <title level="j">El Crotalón</title>
                                                <biblScope unit="volume">1</biblScope> (<date when="1984">1984</date>): <biblScope from="921" to="963" unit="page">921-963</biblScope>.</bibl>
                                        </bibl>
                                        <bibl type="article">
                                            <author>
                                                <name>
                                                    <surname>Moll</surname>,
                                                    <forename>Jaime</forename></name>
                                            </author>. <title level="a">Notas sobre las <title>Obras en
                                                    verso del Homero español</title></title>. <bibl type="monogr">
                                                <title level="j">Voz y letra</title>
                                                <biblScope unit="volume">7</biblScope>.<biblScope unit="issue">1</biblScope> (<date when="1992">1992</date>)
                                                    <biblScope from="29" to="35" unit="page">29-35</biblScope>.</bibl>
                                        </bibl>
                                    </listBibl>
                                </additional>
                            </msDesc>
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
                        </witness>

Como en el caso precedente, la codificación de los impresos se lleva a cabo utilizando un elemento <witness> con un atributo @xml:id, cuyo valor corresponde a la sigla con que he identificado el testimonio. El elemento <msDesc> con un atributo @type, cuyo valor es print, sirve para agrupar varias etiquetas: en primer lugar encontramos el elemento <msIdentifier>, que, como ya se vio, identifica el país, la ciudad, el repositorio y la signatura del documento. En los impresos no se utiliza el elemento <head> porque para identificar el título de la publicación se prefiere el elemento <title>, que se encuentra dentro del elemento <imprint>, del que daré más detalles más abajo. Seguidamente, pues, se sitúa el elemento <msContents> con el que se codifica el contenido intelectual del documento; para identificar con exactitud qué texto he utilizado y dónde se encuentra dentro del volumen, he utilizado el elemento <msItem>; en él se anidan <locus> y <title>. 

Tras esto viene la descripción de las cuatro dimensiones del documento físico: el soporte, el diseño de la página, la decoración y la encuadernación. Los elementos utilizados vuelven a ser <physDesc> y <objectDesc>.

La información relativa al tipo de fuente, a la decoración o a la encuadernación ha sido codificada en el caso de los testimonios impresos utilizando los elementos <typeDesc>, <decoDesc> y <bindingDesc> respectivamente. Como se puede observar en el fragmento de XML insertado, la descripción de los componentes decorativos es muy poco detallada; la TEI ofrece la posibilidad de estructurar cada una de las decoraciones en una lista formada por varios ítems pero ello requeriría un análisis exhaustivo de cada uno de los impresos —especialmente, de los preliminares— que, de momento y para los fines de esta propuesta, no resulta prioritario. Por último, cuando las hubiere, se han etiquetado las representaciones electrónicas en forma de facsímiles publicadas por bibliotecas virtuales mediante el elemento <additional> tal y como se expuso con los manuscritos.

Hasta aquí las similitudes. A diferencia del manuscrito, en la codificación de impresos he utilizado el elemento <biblStruct> para identificar con precisión el lugar y la fecha de publicación, el impresor y el librero. De esta manera es posible estructurar los elementos bibliográficos necesarios para citar al documento de manera ordenada. Los datos contenidos por estos elementos corresponden a nombres de personas o de lugares por lo que he utilizado las etiquetas <persName> y <placeName> respectivamente. Veamos cómo se anidan todos estos elementos tomando el caso de la imprenta de la edición de Vicuña:

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

El elemento TEI que agrupa etiquetas relacionadas con la producción, distribución y —en el caso del Siglo de Oro— venta del libro es <imprint>. Con <pubPlace> se identifica el lugar de publicación: Madrid. Como se trata del nombre de un lugar, he decidido añadir el elemento <placeName> y clasificarlo como ciudad por medio de un atributo @type. Acto seguido aparecen los nombres de los responsables de la publicación que, en principio, debieran etiquetarse con el elemento <publisher>. Ahora bien, en lugar de una empresa u organización como ocurre actualmente, en el siglo XVII aún se podían distinguir dos figuras: el impresor y el librero. En este caso la TEI recomienda utilizar los elementos <respStmt> y <resp> en lugar de <publisher>. En mi propuesta de codificación he descrito la responsabilidad en prosa tal y como se encuentra en los libros del siglo XVII y seguidamente he puesto los nombres del impresor y del librero dentro de las etiquetas <persName>. Estas pueden contener dos atributos: @role para definir el rol —librero o impresor— y @ref para incluir algún enlace permanente, por ejemplo, al Fichero de Autoridades Virtual Internacional (VIAF). En el caso de la edición de Vicuña, Ana de Carasa, la viuda de Luis Sánchez, sí ha sido identificada por VIAF; por el contrario y hasta la fecha, el librero Alonso Pérez no ha sido posible localizarlo en esta base de datos. En cualquier caso, tras la declaración de responsabilidad sigue la fecha de publicación contenida en un elemento <date>. 

Para recapitular lo que se ha dicho sobre la primera parte del <teiHeader>, el elemento <fileDesc> contiene información bibliográfica sobre el archivo electrónico en el <titleStmt>, sobre el número de la edición en el <editionStmt>, sobre la publicación, distribución y disponibilidad del archivo electrónico en el <publicationStmt> y, por último, sobre las fuentes de las que deriva el texto en el <sourceDesc>. Este último elemento resulta de importancia capital en esta propuesta de codificación de las Soledades porque en él se describen los 22 testimonios cotejados —manuscritos e impresos— para crear el texto crítico. 

> Written with [StackEdit](https://stackedit.io/).







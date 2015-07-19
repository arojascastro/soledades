Encabezado
==========
El encabezado TEI es el lugar del archivo XML en el que se recogen los metadatos, es decir, toda aquella información que permite identificar al documento y declarar cuál es la fuente de la que deriva el texto. En esta parte del archivo, además, se pueden registrar otro tipo de información suplementaria como los criterios editoriales, el tipo de texto u otros datos relativos a la creación de la obra desde un punto de vista intelectual. 

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

Tras el título, pues, sigue el elemento `<author>`, el elemento `<respStmt>` y el elemento `<funder>`. El primero de estos contiene el nombre del autor, cuyos nombre de pila y apellidos pueden hacerse explícitos y estructurarse con otras etiquetas si así se desea. Seguidamente se puede hallar el elemento `<editor>`, en donde se identifica al creador del archivo electrónico. También es posible utilizar la etiqueta `<respStmt>` para detallar este tipo de información. En mi propuesta de codificación he preferido esta segunda opción para así poder declarar que soy responsable tanto de la edición del texto como de la codificación. Este elemento contiene un atributo @xml:id con valor ARC: de esta manera, es posible identificar y referenciar en el resto del archivo XML mis intervenciones. Por último, he creído oportuno utilizar la etiqueta `<funder>` para declarar que tanto la tesis como la codificación XML/TEI de las Soledades han sido financiadas por el Ministerio de Economía y Competitividad como miembro del proyecto Todo Góngora II.



> Written with [StackEdit](https://stackedit.io/).
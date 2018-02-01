<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:hal="http://www.haller.unibe.ch/ns/1.0" version="1.0">

    <!-- question 1: why we need this xmlns:hal="http://www.haller.unibe.ch/ns/1.0" -->

    <!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                            USER OPTIONS (START)
         ________________________________________________________________ -->

    <!-- Indicate schema files relative to this file: -->
    <p:option name="schematron" select="'schema/soledades_simple.sch'"/>
    <p:option name="schema_tei" select="'http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng'"/>

    <!--________________________________________________________________
                            USER OPTIONS (END) 
        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  -->

    <!-- input and output file names should be specified more appropriately -->
    <p:option name="result-url" select="'output/soledades_simple.xml'"/>
    <!-- input and output file names should be specified more appropriately -->

    <p:input port="source">
        <!--<p:document href="input/soledades_anotada.xml"/>-->
        <p:document href="../anotada/input/soledades_anotada.xml"/>
    </p:input>

    <p:input port="parameters" kind="parameter"/>

    <p:identity name="input">
        <p:input port="source"/>
    </p:identity>

    <p:documentation>
        <h2>Assert empty output directory</h2>
        <p>This step checks if there is an output directory and if xml files are present in the output directory. Such files could lead to corruption (duplicates).</p>
    </p:documentation>
    <p:directory-list path="output"/>
    <p:choose>
        <p:when test="c:directory[@name='output']">
            <p:directory-list path="output"/>
            <p:choose>
                <p:when test="c:directory/c:file[contains(@name,'_')][ends-with(@name,'.xml')]">
                    <p:error code="output-not-empty">
                        <p:input port="source">
                            <p:inline>
                                <doc>XML files present in the output folder. Remove XML files.</doc>
                            </p:inline>
                        </p:input>
                    </p:error>
                </p:when>
                <p:otherwise>
                    <p:identity/>
                </p:otherwise>
            </p:choose>
        </p:when>
        <p:otherwise>
            <p:error code="no-output-directory">
                <p:input port="source">
                    <p:inline>
                        <doc>No output directory exists. Create a directory named 'output' (in the directory in which this repository lives).</doc>
                    </p:inline>
                </p:input>
            </p:error>
        </p:otherwise>
    </p:choose>
    <p:sink/>

    <p:identity>
        <p:input port="source">
            <p:pipe port="result" step="input"/>
        </p:input>
    </p:identity>

    <p:documentation>This step removes a number of elements and creates a simpler encoding with a normalized text and without notes.</p:documentation>
    <p:xslt name="simplify">
        <p:input port="stylesheet">
            <p:document href="xslt/simplify.xsl"/>
        </p:input>
    </p:xslt>

    <p:documentation>This step removes whitespaces before punctuation marks.</p:documentation>
    <p:xslt name="ending_whitespaces">
        <p:input port="stylesheet">
            <p:document href="xslt/ending_whitespaces.xsl"/>
        </p:input>
    </p:xslt>

    <p:documentation>This step removes whitespaces after punctuation marks.</p:documentation>
    <p:xslt name="starting_whitespaces">
        <p:input port="stylesheet">
            <p:document href="xslt/starting_whitespaces.xsl"/>
        </p:input>
    </p:xslt>

    <!-- <p:documentation>This step normalizes the spacing.</p:documentation>
    <p:xslt name="normalize">
        <p:input port="stylesheet">
            <p:document href="xslt/normalize_space.xsl"/>
        </p:input>
    </p:xslt>-->

<!-- question 2: where the association with the schema takes place? -->

  <!--  <p:documentation>Chop data to atomic files</p:documentation>
    <hal:storeFiles>
        <p:with-option name="schema_tei" select="$schema"/>
        <p:with-option name="schematron" select="$schematron"/>
    </hal:storeFiles>-->

   <!-- <p:documentation>Store essential information away for lookup from other conversions.</p:documentation>-->

    <!-- prepend xml-model (schema, schematron) -->
    <!--<p:xslt>
        <p:with-param name="schema" select="$schema"/>
        <p:with-param name="schema-relative-location" select="'./'"/>
        <p:with-param name="schematron" select="$schematron"/>
        <p:input port="stylesheet">
            <p:document href="conversion/xml-model/prepend-xml-model.xsl"/>
        </p:input>
    </p:xslt>-->

    <p:store>
        <p:with-option name="href" select="$result-url"/>
        <p:with-option name="indent" select="'true'"/>
    </p:store>

    <!-- 
        Let's follow the flat XProc way in a similar fashion as the sanskrit-dict-to-tei project (https://github.com/cceh/sanskrit-dict-to-tei).
        
        On information about XProc see https://www.data2type.de/en/xml-xslt-xslfo/xproc/.
        
        Some styling advice for more advanced usage:
        
        * Encapsulate commonly used functionality into components with p:import and p:declare-step. 
        * Add name and type attributes to each p:declare-step to make it accessible from inside and outside of the pipeline
        * Avoid too many nested p:choose if possible. A proper XSLT is many times a better option to encapsulate application logic.
        * Use p:documentation tags to explain what your pipeline does.
        * Provide debugging features and console output in your pipeline, e.g. via tr:store-debug or cx:message
        * Step order may be declared explicitly using the cx:depends-on attribute. This is needed when you want to use steps which operate with files.
        
        (inspired by http://transpect.github.io/styleguide.html) -->

</p:declare-step>

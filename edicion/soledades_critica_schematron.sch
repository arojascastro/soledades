<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:sqf="http://www.schematron-quickfix.com/validator/process">

    <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>

    <!-- elements allowed in the teiHeader -->

    <pattern id="teiHeader">

        <rule context="tei:teiHeader">

            <assert test="tei:fileDesc">A &lt;teiHeader&gt; element must contain a &lt;fileDesc&gt; element.</assert>

            <assert test="tei:encodingDesc">A &lt;teiHeader&gt; element must contain a &lt;encodingDesc&gt; element.</assert>

            <assert test="tei:profileDesc">A &lt;teiHeader&gt; element must contain a &lt;profileDesc&gt; element.</assert>

        </rule>

    </pattern>

    <!-- elements allowed in the fileDesc -->

    <pattern id="fileDesc">

        <rule context="tei:fileDesc">

            <assert test="tei:titleStmt">A &lt;fileDesc&gt; element must contain a &lt;titleStmt&gt; element.</assert>

            <assert test="tei:editionStmt">A &lt;fileDesc&gt; element must contain an &lt;editionStmt&gt; element.</assert>

            <assert test="tei:publicationStmt">A &lt;fileDesc&gt; element must contain a &lt;publicationStmt&gt; element.</assert>

            <assert test="tei:sourceDesc">A &lt;fileDesc&gt; element must contain a &lt;sourceDesc&gt; element.</assert>

        </rule>

        <rule context="tei:titleStmt">

            <assert test="tei:title">A &lt;titleStmt&gt; element must contain a &lt;title&gt; element.</assert>

            <assert test="tei:author">A &lt;fileDesc&gt; element must contain a &lt;author&gt; element.</assert>

            <assert test="tei:editor">A &lt;fileDesc&gt; element must contain an &lt;editor&gt; element.</assert>

            <assert test="tei:funder">A &lt;fileDesc&gt; element must contain a &lt;funder&gt; element.</assert>

        </rule>

        <rule context="tei:editionStmt">

            <assert test="tei:edition">A &lt;editionStmt&gt; element must contain an &lt;edition&gt; element.</assert>

        </rule>


        <rule context="tei:publicationStmt">

            <assert test="tei:distributor">A &lt;publicationStmt&gt; element must contain a &lt;distributor&gt; element.</assert>

            <assert test="tei:pubPlace">A &lt;publicationStmt&gt; element must contain a &lt;pubPlace&gt; element.</assert>

            <assert test="tei:availability">A &lt;publicationStmt&gt; element must contain a &lt;availability&gt; element.</assert>

        </rule>

        <rule context="tei:availability">

            <assert test="tei:licence">A &lt;availability&gt; element must contain a &lt;licence&gt; element.</assert>

        </rule>

        <rule context="tei:sourceDesc">

            <assert test="tei:bibl">A &lt;sourceDesc&gt; element must contain a &lt;bibl&gt; element.</assert>

            <assert test="tei:listWit">A &lt;sourceDesc&gt; element must contain a &lt;listBibl&gt; element.</assert>

        </rule>

        <rule context="tei:listWit">

            <assert test="tei:witness">A &lt;listWitc&gt; element must contain a &lt;witness&gt; element.</assert>

        </rule>

        <rule context="tei:witness">

            <assert test="tei:msDesc">A &lt;listWitc&gt; element must contain a &lt;msDesc&gt; element.</assert>

        </rule>


        <rule context="tei:msDesc">

            <assert test="tei:msIdentifier">A &lt;msDesc&gt; element must contain a &lt;msIdentifier&gt; element.</assert>

            <assert test="tei:msContents">A &lt;msDesc&gt; element must contain a &lt;msContents&gt; element.</assert>

        </rule>

        <rule context="tei:msDesc[@type = 'manuscript']/tei:msIdentifier">

            <assert test="tei:country">A &lt;msIdentifier&gt; element must contain a &lt;country&gt; element.</assert>

            <assert test="tei:settlement">A &lt;msIdentifier&gt; element must contain a &lt;settlement&gt; element.</assert>

            <assert test="tei:repository">A &lt;msIdentifier&gt; element must contain a &lt;repository&gt; element.</assert>

            <assert test="tei:idno">A &lt;msIdentifier&gt; element must contain an &lt;idno&gt; element.</assert>

            <assert test="tei:msName">A &lt;msIdentifier&gt; element must contain a &lt;msName&gt; element.</assert>

        </rule>


        <rule context="tei:witness">

            <assert test="matches(@xml:id, '\w')">A &lt;witness&gt; element must contain a &lt;@xml:id&gt; attribute.</assert>

        </rule>

        <rule context="tei:msDesc">

            <assert test="@type">A &lt;msDesc&gt; element must contain a &lt;@type&gt; attribute.</assert>

        </rule>

        <rule context="tei:msContents">

            <assert test="tei:msItem">A &lt;msContents&gt; element must contain a &lt;msItem&gt; element.</assert>

        </rule>

        <rule context="tei:msItem">

            <assert test="tei:locus">A &lt;msItem&gt; element must contain a &lt;locus&gt; element.</assert>

            <assert test="tei:title">A &lt;msItem&gt; element must contain a &lt;title&gt; element.</assert>

        </rule>

        <rule context="tei:msDesc[@type = 'print']/tei:msIdentifier">

            <assert test="tei:country">A &lt;msIdentifier&gt; element must contain a &lt;country&gt; element.</assert>

            <assert test="tei:settlement">A &lt;msIdentifier&gt; element must contain a &lt;settlement&gt; element.</assert>

            <assert test="tei:repository">A &lt;msIdentifier&gt; element must contain a &lt;repository&gt; element.</assert>

            <assert test="tei:idno">A &lt;msIdentifier&gt; element must contain an &lt;idno&gt; element.</assert>

        </rule>

        <rule context="tei:witness/tei:biblStruct/tei:monogr">

            <assert test="tei:author">A &lt;monogr&gt; element must contain an &lt;author&gt; element.</assert>

            <assert test="tei:editor or tei:respStmt">A &lt;monogr&gt; element must contain an &lt;editor&gt; or a &lt;respStmt&gt; element.</assert>

            <assert test="tei:title">A &lt;monogr&gt; element must contain a &lt;title&gt; element.</assert>

            <assert test="tei:imprint">A &lt;monogr&gt; element must contain an &lt;imprint&gt; element.</assert>

        </rule>

    </pattern>

    <!-- elements allowed in the encodingDesc -->

    <pattern id="encodingDesc">

        <rule context="tei:encodingDesc">
            <!-- to be completed -->
        </rule>

    </pattern>



    <!-- elements allowed in the profileDesc -->

    <pattern id="profileDesc">

        <rule context="tei:profileDesc">

            <assert test="tei:creation">A &lt;profileDesc&gt; element must contain a &lt;creation&gt; element.</assert>

            <assert test="tei:langUsage">A &lt;profileDesc&gt; element must contain a &lt;langUsage&gt; element.</assert>
        </rule>

    </pattern>

    <!-- rules for elements in general -->

    <pattern id="general">

        <rule context="tei:mentioned">
            <assert test="@rend = 'italic'">A &lt;mentioned&gt; element must contain a '@rend' whose value is 'italic'.</assert>
        </rule>

        <rule context="tei:hi">
            <assert test="@rend = 'italic'">A &lt;hi&gt; element must contain a '@rend' whose value is 'italic'.</assert>
        </rule>

    </pattern>

    <!-- rules for elements within body -->

    <pattern id="body">

        <rule context="tei:text/tei:body/tei:div">
            <assert test="@xml:id">A &lt;div&gt; element must contain a '@xml:id'.</assert>
        </rule>

        <rule context="tei:text/tei:body/tei:div/tei:head">
            <assert test="@type">A &lt;head&gt; element must contain a '@type'.</assert>
        </rule>

        <rule context="tei:text/tei:body/tei:div/tei:lg">
            <assert test="matches(@xml:id, 'g-\d{2}')">A &lt;lg&gt; element must contain a '@xml:id' atribute whose value is 'g-\d{2}'.</assert>
        </rule>

        <rule context="tei:text/tei:body/tei:div/tei:lg/tei:l">
            <assert test="matches(@xml:id, 'v-\d{4}')">A &lt;l&gt; element must contain a '@xml:id' atribute whose value is 'v-\d{4}'.</assert>
        </rule>

    </pattern>


    <!-- rules for the apparatus -->

    <pattern id="apparatus">

        <!-- to be completed -->

    </pattern>

</schema>

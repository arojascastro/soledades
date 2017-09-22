<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2" xmlns:sqf="http://www.schematron-quickfix.com/validator/process">

    <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>

    <!-- elements allowed in the teiHeader -->

    <pattern id="teiHeader">

        <rule context="tei:teiHeader">

            <assert test="tei:fileDesc">A &lt;teiHeader&gt; element must contain a &lt;fileDesc&gt; element.</assert>

            <assert test="tei:profileDesc">A &lt;teiHeader&gt; element must contain a &lt;profileDesc&gt; element.</assert>

        </rule>

        <!-- elements allowed in the fileDesc -->

        <rule context="tei:fileDesc">

            <assert test="tei:titleStmt">A &lt;fileDesc&gt; element must contain a &lt;titleStmt&gt; element.</assert>

            <assert test="tei:editionStmt">A &lt;fileDesc&gt; element must contain an &lt;editionStmt&gt; element.</assert>

            <assert test="tei:publicationStmt">A &lt;fileDesc&gt; element must contain a &lt;publicationStmt&gt; element.</assert>

            <assert test="tei:sourceDesc">A &lt;fileDesc&gt; element must contain a &lt;sourceDesc&gt; element.</assert>

        </rule>

        <rule context="tei:titleStmt">

            <assert test="tei:title">A &lt;titleStmt&gt; element must contain a &lt;title&gt; element.</assert>

            <assert test="tei:respStmt">A &lt;fileDesc&gt; element must contain a &lt;respStmt&gt; element.</assert>

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

        <!-- elements allowed in the profileDesc -->

        <rule context="tei:profileDesc">

            <assert test="tei:particDesc">A &lt;profileDesc&gt; element must contain a &lt;particDesc&gt; element.</assert>

            <assert test="tei:settingDesc">A &lt;profileDesc&gt; element must contain a &lt;settindDesc&gt; element.</assert>

        </rule>

        <rule context="tei:particDesc">

            <assert test="tei:listPerson">A &lt;particDesc&gt; element must contain a &lt;listPerson&gt; element.</assert>

        </rule>

        <rule context="tei:settingDesc">

            <assert test="tei:listPlace">A &lt;settingDesc&gt; element must contain a &lt;listPlace&gt; element.</assert>

        </rule>

        <rule context="tei:listPlace">

            <assert test="tei:head">A &lt;listPlace&gt; element must contain a &lt;head&gt; element.</assert>

            <assert test="tei:place">A &lt;listPlace&gt; element must contain a &lt;place&gt; element.</assert>

        </rule>

        <rule context="tei:listPerson">

            <assert test="tei:head">A &lt;listPerson&gt; element must contain a &lt;head&gt; element.</assert>

            <assert test="tei:person">A &lt;listPerson&gt; element must contain a &lt;person&gt; element.</assert>

        </rule>

        <rule context="tei:person">

            <assert test="tei:persName">A &lt;person&gt; element must contain a &lt;perName&gt; element.</assert>

            <assert test="tei:occupation">A &lt;occupation&gt; element must contain a &lt;occupation&gt; element.</assert>

            <assert test="matches(@xml:id, '\w\d{3}')">A &lt;person&gt; element must contain a '@xml:id' atribute.</assert>

        </rule>

    </pattern>

    <!-- rules for elements within text -->

    <pattern id="text">

        <rule context="tei:text//tei:div">
            <assert test="@xml:id">A &lt;div&gt; element must contain a '@xml:id' with a word.</assert>
        </rule>

        <rule context="tei:text//tei:head">
            <assert test="@type">A &lt;head&gt; element must contain a '@type'.</assert>
        </rule>

        <rule context="tei:text//tei:ref">
            <assert test="matches(@target, '#\w+\d{4}') or contains(@target, 'http://') or starts-with(@target, 'https:') or starts-with(@target, 'soledades.')">A &lt;ref&gt; element must contain a '@target' wose value is #\w+\{4} or a URL.</assert>
        </rule>

    </pattern>


    <!-- rules for elements within front  -->

    <pattern id="front">

        <rule context="tei:text/tei:front//tei:hi">
            <assert test="@rend = 'italic'">A &lt;hi&gt; element must contain a '@rend' whose value is 'italic'.</assert>
        </rule>

        <rule context="tei:text/tei:front//tei:mentioned">
            <assert test="@rend = 'italic'">A &lt;hi&gt; element must contain a '@rend' whose value is 'italic'.</assert>
        </rule>

    </pattern>
    <!-- elements allowed in notes -->

    <pattern id="notes">

        <rule context="tei:text/tei:body//tei:note">
            <assert test="tei:p">A &lt;note&gt; element must contain at least one &lt;p&gt; element.</assert>
            <assert test="matches(@type, 'editorial') or matches(@type, 'explicativa')">A &lt;note&gt; element must contain a '@type' attribute whose values are 'editorial' or 'explicativa'.</assert>
        </rule>

        <rule context="tei:text/tei:body//tei:note/tei:p/tei:hi">
            <assert test="matches(@rend, 'italic')">A &lt;hi&gt; element must contain a '@rend' whose value is 'italic'.</assert>
        </rule>

    </pattern>


    <!-- elements allowed in the poem -->

    <pattern id="poem">

        <rule context="tei:text/tei:body/tei:div/tei:l">
            <assert test="matches(@xml:id, 'v-\d{4}')">A &lt;l&gt; element must contain a '@xml:id' atribute whose value is 'v-\d{4}'.</assert>
        </rule>

        <rule context="tei:text/tei:body/tei:div/tei:l/choice">
            <assert test="tei:orig">A &lt;choice&gt; element must contain a &lt;orig&gt; element.</assert>
            <assert test="tei:reg">A &lt;choice&gt; element must contain a &lt;reg&gt; element.</assert>
        </rule>

        <rule context="tei:text/tei:body//tei:orig/tei:hi">
            <assert test="matches(@rend, 'initial')">A &lt;hi&gt; element must contain a '@rend' whose value is 'initial'.</assert>
        </rule>

        <rule context="tei:text/tei:body//tei:place">
            <assert test="tei:placeName or tei:geogName">A &lt;place&gt; element must contain a &lt;placeName&gt; or a &lt;geogName&gt; element.</assert>
            <assert test="matches(@xml:id, '\w+\d{3}')">A &lt;place&gt; element must contain a '@xml:id' atribute.</assert>
        </rule>

        <rule context="tei:text/tei:body//tei:persName">
            <assert test="matches(@ref, '#\w+\d{3}')">A &lt;persName&gt; element must contain a '@xml:id' with three letters and three digits.</assert>
        </rule>

        <rule context="tei:text/tei:body//tei:placeName">
           <assert test="matches(@ref, '#\w+\d{3}')">A &lt;placeName&gt; element must contain a '@xml:id' with three letters and three digits.</assert>
        </rule>

        <rule context="tei:text/tei:body//tei:geogName">
            <assert test="matches(@ref, '#\w+\d{3}')">A &lt;geogName&gt; element must contain a '@xml:id' with three letters and three digits.</assert>
        </rule>

    </pattern>

</schema>

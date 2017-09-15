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

        <rule context="tei:text/tei:body/tei:div/tei:lg/tei:l[@exclude]">
            <assert
                test="
                    matches(@exclude, '#A') or matches(@exclude, '#Br') or matches(@exclude, '#C') or matches(@exclude, '#Ch') or matches(@exclude, '#D') or matches(@exclude, '#E') or matches(@exclude, '#H') or
                    matches(@exclude, '#I') or matches(@exclude, '#J') or matches(@exclude, '#Ml') or matches(@exclude, '#N') or matches(@exclude, '#O') or matches(@exclude, '#Pr') or matches(@exclude, '#Q') or matches(@exclude, '#Rl')
                    or matches(@exclude, '#Rm') or matches(@exclude, '#S') or matches(@exclude, '#vi') or matches(@exclude, '#pe') or matches(@exclude, '#ho33') or matches(@exclude, '#ho54') or matches(@exclude, '#sa')"
                >A &lt;l&gt; element with a '@exclude' attribute must match a witness sigla.</assert>
        </rule>

    </pattern>


    <!-- rules for the apparatus -->

    <pattern id="apparatus">

        <rule context="tei:app">

            <assert test="tei:lem">A &lt;app&gt; element must contain a &lt;lem&gt; element.</assert>

            <assert test="tei:rdg">A &lt;app&gt; element must contain a &lt;rdg&gt; element.</assert>

        </rule>

        <rule context="tei:rdg">

            <assert test="matches(@type, 'error') or matches(@type, 'variant')">A &lt;rdg&gt; element must have a @type attribute whose values are 'error' or 'variant'.</assert>

            <assert
                test="
                    matches(@wit, '#A') or matches(@wit, '#Br') or matches(@wit, '#C') or matches(@wit, '#Ch') or matches(@wit, '#D') or matches(@wit, '#E') or matches(@wit, '#H') or
                    matches(@wit, '#I') or matches(@wit, '#J') or matches(@wit, '#Ml') or matches(@wit, '#N') or matches(@wit, '#O') or matches(@wit, '#Pr') or matches(@wit, '#Q') or matches(@wit, '#Rl')
                    or matches(@wit, '#Rm') or matches(@wit, '#S') or matches(@wit, '#vi') or matches(@wit, '#pe') or matches(@wit, '#ho33') or matches(@wit, '#ho54') or matches(@wit, '#sa')"
                >A &lt;rdg&gt; must contain an attribute '@wit', whose value must match witness 'sigla'.</assert>

        </rule>

        <rule context="tei:rdg[@cert]">
            <assert test="matches(@cert, 'low')">A &lt;rdg&gt; element may have a @cert attribute whose only value is 'low'.</assert>
        </rule>

        <rule context="tei:del">
            <assert
                test="
                    matches(@rend, 'wrapped') or matches(@rend, 'strikethrough') or matches(@rend, 'overwritten') or matches(@rend, 'unmarked') or matches(@rend, 'underlined') or matches(@rend,
                    'annotation')"
                >A &lt;del&gt; element must have a @rend attribute with value: 'wrapped', 'strikethrough', 'overwritten', 'unmarked', 'underlined' or 'annotation'.</assert>
        </rule>


        <rule context="tei:add">
            <assert test="matches(@place, 'above') or matches(@place, 'inline') or matches(@place, 'margin') or matches(@place, 'below')">An &lt;add&gt; element must have a @place attribute with
                value: 'above', 'inline', 'margin' or 'below'.</assert>
        </rule>


    </pattern>

</schema>

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

            <assert test="tei:note">A &lt;person&gt; element must contain a &lt;p&gt; element.</assert>

            <assert test="matches(@xml:id, '\w\d{3}')">A &lt;person&gt; element must contain a '@xml:id' atribute.</assert>

        </rule>

        <rule context="tei:place">
            
            <assert test="tei:placeName or tei:geogName">A &lt;place&gt; element must contain a &lt;placeName&gt; or &lt;geogName&gt;  element.</assert>

            <assert test="matches(@xml:id, '\w\d{3}')">A &lt;person&gt; element must contain a '@xml:id' atribute.</assert>
            
        </rule>

    </pattern>


    <!-- elements allowed in the poem -->

    <pattern id="poem">

        <rule context="tei:text/tei:body/tei:div/tei:l/tei:persName">
            <assert test="matches(@ref, '#\w+\d{3}')">A &lt;persName&gt; element must contain a '@xml:id' with three letters and three digits.</assert>
        </rule>

        <rule context="tei:text/tei:body/tei:div/tei:l/tei:placeName">
            <assert test="matches(@ref, '#\w+\d{3}')">A &lt;placeName&gt; element must contain a '@xml:id' with three letters and three digits.</assert>
        </rule>

        <rule context="tei:text/tei:body/tei:div/tei:l/tei:geogName">
            <assert test="matches(@ref, '#\w+\d{3}')">A &lt;geogName&gt; element must contain a '@xml:id' with three letters and three digits.</assert>
        </rule>

    </pattern>

</schema>

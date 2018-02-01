<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs tei" version="2.0">

    <xsl:output indent="yes"/>

    <xsl:template match="/">

        <ul type="persons">

            <xsl:for-each select="//tei:text//tei:persName">
                <xsl:sort order="ascending"/>
                  <li id="{substring-after(@ref, '#')}" val="{.}"></li>
                
                <xsl:apply-templates/>

            </xsl:for-each>

        </ul>

        <ul type="places">
            
            <xsl:for-each select="//tei:text//tei:placeName">
                <xsl:sort order="ascending"/>
                <li id="{substring-after(@ref, '#')}" val="{.}"></li>
                
                <xsl:apply-templates/>
                
            </xsl:for-each>
            
        </ul>
        

    </xsl:template>

    <xsl:template match="text()"/>

</xsl:stylesheet>

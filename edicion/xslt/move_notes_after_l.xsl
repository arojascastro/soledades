<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs tei" version="2.0">

  <xsl:output method="xml" encoding="utf-8" indent="yes"/>

  <!-- Identity template : copy all text nodes, elements and attributes -->
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- When matching witDetail do nothing -->
  <!--<xsl:template match="tei:witDetail">
    <note target="{parent::tei:l/@xml:id}">
      <xsl:value-of select="upper-case(parent::tei:l/@xml:id)"/>
      <xsl:text>: </xsl:text>
      <xsl:apply-templates/>
    </note>
  </xsl:template>-->

  <xsl:template match="mentioned">
    <xsl:apply-templates/>
  </xsl:template>


  <xsl:template match="tei:l[tei:witDetail]" mode="#default">
<xsl:copy-of select="."></xsl:copy-of>
    <xsl:for-each select="tei:witDetail">
      <note target="{parent::tei:l/@xml:id}"><xsl:value-of select="upper-case(parent::tei:l/@xml:id)"/>
        <xsl:text>: </xsl:text>
        <xsl:apply-templates/>
      </note></xsl:for-each>
  </xsl:template>

  



  <!-- Match this division, copy it and then add a new division, then copy all the elements witDetail there -->

  <!--<xsl:template match="tei:div[@n = '2']">
    <xsl:copy-of select="."/>
    <div n="3" xml:id="notes">
      <xsl:for-each select="parent::tei:body//tei:witDetail">
        <xsl:sort select="@wit"/>
        <note target="{parent::tei:l/@xml:id}"><xsl:value-of select="upper-case(parent::tei:l/@xml:id)"/><xsl:text>: </xsl:text><xsl:apply-templates/></note>
      </xsl:for-each>
    </div>
  </xsl:template>-->


</xsl:stylesheet>

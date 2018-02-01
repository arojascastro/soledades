<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs tei" version="2.0">

  <xsl:output encoding="UTF-8" method="xml" indent="yes"/>

  <xsl:template match="tei:TEI">

    <xsl:element name="TEI" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:element name="teiHeader" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:element name="fileDesc" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:copy-of select="//tei:titleStmt"/>
          <xsl:copy-of select="//tei:editionStmt"/>
          <xsl:copy-of select="//tei:publicationStmt"/>
          <xsl:element name="sourceDesc" namespace="http://www.tei-c.org/ns/1.0">
            <xsl:copy-of select="//tei:sourceDesc/tei:bibl"/>
          </xsl:element>
        </xsl:element>
        <xsl:element name="profileDesc" namespace="http://www.tei-c.org/ns/1.0">
          <xsl:copy-of select="//tei:particDesc"/>
          <xsl:copy-of select="//tei:settingDesc"/>
        </xsl:element>
      </xsl:element>
      <xsl:element name="text" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:apply-templates select="//tei:body"/>
      </xsl:element>
    </xsl:element>
  </xsl:template>

  <xsl:template match="tei:body">
    <xsl:element name="body" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="tei:div">
    <xsl:for-each select=".">
      <xsl:element name="div" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:apply-templates/>
      </xsl:element>

    </xsl:for-each>
  </xsl:template>

  <xsl:template match="tei:head">
    <xsl:for-each select=".">
      <xsl:element name="head" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:apply-templates/>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="tei:l">
    <xsl:for-each select=".">
      <xsl:element name="l" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:apply-templates/>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="tei:choice">
    <xsl:for-each select=".">
      <xsl:apply-templates/>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="tei:label">
    <xsl:for-each select=".">
      <xsl:element name="label" namespace="http://www.tei-c.org/ns/1.0">
        <xsl:apply-templates/>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="tei:persName">
    <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="tei:placeName">
    <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="tei:text//tei:geogName">
    <xsl:element name="placeName" namespace="http://www.tei-c.org/ns/1.0">
      <xsl:attribute name="ref">
        <xsl:value-of select="./@ref"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="tei:note"/>

  <xsl:template match="tei:orig"/>

  <xsl:template match="tei:abbr"/>

  <xsl:template match="tei:sic"/>

  <xsl:template match="tei:front"/>

  <xsl:template match="tei:back"/>

  <xsl:template match="tei:pb"/>


</xsl:stylesheet>

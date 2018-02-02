<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs tei" version="2.0">

  <xsl:template match="/">

    <xsl:processing-instruction name="xml-model">href="<xsl:value-of select="'../schema/soledades_simple.sch'"/>" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
    <xsl:copy-of select="*"/>
  </xsl:template>

</xsl:stylesheet>

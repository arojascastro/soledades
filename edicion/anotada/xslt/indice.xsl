<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

  <xsl:output method="html"/>

  <xsl:template match="/">

    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>
          <xsl:value-of select="//tei:titleStmt/tei:title"/>
        </title>
        <meta name="DC. CREATOR.AUT" content="Luis de Góngora"/>
        <meta name="DC.TITLE" content="Soledades. Nueva edición digital: inicio"/>
        <meta name="DC.CREATOR" content="Luis de Góngora"/>
        <meta name="DC.CONTRIBUTOR" content="Antonio Rojas Castro"/>
        <meta name="DC.TYPE" content="Text"/>
        <meta name="DC.SUBJECT" content="Poesía Soledades Siglo de Oro Edición digital Luis de Góngora"/>
        <meta name="DC.FORMAT" content="text/html"/>
        <meta name="DC.LANGUAGE" content="es"/>
        <meta name="DC.DATE.CREATED" content="1613"/>
        <meta name="DC.RIGHTS" content="Creative Commons By 4.0"/>
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" type="text/css" href="css/scholmd-heuristically-latest.min.css"/>
      </head>
      <body>

        <div>

          <h2>
            <xsl:value-of select="//tei:listPerson/tei:head"/>
          </h2>

<!-- substitute this xsl:for each by a template and apply templates here -->
          <xsl:for-each select="//tei:listPerson/tei:person">
            <xsl:variable name="id-verse-person" select="//tei:l[.//tei:persName[@ref = concat('#', current()/@xml:id)]]/@xml:id"/>
            <h3>
              <xsl:value-of select="tei:persName"/>
              <xsl:text> (</xsl:text>
              <xsl:value-of select="count($id-verse-person)"/>
              <xsl:text>)</xsl:text>
            </h3>
            <p>
              <xsl:value-of select="tei:occupation"/>
            </p>

            <ul>
              <xsl:for-each select="$id-verse-person">
                <li>
                  <a href="{.}">
                    <xsl:value-of select="."/>
                  </a>
                </li>
              </xsl:for-each>
            </ul>
          </xsl:for-each>

        </div>

<!-- all this must go in a different stylesheet -->
     <!--   <div>

          <h2>
            <xsl:value-of select="//tei:listPlace/tei:head"/>
          </h2>

          <xsl:for-each select="//tei:listPlace/tei:place">

            <xsl:variable name="id-verse-place" select="//tei:l[.//tei:placeName[@ref = concat('#', current()/@xml:id)]]/@xml:id"/>
            <xsl:variable name="id-verse-geog" select="//tei:l[.//tei:geogName[@ref = concat('#', current()/@xml:id)]]/@xml:id"/>


            <xsl:choose>

              <xsl:when test="child::tei:placeName">

                <h3>
                  <xsl:value-of select="."/>
                  <xsl:text> (</xsl:text>
                  <xsl:value-of select="count($id-verse-place)"/>
                  <xsl:text>)</xsl:text>
                </h3>

                <ul>

                  <xsl:for-each select="$id-verse-place">
                    <li>
                      <a href="{.}">
                        <xsl:value-of select="."/>
                      </a>
                    </li>
                  </xsl:for-each>

                </ul>

              </xsl:when>

              <xsl:when test="child::tei:geogName">

                <h3>
                  <xsl:value-of select="."/>
                  <xsl:text> (</xsl:text>
                  <xsl:value-of select="count($id-verse-geog)"/>
                  <xsl:text>)</xsl:text>
                </h3>

                <ul>

                  <xsl:for-each select="$id-verse-geog">
                    <li>
                      <a href="{.}">
                        <xsl:value-of select="."/>
                      </a>
                    </li>
                  </xsl:for-each>

                </ul>
              </xsl:when>

            </xsl:choose>

          </xsl:for-each>

        </div>-->

        <!-- to improve with templates -->
        <div id="footer">
          <p>Edición, codificación y diseño gráfico de <a href="http://antoniorojascastro.com">Antonio Rojas Castro</a>.</p>
          <p>Ministerio de Economía y Competitividad. Todo Góngora II [I+D+I FFI2010-17349].</p>
          <p>Colonia, 2017. Segunda edición.</p>
          <p>La imagen del encabezado es una pintura de Rubens titulada <em>Danza de personajes mitológicos y aldeanos</em>.</p>
          <p><img class="iconocc" src="images/creativecommons.png" alt="icono"/>Esta obra se publica con una <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">licencia de Creative
              Commons Reconocimiento 4.0 Internacional</a>.</p>
          <p>
            <a class="plain" href="/">Volver arriba &#8593;</a>
          </p>
        </div>
      </body>
    </html>

  </xsl:template>



</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

  <xsl:output method="html"/>

  <xsl:template match="/">

    <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
    <html lang="es" xmlns="http://www.w3.org/1999/xhtml">
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
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>
        <style>
          /* Remove the navbar's default margin-bottom and rounded borders */
          .navbar{
            margin-bottom: 0;
            border-radius: 0;
          }
          
          /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
          .row.content{
            height: 450px
          }
          
          /* Set gray background color and 100% height */
          .sidenav{
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
          }
          
          /* Set black background color, white text and some padding */
          footer{
            background-color: #555;
            color: white;
            padding: 15px;
          }
          
          /* On small screens, set height to 'auto' for sidenav and grid */
          @media screen and (max-width : 767px){
            .sidenav{
              height: auto;
              padding: 15px;
            }
            .row.content{
              height: auto;
            }
          }</style>
      </head>

      <body>

        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"/>
                <span class="icon-bar"/>
                <span class="icon-bar"/>
              </button>
              <a class="navbar-brand" href="index.html">
                <xsl:value-of select="//tei:titleStmt/tei:title"/>
              </a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Estudio <span class="caret"/></a>
                  <ul class="dropdown-menu">
                    <li>
                      <a href="titulo.html">Título</a>
                    </li>
                    <li>
                      <a href="plan.html">Plan</a>
                    </li>
                    <li>
                      <a href="asunto.html">Asunto</a>
                    </li>
                    <li>
                      <a href="protagonista.html">Protagonista</a>
                    </li>
                    <li>
                      <a href="metrica.html">Métrica</a>
                    </li>
                    <li>
                      <a href="situacion_enunciativa.html">Situación enunciativa</a>
                    </li>
                    <li class="active">
                      <a href="genero_literario.html">Género literario</a>
                    </li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Edición<span class="caret"/></a>
                  <ul class="dropdown-menu">
                    <li>
                      <a href="dedicatoria.html">Dedicatoria</a>
                    </li>
                    <li>
                      <a href="soledad_primera.html">Soledad primera</a>
                    </li>
                    <li>
                      <a href="soledad_segunda.html">Soledad segunda</a>
                    </li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Testimonios<span class="caret"/></a>
                  <ul class="dropdown-menu">
                    <li>
                      <a href="manuscritos.html">Manuscritos</a>
                    </li>
                    <li>
                      <a href="impresos.html">Impresos</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="../../criterios_editoriales.html">Criterios editoriales</a>
                </li>
                <li class="dropdown">
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Índice<span class="caret"/></a>
                  <ul class="dropdown-menu">
                    <li>
                      <a href="onomastico_html">Onomástico</a>
                    </li>
                    <li>
                      <a href="toponimos.html">Topónimos</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="bibliografia.html">Bibliografía</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>

        <div class="container-fluid text-center">

          <div class="row content">

            <div class="col-sm-2 sidenav">
              <!--<p><a href="#">Dedicatoria</a></p>
          <p><a href="#">Soledad primera</a></p>
          <p><a href="#">Soledad segunda</a></p>-->
            </div>

            <div class="col-sm-8 text-left">

              <xsl:apply-templates select="//tei:front/tei:div/tei:div[@xml:id = 'genero_literario']"/>

            </div>

            <div class="col-sm-2 sidenav"/>

          </div>

        </div>

        <footer class="container-fluid text-center">
          <p>
            <xsl:value-of select="//tei:titleStmt/tei:respStmt/tei:resp"/>
            <a href="{//tei:titleStmt/tei:respStmt/tei:persName/@ref}">
              <xsl:value-of select="//tei:titleStmt/tei:respStmt/tei:persName"/>
            </a>
          </p>
          <p>
            <xsl:value-of select="//tei:funder"/>
          </p>
          <p>
            <xsl:value-of select="//tei:publicationStmt/tei:pubPlace"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="//tei:editionStmt/tei:edition/@n"/>
            <sup>a</sup>
            <xsl:text> edición de </xsl:text>
            <xsl:value-of select="//tei:editionStmt/tei:edition/tei:date"/>
          </p>
          <p>
            <img class="iconocc" src="creativecommons.png" alt="icono"/>
            <xsl:text> Esta edición se publica con una licencia </xsl:text>
            <a href="{//tei:licence/@target}">
              <xsl:value-of select="//tei:licence"/>
            </a>
          </p>
        </footer>

      </body>

    </html>

  </xsl:template>

  <xsl:template match="//tei:head[@type='sub']">
    <h1 xmlns="http://www.w3.org/1999/xhtml">
      <xsl:apply-templates/>
    </h1>
  </xsl:template>


  <xsl:template match="//tei:hi[@rend='italic']">
      <em xmlns="http://www.w3.org/1999/xhtml">
        <xsl:value-of select="."/>
      </em>
  </xsl:template>

  <xsl:template match="//tei:q">
    <blockquote xmlns="http://www.w3.org/1999/xhtml">
<xsl:apply-templates/>
    </blockquote>
  </xsl:template>


  <xsl:template match="tei:p">
    <p xmlns="http://www.w3.org/1999/xhtml">
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="//tei:list">
    <ul xmlns="http://www.w3.org/1999/xhtml">
      <xsl:apply-templates/>
    </ul>
  </xsl:template>

  <xsl:template match="//tei:item">
    <li xmlns="http://www.w3.org/1999/xhtml">
      <xsl:value-of select="."/>
    </li>
  </xsl:template>

  <xsl:template match="//tei:ref">
    <a  href="bibliografia.html{./@target}" xmlns="http://www.w3.org/1999/xhtml">
      <xsl:value-of select="."/>
    </a>
  </xsl:template>


</xsl:stylesheet>

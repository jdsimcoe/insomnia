<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="toolkit.xsl"/>
<xsl:import href="date-time-advanced.xsl" />
<xsl:import href="navigation.xsl"/>
<xsl:import href="globals.xsl"/>

<xsl:output method="xml"
    doctype-public="XSLT-compat"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" />


<xsl:param name="cookie-username" />

<xsl:template match="/">

  <html lang="en">
  <head>
    <xsl:choose>
      <xsl:when test="$page-title = 'Home' or $page-title = 'Error'">
        <title>
          <xsl:value-of select="$website-name"/>
          <xsl:text> · </xsl:text>
          <xsl:value-of select="$website-subtitle"/>
        </title>
      </xsl:when>
      <xsl:otherwise>
        <title>
          <xsl:value-of select="/data/page-data-single/entry/title" />
          <xsl:text> · </xsl:text>
          <xsl:value-of select="$website-name"/>
          <xsl:text> · </xsl:text>
          <xsl:value-of select="$website-subtitle"/>
        </title>
      </xsl:otherwise>
    </xsl:choose>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="Jonathan Simcoe / Simko.io" />
    <meta name="responsimage" data-server="{$root}/image/2/width/height/anchor/0/uploads/images/filename" data-static="{$workspace}/assets/img/spacer.gif" data-loading="{$workspace}/assets/img/loading.gif" />

    <link rel="dns-prefetch" href="{$root}" />
    <link rel="dns-prefetch" href="//www.google-analytics.com"/>
    <link rel="dns-prefetch" href="//use.typekit.net" />

    <link href="{$workspace}/assets/css/main.css" rel="stylesheet" />
    <link href="{$root}/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link rel="apple-touch-icon-precomposed" href="{$root}/apple-touch-icon-precomposed.png" />

    <script type="text/javascript" src="//use.typekit.net/oku4uwn.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>
    <script type="text/javascript" src="{$workspace}/assets/js/application.min.js"></script>

    <script>
      <xsl:comment>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-4548059-10', 'auto');
        ga('send', 'pageview');
      </xsl:comment>
    </script>

  </head>

  <body id="{$root-page}">

    <xsl:apply-templates select="data/navigation-primary"/>

    <div id="main">

      <xsl:apply-templates select="data/page-data-single/entry" mode="background"/>

      <div class="overlay">&#160;</div>

      <ul class="nav nav-pills pull-left hidden-xs">
        <li class="pull-left">
          <a class="navbar-brand solo" href="/">
            <h4>insomnia</h4>
            <h5>
              <span class="light">—</span>
              <xsl:text>coffee co.</xsl:text>
              <span class="light">—</span>
            </h5>
          </a>
        </li>
      </ul>
      <ul class="nav nav-pills pull-right hidden-xs">
        <xsl:apply-templates select="data/navigation-primary/page" />
        <li>
          <a href="https://squareup.com/market/insomnia-coffee-baseline" target="_blank">
            <strong>Store</strong>
            <small>shop our stuff</small>
          </a>
        </li>
      </ul>

      <xsl:apply-templates select="data/page-data-single/entry" mode="quote" />



    </div>

    <div id="content">
      <xsl:apply-templates select="data/page-data-single/entry" mode="content" />
      <xsl:apply-templates />
    </div>

    <footer class="footer">


      <div class="container">

        <div class="row">
          <xsl:apply-templates select="data/locations-all/entry" mode="footer"/>
        </div>

        <div class="row copy">
          <div class="col-lg-12">
            <p class="center">
              <xsl:choose>
                <xsl:when test="$this-year = 2013">
                  <xsl:text>&#xa9;&#160;</xsl:text>
                  <xsl:value-of select="$this-year" />
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>&#xa9;&#160;2013–</xsl:text>
                  <xsl:value-of select="$this-year" />
                </xsl:otherwise>
              </xsl:choose>
              <xsl:text>.&#160;</xsl:text>
              <xsl:value-of select="$website-name"/>
              <xsl:text> All rights reserved.</xsl:text>
              <xsl:text>&#160;&#160;•&#160;&#160;Designed &amp; coded by </xsl:text>
              <a href="http://simko.io/"><strong>Simko.io</strong></a>
             </p>
          </div>

        </div>
      </div><!-- .container -->
    </footer>

    <xsl:call-template name="livereload"/>

  </body>

</html>

</xsl:template>


</xsl:stylesheet>
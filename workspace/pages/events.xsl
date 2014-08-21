<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../utilities/master.xsl"/>


<xsl:template match="data">

  <div class="event-content">

    <xsl:choose>
      <xsl:when test="string-length($title)">

        <xsl:apply-templates select="events-single/entry" mode="main"/>
        <br/><br/>

      </xsl:when>
      <xsl:otherwise>

        <div class="blank-bar">
          <div class="center">
            <i class="icon-grinder icon-medium"></i>
          </div>
          <h4>Events</h4>
          <p class="lead">join us for some good, old-fashioned fun!</p>
          <br/>
        </div>

        <div class="container">
          <div class="row">
            <xsl:apply-templates select="events-all/entry" mode="main" />
          </div>
        </div>

        <br/><br/>

      </xsl:otherwise>
    </xsl:choose>

  </div>

</xsl:template>


<xsl:template match="events-single/entry" mode="main">

  <div class="event-single">

  <xsl:variable name="address-string">
    <xsl:value-of select="location/item/address"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="location/item/city"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="location/item/zip"/>
  </xsl:variable>

    <div class="container">

      <div class="row">

        <div class="col-md-3 sidebar">
          <div class="links">
            <a href="{$root}/events" class="btn-block">↰&#160;&#160;&#160;Events</a>
          </div>

          <br/>
          <h3 class="center visible-sm visible-xs" style="border-top:10px solid {location/item/color};padding-top:10px;position:relative;top:-4px;"><xsl:value-of select="title"/></h3>
          <xsl:if test="string-length(artwork/item/image)">
            <img class="img-responsive img-rounded visible-sm visible-xs" width="100%">
              <xsl:attribute name="data-responsimage">
                <xsl:value-of select="artwork/item/image"/>
              </xsl:attribute>
            </img>
            <br/>
          </xsl:if>
          <br/>
          <address>
            <strong><xsl:value-of select="location/item/title"/> Location</strong><br/>
            <xsl:value-of select="location/item/address"/><br/>
            <xsl:value-of select="location/item/city"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="location/item/state"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="location/item/zip"/><br/>
            <xsl:value-of select="location/item/phone"/>
          </address>
          <hr/>

          <a href="http://maps.google.com/maps?q=Insomnia%20Coffee%20Co.%20{$address-string}" target="_blank">
            <img>
              <xsl:attribute name="src">
                <xsl:text>http://maps.googleapis.com/maps/api/staticmap?center=</xsl:text>
                <xsl:value-of select="$address-string"/>
                <xsl:text>&amp;markers=</xsl:text>
                <xsl:value-of select="$address-string"/>
                <xsl:text>&amp;zoom=13&amp;size=262x330&amp;maptype=roadmap&amp;sensor=false&amp;visual_refresh=true</xsl:text>
              </xsl:attribute>
            </img>
          </a>
        </div> <!-- .sidebar -->

        <div class="col-md-9 main-content">
          <h2 class="visible-md visible-lg" style="border-top:10px solid {location/item/color};padding-top:10px;position:relative;top:-4px;"><xsl:value-of select="title"/></h2>
          <p class="lead date">
            <xsl:for-each select="date/date">
              <xsl:if test="position() = 2">
                <br/>
              </xsl:if>
              <i class="glyphicon glyphicon-time"></i>
              <em>
                <xsl:text>&#160;&#160;</xsl:text>
                <xsl:call-template name="format-date">
                  <xsl:with-param name="date" select="./start/@iso" />
                  <xsl:with-param name="format" select="'%m+; %d;%ds;, %y+; (#h;:#m;#s; #TS;)'" />
                </xsl:call-template>
              </em>
            </xsl:for-each>
          </p>
          <xsl:if test="string-length(artwork/item/image)">
            <img class="img-responsive img-rounded visible-md visible-lg" width="100%">
              <xsl:attribute name="data-responsimage">
                <xsl:value-of select="artwork/item/image"/>
              </xsl:attribute>
            </img>
            <br/>
          </xsl:if>

          <xsl:value-of select="description" disable-output-escaping="yes"/>

        </div> <!-- .main-content -->

      </div> <!-- .row -->

    </div> <!-- .container -->

</div> <!-- .event-single -->

</xsl:template>


</xsl:stylesheet>
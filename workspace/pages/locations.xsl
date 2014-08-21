<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../utilities/master.xsl"/>


<xsl:template match="data">

  <div class="location-content">

    <xsl:choose>
      <xsl:when test="string-length($title)">

        <xsl:apply-templates select="locations-single/entry" mode="main"/>
        <br/><br/>

      </xsl:when>
      <xsl:otherwise>

        <div class="blank-bar">
          <div class="center">
            <i class="icon-bean icon-medium"></i>
          </div>
          <h4>Locations</h4>
          <p class="lead">visit our signature locations in the Pacific NW</p>
          <br/>
        </div>

        <div class="container">
          <div class="row">
            <xsl:apply-templates select="locations-all/entry" mode="main" />
          </div>
        </div>

        <br/><br/>

      </xsl:otherwise>
    </xsl:choose>

  </div>

</xsl:template>


<xsl:template match="locations-single/entry" mode="main">

  <xsl:variable name="address-string">
    <xsl:value-of select="address"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="city"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="zip"/>
  </xsl:variable>

  <div class="container">

    <div class="row">

      <div class="col-md-3 sidebar">
        <div class="links">
          <a href="{$root}/locations" class="btn-block">↰&#160;&#160;&#160;Locations</a>
        </div>
        <br/>
        <h3 class="center visible-sm visible-xs"><xsl:value-of select="title"/></h3>

        <xsl:choose>
          <xsl:when test="/data/images-locations/entry">
            <div id="carousel-locations" class="visible-sm visible-xs carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#carousel-locations" data-slide-to="0" class="active"></li>
                <xsl:for-each select="/data/images-locations/entry">
                  <li data-target="#carousel-locations">
                    <xsl:attribute name="data-slide-to">
                      <xsl:value-of select="position()"/>
                    </xsl:attribute>
                  </li>
                </xsl:for-each>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                  <img class="img-responsive img-rounded" width="100%" >
                    <xsl:attribute name="data-responsimage">
                      <xsl:value-of select="image/item/image"/>
                    </xsl:attribute>
                  </img>
                </div>
                <xsl:for-each select="/data/images-locations/entry">
                  <div class="item">
                    <img class="img-responsive img-rounded" width="847px">
                      <xsl:attribute name="data-responsimage">
                        <xsl:value-of select="image"/>
                      </xsl:attribute>
                    </img>
                  </div>
                </xsl:for-each>

              </div>

              <!-- Controls -->
              <a class="left carousel-control" href="#carousel-locations" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left icon-medium"></span>
              </a>
              <a class="right carousel-control" href="#carousel-locations" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right icon-medium"></span>
              </a>
            </div>

          </xsl:when>
          <xsl:otherwise>
            <img class="img-responsive" width="100%">
              <xsl:attribute name="data-responsimage">
                <xsl:value-of select="image/item/image"/>
              </xsl:attribute>
            </img>
          </xsl:otherwise>
        </xsl:choose>

        <br/>
        <address>
          <xsl:value-of select="address"/><br/>
          <xsl:value-of select="city"/>
          <xsl:text>, </xsl:text>
          <xsl:value-of select="state"/>
          <xsl:text> </xsl:text>
          <xsl:value-of select="zip"/><br/>
          <xsl:value-of select="phone"/>
        </address>
        <hr/>
        <div class="hours">
          <xsl:value-of select="hours" disable-output-escaping="yes"/>
        </div>
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
      </div>
      <div class="col-md-9 main-content">
        <h2 class="visible-md visible-lg"><xsl:value-of select="title"/></h2>
        <xsl:choose>
          <xsl:when test="/data/images-locations/entry">
            <div id="carousel-locations" class="visible-md visible-lg carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#carousel-locations" data-slide-to="0" class="active"></li>
                <xsl:for-each select="/data/images-locations/entry">
                  <li data-target="#carousel-locations">
                    <xsl:attribute name="data-slide-to">
                      <xsl:value-of select="position()"/>
                    </xsl:attribute>
                  </li>
                </xsl:for-each>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                  <img class="img-responsive img-rounded" width="100%" >
                    <xsl:attribute name="data-responsimage">
                      <xsl:value-of select="image/item/image"/>
                    </xsl:attribute>
                  </img>
                </div>
                <xsl:for-each select="/data/images-locations/entry">
                  <div class="item">
                    <img class="img-responsive img-rounded" width="847px">
                      <xsl:attribute name="data-responsimage">
                        <xsl:value-of select="image"/>
                      </xsl:attribute>
                    </img>
                  </div>
                </xsl:for-each>

              </div>

              <!-- Controls -->
              <a class="left carousel-control" href="#carousel-locations" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left icon-medium"></span>
              </a>
              <a class="right carousel-control" href="#carousel-locations" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right icon-medium"></span>
              </a>
            </div>

          </xsl:when>
          <xsl:otherwise>
            <img class="img-responsive" width="100%">
              <xsl:attribute name="data-responsimage">
                <xsl:value-of select="image/item/image"/>
              </xsl:attribute>
            </img>
          </xsl:otherwise>
        </xsl:choose>
        <br/>
        <xsl:value-of select="description" disable-output-escaping="yes"/>

        <xsl:if test="string-length(/data/events-locations/entry)">
          <h4 class="center">Upcoming Events</h4>
          <hr/>
          <xsl:apply-templates select="/data/events-locations/entry" mode="main"/>
        </xsl:if>

      </div>

    </div>

  </div>

</xsl:template>


</xsl:stylesheet>
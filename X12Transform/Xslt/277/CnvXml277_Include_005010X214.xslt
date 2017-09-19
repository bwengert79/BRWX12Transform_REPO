<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TransactionSet[@id = '277']">
    <xsl:apply-templates select="Loop[@id = '2000A']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000A']">
    <div class="section">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">+</span> Information Source Detail
        &#160;&#160;
        <xsl:call-template name="qty02_or_zero">
          <xsl:with-param name="theLabel"><xsl:text>Accepted</xsl:text></xsl:with-param>
          <xsl:with-param name="theQTY" select="Loop[@id = '2000B']/Loop[@id = '2200B']/QTY[QTY01 = '90']">
          </xsl:with-param>
        </xsl:call-template>
        &#160;&#160;
        <xsl:call-template name="qty02_or_zero">
          <xsl:with-param name="theLabel">
            <xsl:text>Rejected</xsl:text>
          </xsl:with-param>
          <xsl:with-param name="theQTY" select="Loop[@id = '2000B']/Loop[@id = '2200B']/QTY[QTY01 = 'AA']">
          </xsl:with-param>
        </xsl:call-template>
      </div>
      <div class="secContent" style="display:none">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100A']" />
          <xsl:apply-templates select="Loop[@id = '2200A']" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2000B']" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100A']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2200A']">
    <xsl:apply-templates select="TRN" />
    <xsl:apply-templates select="DTP" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000B']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Information Receiver Detail
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100B']" />
          <xsl:apply-templates select="Loop[@id = '2200B']" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2000C']" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100B']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2200B']">
    <xsl:apply-templates select="TRN" />
    <xsl:apply-templates select="STC" />
    <xsl:apply-templates select="QTY" />
    <xsl:apply-templates select="AMT" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000C']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Billing Provider of Service Detail
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100C']" />
          <xsl:apply-templates select="Loop[@id = '2200C']" />
        </table>

        <div class="tabBox indent">
          <a hidefocus="true" class="tabLink activeLink" onclick="onTabClick()">Rejected Claims</a>
          <a hidefocus="true" class="tabLink" onclick="onTabClick()">Accepted Claims</a>
          <xsl:call-template name="toggle_all_tab_sections">
            <xsl:with-param name="btnText">
              <xsl:text>Expand All Patient Information</xsl:text>
            </xsl:with-param>
          </xsl:call-template>
        </div>

        <div class="tabContent indent">
          <div class="tabItem">
            <xsl:apply-templates select="Loop[@id = '2000D'] [Loop[@id = '2200D'] [STC/STC01[contains('A3 A4 A6 A7 A8 F2 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 E0 E1 E2 E3 E4 D0', STC01-01)]] ]" >
              <xsl:sort select="Loop/NM1/NM103"/>
              <xsl:sort select="Loop/NM1/NM104"/>
            </xsl:apply-templates>
          </div>
          <div class="tabItem hide">
            <xsl:apply-templates select="Loop[@id = '2000D'] [Loop[@id = '2200D'] [STC/STC01[not(contains('A3 A4 A6 A7 A8 F2 R4 R5 R6 R7 R8 R9 R10 R11 R12 R13 R14 R15 R16 E0 E1 E2 E3 E4 D0', STC01-01))]] ]" >
              <xsl:sort select="Loop/NM1/NM103"/>
              <xsl:sort select="Loop/NM1/NM104"/>
            </xsl:apply-templates>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100C']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2200C']">
    <xsl:apply-templates select="TRN" />
    <xsl:apply-templates select="STC" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="QTY" />
    <xsl:apply-templates select="AMT" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000D']">
    <div class="section">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">+</span> Patient Detail
        <xsl:if test="Loop[@id = '2100D']/NM1/NM101 = 'QC' and Loop[@id = '2100D']/NM1/NM102 = '1'">
          &#160;-&#160;
          <xsl:value-of select="Loop[@id = '2100D']/NM1/NM103"/>
          <xsl:if test="string-length(normalize-space(Loop[@id = '2100D']/NM1/NM104))!=0">,&#160;<xsl:value-of select="Loop[@id = '2100D']/NM1/NM104"/></xsl:if>
          <xsl:if test="string-length(normalize-space(Loop[@id = '2100D']/NM1/NM105))!=0">&#160;<xsl:value-of select="Loop[@id = '2100D']/NM1/NM105"/>
          </xsl:if>
        </xsl:if>
        &#160;-&#160;
        <xsl:value-of select="Loop[@id = '2200D']/TRN/TRN02"/>
      </div>
      <div class="secContent" style="display:none">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100D']" />
          <xsl:apply-templates select="Loop[@id = '2200D']" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100D']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2200D']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Claim Status</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="TRN" />
    <xsl:apply-templates select="STC" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="DTP" />
    <xsl:apply-templates select="Loop[@id = '2220D']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2220D']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Service Line</xsl:text>
      </xsl:with-param>
    </xsl:call-template>    
    <xsl:apply-templates select="SVC" />
    <xsl:apply-templates select="STC" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="DTP" />
  </xsl:template>

  <xsl:template name="qty02_or_zero">
    <xsl:param name="theLabel"/>
    <xsl:param name="theQTY"/>
    <span><xsl:value-of select="$theLabel"/>: </span>
    <xsl:choose>
      <xsl:when test="$theQTY/QTY02[node()]">
        <xsl:value-of select="$theQTY/QTY02"/>
      </xsl:when>
      <xsl:otherwise>
        0
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>

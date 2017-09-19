<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TransactionSet[@id = '277']">
    <xsl:apply-templates select="Loop[@id = '2000A']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000A']">
    <div class="section">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Information Source Detail
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100A']" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2000B']" />
      </div>
    </div>

  </xsl:template>

  <xsl:template match="Loop[@id = '2100A']">
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="PER" />
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
  </xsl:template>

  <xsl:template match="Loop[@id = '2000C']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Service Provider Detail
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
        <xsl:apply-templates select="Loop[@id = '2000D']" />
      </div>
    </div>  
  </xsl:template>

  <xsl:template match="Loop[@id = '2100C']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2200C']">
    <xsl:apply-templates select="TRN" />
    <xsl:apply-templates select="STC" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000D']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Subscriber Detail
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100D']" />
          <xsl:apply-templates select="Loop[@id = '2200D']" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2000E']" />
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

  <xsl:template match="Loop[@id = '2000E']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Dependent Detail
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100E']" />
          <xsl:apply-templates select="Loop[@id = '2200E']" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100E']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2200E']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Claim Status</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="TRN" />
    <xsl:apply-templates select="STC" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="DTP" />
    <xsl:apply-templates select="Loop[@id = '2220E']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2220E']">
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

</xsl:stylesheet>

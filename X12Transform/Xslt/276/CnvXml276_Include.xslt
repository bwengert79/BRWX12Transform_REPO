<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TransactionSet[@id = '276']">
    <xsl:apply-templates select="Loop[@id = '2000A']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000A']">
    <div class="section">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Payer Information
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
  </xsl:template>

  <xsl:template match="Loop[@id = '2000B']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Receiver Information
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100B']" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2000C']" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100B']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000C']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Service Provider Information
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="Loop[@id = '2100C']" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2000D']" />
      </div>
    </div>  
  </xsl:template>

  <xsl:template match="Loop[@id = '2100C']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000D']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Subscriber Information
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
    <tr>
      <td class="subsection">*** Claim Status ***</td>
    </tr>
    <xsl:apply-templates select="TRN" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="AMT" />
    <xsl:apply-templates select="DTP" />
    <xsl:apply-templates select="Loop[@id = '2210D']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2210D']">
    <tr>
      <td class="subsection">*** Service Line ***</td>
    </tr>
    <xsl:apply-templates select="SVC" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="DTP" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000E']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Dependent Information
      </div>
      <div class="secContent">
        <xsl:apply-templates select="Loop[@id = '2100E']" />
        <xsl:apply-templates select="Loop[@id = '2200E']" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100E']">
    <xsl:apply-templates select="NM1" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2200E']">
    <tr>
      <td class="subsection">*** Claim Status ***</td>
    </tr>
    <xsl:apply-templates select="TRN" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="AMT" />
    <xsl:apply-templates select="DTP" />
    <xsl:apply-templates select="Loop[@id = '2210E']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2210E']">
    <tr>
      <td class="subsection">*** Service Line ***</td>
    </tr>
    <xsl:apply-templates select="SVC" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="DTP" />
  </xsl:template>

</xsl:stylesheet>

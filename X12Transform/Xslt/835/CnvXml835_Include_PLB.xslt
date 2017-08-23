<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="PLB">

    <xsl:if test="normalize-space(PLB01)">
      <tr>
        <td class="label">Provider Identification: </td>
        <td class="data1">
          <xsl:value-of select="PLB01"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(PLB02)">
      <tr>
        <td class="label">Fiscal Period Date: </td>
        <td class="data1">
          <xsl:call-template name="format_date">
            <xsl:with-param name="theDate">
              <xsl:value-of select="PLB02"/>
            </xsl:with-param>
          </xsl:call-template>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(PLB03)">
      <xsl:call-template name="PLB_adjustment">
        <xsl:with-param name="theCode">
          <xsl:value-of select="PLB03/PLB03-01"/>
        </xsl:with-param>
        <xsl:with-param name="theID">
          <xsl:value-of select="PLB03/PLB03-02"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="PLB04"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(PLB05)">
      <xsl:call-template name="PLB_adjustment">
        <xsl:with-param name="theCode">
          <xsl:value-of select="PLB05/PLB05-01"/>
        </xsl:with-param>
        <xsl:with-param name="theID">
          <xsl:value-of select="PLB05/PLB05-02"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="PLB06"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(PLB07)">
      <xsl:call-template name="PLB_adjustment">
        <xsl:with-param name="theCode">
          <xsl:value-of select="PLB07/PLB07-01"/>
        </xsl:with-param>
        <xsl:with-param name="theID">
          <xsl:value-of select="PLB07/PLB07-02"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="PLB08"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(PLB09)">
      <xsl:call-template name="PLB_adjustment">
        <xsl:with-param name="theCode">
          <xsl:value-of select="PLB09/PLB09-01"/>
        </xsl:with-param>
        <xsl:with-param name="theID">
          <xsl:value-of select="PLB09/PLB09-02"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="PLB10"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(PLB11)">
      <xsl:call-template name="PLB_adjustment">
        <xsl:with-param name="theCode">
          <xsl:value-of select="PLB11/PLB11-01"/>
        </xsl:with-param>
        <xsl:with-param name="theID">
          <xsl:value-of select="PLB11/PLB11-02"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="PLB12"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(PLB13)">
      <xsl:call-template name="PLB_adjustment">
        <xsl:with-param name="theCode">
          <xsl:value-of select="PLB13/PLB13-01"/>
        </xsl:with-param>
        <xsl:with-param name="theID">
          <xsl:value-of select="PLB13/PLB13-02"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="PLB14"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

  </xsl:template>

  <xsl:template name="PLB_adjustment">
    <xsl:param name="theCode"/>
    <xsl:param name="theID"/>
    <xsl:param name="theAmt"/>

    <tr>
      <td class="label">Adjustment Reason Code: </td>
      <td class="data1">
        <xsl:value-of select="$theCode"/>
        -
        <xsl:value-of select="$codelist/remit_codelist/plb/codelist/code[@id=$theCode]"/>
      </td>
    </tr>

    <xsl:if test="normalize-space($theID)">
      <tr>
        <td class="label">Provider Adjustment Identifier: </td>
        <td class="data1">
          <xsl:value-of select="$theID"/>
        </td>
      </tr>
    </xsl:if>

    <tr>
      <td class="label">Adjustment Amount: </td>
      <td class="data1">
        <xsl:value-of select="$theAmt"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

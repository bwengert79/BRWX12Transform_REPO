<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CAS">

    <xsl:if test="normalize-space(CAS01)">
      <tr>
        <td class="label">Claim Adjustment Group Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CAS01 = 'CO'">Contractual Obligations</xsl:when>
            <xsl:when test="CAS01 = 'CR'">Correction and Reversals</xsl:when>
            <xsl:when test="CAS01 = 'OA'">Other Adjustments</xsl:when>
            <xsl:when test="CAS01 = 'PI'">Payor Initiated Reductions</xsl:when>
            <xsl:when test="CAS01 = 'PR'">Patient Responsibility</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CAS01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CAS02)">
      <xsl:call-template name="CAS_claim_adjustment">
        <xsl:with-param name="theCARC">
          <xsl:value-of select="CAS02"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="CAS03"/>
        </xsl:with-param>
        <xsl:with-param name="theQty">
          <xsl:value-of select="CAS04"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(CAS05)">
      <xsl:call-template name="CAS_claim_adjustment">
        <xsl:with-param name="theCARC">
          <xsl:value-of select="CAS05"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="CAS06"/>
        </xsl:with-param>
        <xsl:with-param name="theQty">
          <xsl:value-of select="CAS07"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(CAS08)">
      <xsl:call-template name="CAS_claim_adjustment">
        <xsl:with-param name="theCARC">
          <xsl:value-of select="CAS08"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="CAS09"/>
        </xsl:with-param>
        <xsl:with-param name="theQty">
          <xsl:value-of select="CAS10"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(CAS11)">
      <xsl:call-template name="CAS_claim_adjustment">
        <xsl:with-param name="theCARC">
          <xsl:value-of select="CAS11"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="CAS12"/>
        </xsl:with-param>
        <xsl:with-param name="theQty">
          <xsl:value-of select="CAS13"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(CAS14)">
      <xsl:call-template name="CAS_claim_adjustment">
        <xsl:with-param name="theCARC">
          <xsl:value-of select="CAS14"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="CAS15"/>
        </xsl:with-param>
        <xsl:with-param name="theQty">
          <xsl:value-of select="CAS16"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(CAS17)">
      <xsl:call-template name="CAS_claim_adjustment">
        <xsl:with-param name="theCARC">
          <xsl:value-of select="CAS17"/>
        </xsl:with-param>
        <xsl:with-param name="theAmt">
          <xsl:value-of select="CAS18"/>
        </xsl:with-param>
        <xsl:with-param name="theQty">
          <xsl:value-of select="CAS19"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

  </xsl:template>

  <xsl:template name="CAS_claim_adjustment">
    <xsl:param name="theCARC"/>
    <xsl:param name="theAmt"/>
    <xsl:param name="theQty"/>

    <tr>
      <td class="label">Claim Adjustment Reason Code: </td>
      <td class="data1">
        <xsl:value-of select="$theCARC"/>
        -
        <xsl:value-of select="$codelist/remit_codelist/carc/codelist/code[@id=$theCARC]"/>
      </td>
    </tr>

    <tr>
      <td class="label">Adjustment Amount: </td>
      <td class="data1">
        <xsl:value-of select="$theAmt"/>
      </td>
    </tr>

    <xsl:if test="normalize-space($theQty)">
      <tr>
        <td class="label">Adjustment Quantity: </td>
        <td class="data1">
          <xsl:value-of select="$theQty"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>

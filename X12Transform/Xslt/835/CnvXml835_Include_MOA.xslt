<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="MOA">

    <xsl:if test="normalize-space(MOA01)">
      <tr>
        <td class="label">Reimbursement Rate: </td>
        <td class="data1">
          <xsl:value-of select="MOA01"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MOA02)">
      <tr>
        <td class="label">HCPCS Payable Amount: </td>
        <td class="data1">
          <xsl:value-of select="MOA02"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MOA03)">
      <xsl:call-template name="MOA_remark_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="MOA03"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(MOA04)">
      <xsl:call-template name="MOA_remark_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="MOA04"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(MOA05)">
      <xsl:call-template name="MOA_remark_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="MOA05"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(MOA06)">
      <xsl:call-template name="MOA_remark_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="MOA06"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(MOA07)">
      <xsl:call-template name="MOA_remark_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="MOA07"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(MOA08)">
      <tr>
        <td class="label">Claim ERSD Payment Amount: </td>
        <td class="data1">
          <xsl:value-of select="MOA08"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="normalize-space(MOA09)">
      <tr>
        <td class="label">Non-Payable Professional Component Amount: </td>
        <td class="data1">
          <xsl:value-of select="MOA09"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

  <xsl:template name="MOA_remark_code">
    <xsl:param name="theCode"/>

    <tr>
      <td class="label">Claim Payment Remark Code: </td>
      <td class="data1">
        <xsl:value-of select="$theCode"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

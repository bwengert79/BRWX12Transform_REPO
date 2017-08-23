<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TS3">

    <xsl:if test="normalize-space(TS301)">
      <tr>
        <td class="label">Provider Identifier: </td>
        <td class="data1">
          <xsl:value-of select="TS301"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS302)">
      <tr>
        <td class="label">Facility Type Code: </td>
        <td class="data1">
          <xsl:value-of select="TS302"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS303)">
      <tr>
        <td class="label">Fiscal Period Date: </td>
        <td class="data1">
          <xsl:call-template name="format_date">
          <xsl:with-param name="theDate">
              <xsl:value-of select="TS303"/>
          </xsl:with-param>
        </xsl:call-template>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS304)">
      <tr>
        <td class="label">Total Claim Count: </td>
        <td class="data1">
          <xsl:value-of select="TS304"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS305)">
      <tr>
        <td class="label">Total Claim Charge Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS305"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS313)">
      <tr>
        <td class="label">Total MSP Payer Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS313"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS315)">
      <tr>
        <td class="label">Total Non-Lab Charge Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS315"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS317)">
      <tr>
        <td class="label">Total HCPCS Report Charge Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS317"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS318)">
      <tr>
        <td class="label">Total HCPCS Payable Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS318"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS320)">
      <tr>
        <td class="label">Total Professional Component Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS320"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS321)">
      <tr>
        <td class="label">Total MSP Patient Liability Met Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS321"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS322)">
      <tr>
        <td class="label">Total Patient Reimbursement Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS322"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS323)">
      <tr>
        <td class="label">Total PIP Claim Count: </td>
        <td class="data1">
          <xsl:value-of select="TS323"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS324)">
      <tr>
        <td class="label">Total PIP Adjustment Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS324"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

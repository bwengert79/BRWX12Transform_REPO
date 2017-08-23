<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="LQ">

    <tr>
      <td class="label">Service Line Number: </td>
      <td class="data1">
        <xsl:value-of select="LQ01"/>
      </td>
    </tr>

    <tr>
      <td class="label">Format Identifier: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test="LQ02 = 'AA'">
            Form Type Code
          </xsl:when>
          <xsl:when test="LQ02 = 'UT'">
            Health Care Financing Administration (HCFA) Durable Medical Equipment Regional Carrier (DMERC) Certificate of Medical Necessity (CMN) Forms
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="LQ02"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>

    </tr>

  </xsl:template>

</xsl:stylesheet>

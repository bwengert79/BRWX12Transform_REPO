<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="LQ">

    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="LQ01 = 'HE'">Claim Payment Remark Code</xsl:when>
          <xsl:when test="LQ01 = 'RX'">National Council for Perription Drug Programs Reject/Payment Codes</xsl:when>
          <xsl:otherwise>Code List Qualifier Code (<xsl:value-of select="LQ01"/>)
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="LQ02"/>
      </td>
    </tr>

  </xsl:template>

</xsl:stylesheet>

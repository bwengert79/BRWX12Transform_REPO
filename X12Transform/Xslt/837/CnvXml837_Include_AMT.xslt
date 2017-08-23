<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="AMT">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="AMT01 = 'F5'">
            Patient Amount Paid:
          </xsl:when>
          <xsl:otherwise>
            Amount Qualifier Code (<xsl:value-of select="AMT01"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="AMT02"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

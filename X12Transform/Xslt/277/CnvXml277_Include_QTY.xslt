<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="QTY">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="QTY01 = '90'">
            Total Accepted Quantity:
          </xsl:when>
          <xsl:when test="QTY01 = 'AA'">
            Total Rejected Quantity:
          </xsl:when>
          <xsl:when test="QTY01 = 'QA'">
            Total Accepted Quantity:
          </xsl:when>
          <xsl:when test="QTY01 = 'QC'">
            Total Rejected Quantity:
          </xsl:when>
          <xsl:otherwise>
            Quantity (<xsl:value-of select="QTY01"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="QTY02"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

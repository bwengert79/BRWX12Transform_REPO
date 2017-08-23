<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="PS1">

    <xsl:if test="normalize-space(PS101)">
      <tr>
        <td class="label">Purchased Service Provider Identifier: </td>
        <td class="data1"><xsl:value-of select="PS101"/></td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(PS102)">
      <tr>
        <td class="label">Purchased Service Charge Amount: </td>
        <td class="data1"><xsl:value-of select="PS102"/></td>
      </tr>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>

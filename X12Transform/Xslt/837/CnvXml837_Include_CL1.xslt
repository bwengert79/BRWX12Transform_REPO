<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CL1">

    <xsl:if test="normalize-space(CL101)">
      <tr>
        <td class="label">Admission Type Code: </td>
        <td class="data1"><xsl:value-of select="CL101"/></td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CL102)">
      <tr>
        <td class="label">Admission Source Code: </td>
        <td class="data1"><xsl:value-of select="CL102"/></td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CL103)">
      <tr>
        <td class="label">Patient Status Code: </td>
        <td class="data1"><xsl:value-of select="CL103"/></td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="PRV">

    <tr>
      <xsl:choose>
        <xsl:when test="PRV02 = 'PXC'">
          <td class="label">Taxonomy Code: </td>
        </xsl:when>
        <xsl:otherwise>
          <td class="label">ID Qualifier: </td>
        </xsl:otherwise>
      </xsl:choose>

      <xsl:if test="string-length(normalize-space(PRV03))!=0">
        <td class="data1">
          <xsl:value-of select="PRV03"/>
        </td>
      </xsl:if>
    </tr>

  </xsl:template>

</xsl:stylesheet>

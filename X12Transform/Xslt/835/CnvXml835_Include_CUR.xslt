<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CUR">

    <tr>
      <td class="label">Entity Identifier Code: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test="CUR01 = 'PR'">Payer</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="CUR01"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
    
    <tr>
      <xsl:if test="normalize-space(CUR02)">
        <td class="label">Currency Code: </td>
        <td class="data1">
          <xsl:value-of select="CUR02"/>
        </td>
      </xsl:if>
    </tr>

  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CUR">

    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="CUR01 = '85'">
            Billing Provider:
          </xsl:when>
          <xsl:otherwise>
            ID Qualifier:
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:if test="string-length(normalize-space(CUR01))!=0 and CUR01 != '85'">
          <xsl:value-of select="CUR01"/>
        </xsl:if>
      </td>

      <xsl:if test="string-length(normalize-space(CUR02))!=0">
        <td class="label">Currency Code: </td>
        <td class="data1">
          <xsl:value-of select="CUR02"/>
        </td>
      </xsl:if>
    </tr>

  </xsl:template>

</xsl:stylesheet>

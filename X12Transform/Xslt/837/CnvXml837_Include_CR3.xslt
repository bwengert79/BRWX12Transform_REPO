<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CR3">

    <xsl:if test="normalize-space(CR301)">
      <tr>
        <td class="label">Certification Type Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CR301 = 'I'">
              Initial
            </xsl:when>
            <xsl:when test="CR301 = 'R'">
              Renewal
            </xsl:when>
            <xsl:when test="CR301 = 'S'">
              Revised
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CR301"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CR303)">
      <tr>
        <td class="label">Length of Time DME Equipment is needed: </td>
        <td class="data1">
          <xsl:value-of select="CR304"/>
          &#160;
          <xsl:value-of select="CR303"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>

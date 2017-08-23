<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="NTE">

    <xsl:if test="normalize-space(NTE01)">
      <tr>
        <td class="label">Note Reference Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="NTE01 = 'ADD'">
            </xsl:when>
            <xsl:when test="NTE01 = 'CER'">
            </xsl:when>
            <xsl:when test="NTE01 = 'DCP'">
            </xsl:when>
            <xsl:when test="NTE01 = 'DGN'">
            </xsl:when>
            <xsl:when test="NTE01 = 'TPO'">
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="NTE01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(NTE02)">
      <tr>
        <td class="label">Note: </td>
        <td class="data1">
          <xsl:value-of select="NTE02"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

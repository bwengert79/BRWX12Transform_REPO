<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CTP">

    <xsl:if test="normalize-space(CTP04)">
      <tr>
        <td class="label">National Drug Unit Count: </td>
        <td class="data1">
          <xsl:value-of select="CTP04"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CTP05)">
      <tr>
        <td class="label">Unit of Measure: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CTP05/CTP05-01 = 'F2'">
              International Unti
            </xsl:when>
            <xsl:when test="CTP05/CTP05-01 = 'GR'">
              Gram
            </xsl:when>
            <xsl:when test="CTP05/CTP05-01 = 'ME'">
              Milligram
            </xsl:when>
            <xsl:when test="CTP05/CTP05-01 = 'ML'">
              Milliliter
            </xsl:when>
            <xsl:when test="CTP05/CTP05-01 = 'UN'">
              Unit
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CTP05-01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="MEA">

    <xsl:if test="normalize-space(MEA01)">
      <tr>
        <td class="label">Measurement Reference Identification Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="MEA01 = 'OG'">
              Original
            </xsl:when>
            <xsl:when test="MEA01 = 'TR'">
              Test Results
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="MEA01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MEA02)">
      <tr>
        <td class="label">Measurement Qualifier: </td>
        <td class="data1">
          <xsl:value-of select="MEA02"/>
          &#160;
          <xsl:choose>
            <xsl:when test="MEA02 = 'HT'">
              Miles
            </xsl:when>
            <xsl:when test="MEA02 = 'R1'">
              Miles
            </xsl:when>
            <xsl:when test="MEA02 = 'R2'">
              Miles
            </xsl:when>
            <xsl:when test="MEA02 = 'R3'">
              Miles
            </xsl:when>
            <xsl:when test="MEA02 = 'R4'">
              Miles
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="MEA02"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MEA03)">
      <tr>
        <td class="label">Test Results: </td>
        <td class="data1">
          <xsl:value-of select="MEA03"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

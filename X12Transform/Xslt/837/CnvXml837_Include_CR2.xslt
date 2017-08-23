<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CR2">

    <xsl:if test="normalize-space(CR201)">
      <tr>
        <td class="label">Patient Condition Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CR201 = 'A'">
              Acute Condition
            </xsl:when>
            <xsl:when test="CR201 = 'C'">
              Chronic Condition
            </xsl:when>
            <xsl:when test="CR201 = 'D'">
              Non-acute
            </xsl:when>
            <xsl:when test="CR201 = 'E'">
              Non-Life Threatening
            </xsl:when>
            <xsl:when test="CR201 = 'F'">
              Routine
            </xsl:when>
            <xsl:when test="CR201 = 'G'">
              Symptomatic
            </xsl:when>
            <xsl:when test="CR201 = 'M'">
              Acute Manifestation of a Chronic Condition
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CR201"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CR209)">
      <tr>
        <td class="label">Description: </td>
        <td class="data1">
          <xsl:value-of select="CR209"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CR210)">
      <tr>
        <td class="label">Description: </td>
        <td class="data1">
          <xsl:value-of select="CR210"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>

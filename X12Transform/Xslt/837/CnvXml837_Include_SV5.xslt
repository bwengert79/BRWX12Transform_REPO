<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="SV5">

    <xsl:apply-templates select="SV501/SV501-01[node()]" />
    <xsl:apply-templates select="SV501/SV501-02[node()]" />

    <xsl:if test="normalize-space(SV502)">
      <tr>
        <td class="label">Unit or Basis Measurement Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="SV502 = 'DA'">Days</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="SV502"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SV503)">
      <tr>
        <td class="label">Length of Medical Necessity: </td>
        <td class="data1">
          <xsl:value-of select="SV503"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SV504)">
      <tr>
        <td class="label">DME Rental Price: </td>
        <td class="data1">
          <xsl:value-of select="SV504"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SV505)">
      <tr>
        <td class="label">DME Purchase Price: </td>
        <td class="data1">
          <xsl:value-of select="SV505"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SV506)">
      <tr>
        <td class="label">Frequency Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="SV506 = '1'">Weekly</xsl:when>
            <xsl:when test="SV506 = '4'">Monthly</xsl:when>
            <xsl:when test="SV506 = '6'">Daily</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="SV506"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

  <xsl:template match="SV501-01">
    <tr>
      <td class="label">Product or Service ID Qualifier: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test=". = 'HC'">HCPCS Code</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="."/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV501-02">
    <tr>
      <td class="label">Procedure Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

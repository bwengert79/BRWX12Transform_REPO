<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CR1">

    <xsl:if test="normalize-space(CR102)">
      <tr>
        <td class="label">Weight: </td>
        <td class="data1">
          <xsl:value-of select="CR102"/>
          &#160;
          <xsl:value-of select="CR101"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CR104)">
      <tr>
        <td class="label">Ambulance Transport Reason Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CR104 = 'A'">
              Patient was transported to nearest facility for care of symptoms, complaints, or both
            </xsl:when>
            <xsl:when test="CR104 = 'B'">
              Patient was transported for the benefit of a preferred physician
            </xsl:when>
            <xsl:when test="CR104 = 'C'">
              Patient was transported for the nearness of family members
            </xsl:when>
            <xsl:when test="CR104 = 'D'">
              Patient was transported for the care of a specialist or for availability of specialized equipment
            </xsl:when>
            <xsl:when test="CR104 = 'E'">
              Patient Transferred to Rehabilitation Facility
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CR104"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CR106)">
      <tr>
        <td class="label">Transport Distance: </td>
        <td class="data1">
          <xsl:value-of select="CR106"/>
          &#160;
          <xsl:choose>
            <xsl:when test="CR105 = 'DH'">
              Miles
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CR105"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CR109)">
      <tr>
        <td class="label">Description: </td>
        <td class="data1">
          <xsl:value-of select="CR109"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CR110)">
      <tr>
        <td class="label">Description: </td>
        <td class="data1">
          <xsl:value-of select="CR110"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

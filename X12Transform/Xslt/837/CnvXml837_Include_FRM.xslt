<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="FRM">

    <xsl:if test="normalize-space(FRM01)">
      <tr>
        <td class="label">Question Number/Letter: </td>
        <td class="data1">
          <xsl:value-of select="FRM01"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(FRM02)">
      <tr>
      <td class="label">Question Response: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test="FRM02 = 'N'">
            No
          </xsl:when>
          <xsl:when test="FRM02 = 'W'">
            Not Applicable
          </xsl:when>
          <xsl:when test="FRM02 = 'Y'">
            Yes
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="FRM02"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
    </xsl:if>

    <xsl:if test="normalize-space(FRM03)">
      <tr>
        <td class="label">Question Response: </td>
        <td class="data1">
          <xsl:value-of select="FRM03"/>
        </td>
      </tr>
    </xsl:if>
    
    <xsl:if test="normalize-space(FRM04)">
      <tr>
        <td class="label">Question Response: </td>
        <td class="data1">
          <xsl:value-of select="FRM04"/>
        </td>
      </tr>
    </xsl:if>
    
    <xsl:if test="normalize-space(FRM05)">
      <tr>
        <td class="label">Question Response: </td>
        <td class="data1">
          <xsl:value-of select="FRM05"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

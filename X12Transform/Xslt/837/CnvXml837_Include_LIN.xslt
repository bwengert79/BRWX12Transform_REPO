<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="LIN">

    <xsl:if test="normalize-space(LIN02)">
      <tr>
        <td class="label">Product or Service ID Qualifier: </td>
        <td class="data1">
          <xsl:value-of select="LIN02"/>
          &#160;
          <xsl:choose>
            <xsl:when test="LIN02 = 'EN'">
              EAN/UCC-13
            </xsl:when>
            <xsl:when test="LIN02 = 'EO'">
              EAN/UCC-8
            </xsl:when>
            <xsl:when test="LIN02 = 'HI'">
              HIBC Supplier Labeling Standard Primary Data Message
            </xsl:when>
            <xsl:when test="LIN02 = 'N4'">
              National Drug Code in 5-4-2 Format
            </xsl:when>
            <xsl:when test="LIN02 = 'ON'">
              Customer Order Number
            </xsl:when>
            <xsl:when test="LIN02 = 'UK'">
              GTIN 14-digit Data Structure
            </xsl:when>
            <xsl:when test="LIN02 = 'UP'">
              UCC-12
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="LIN02"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(LIN03)">
      <tr>
        <td class="label">National Drug Code: </td>
        <td class="data1">
          <xsl:value-of select="LIN03"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

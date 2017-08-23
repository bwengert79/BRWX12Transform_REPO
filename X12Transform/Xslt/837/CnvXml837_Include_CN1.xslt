<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CN1">

    <xsl:if test="normalize-space(CN101)">
      <tr>
        <td class="label">Contract Type Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CN101 = '01'">              
              Diagnosis Related Group (DRG)
            </xsl:when>
            <xsl:when test="CN101 = '02'">
              Per Diem
            </xsl:when>
            <xsl:when test="CN101 = '03'">
              Variable Per Diem
            </xsl:when>
            <xsl:when test="CN101 = '04'">
              Flat
            </xsl:when>
            <xsl:when test="CN101 = '05'">
              Capitated
            </xsl:when>
            <xsl:when test="CN101 = '06'">
              Percent
            </xsl:when>
            <xsl:when test="CN101 = '09'">
              Other
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CN101"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CN102)">
      <tr>
        <td class="label">Contract Amount: </td>
        <td class="data1">
          <xsl:value-of select="CN102"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CN103)">
      <tr>
        <td class="label">Contract Percentage: </td>
        <td class="data1">
          <xsl:value-of select="CN103"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CN104)">
      <tr>
        <td class="label">Contract Code: </td>
        <td class="data1">
          <xsl:value-of select="CN104"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CN105)">
      <tr>
        <td class="label">Terms Discount Percentage: </td>
        <td class="data1">
          <xsl:value-of select="CN105"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CN106)">
      <tr>
        <td class="label">Contract Version Identifier: </td>
        <td class="data1">
          <xsl:value-of select="CN106"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TRN">
    <tr>
      <xsl:choose>
        <xsl:when test="TRN01 = '1'">
          <td class="label">Current Transaction Trace Numbers: </td>
        </xsl:when>
        <xsl:otherwise>
          <td class="label">Trace Type Code (<xsl:value-of select="TRN01"/>): </td>
        </xsl:otherwise>
      </xsl:choose>
      
      <td class="data1">
        <xsl:value-of select="TRN02"/>
      </td>
    </tr>

    <xsl:if test="normalize-space(TRN03)">
      <tr>
        <td class="label">Payer Identifier: </td>
        <td class="data1">
          <xsl:value-of select="TRN03"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TRN04)">
      <tr>
        <td class="label">Reference Identifier: </td>
        <td class="data1">
          <xsl:value-of select="TRN04"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>
  
</xsl:stylesheet>

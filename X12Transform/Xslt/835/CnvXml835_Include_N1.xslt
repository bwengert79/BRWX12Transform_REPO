<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="N1">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="N101 = 'PR'">Payer:</xsl:when>
          <xsl:when test="N101 = 'PE'">Payee:</xsl:when>
          <xsl:otherwise>
              Entity Identifier Code (<xsl:value-of select="N101"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="N102"/>
      </td>      
    </tr>

    <xsl:if test="normalize-space(N103)">
      <tr>
        <td class="label">Identification Code Qualifier: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="N103 = 'XV'">Health Care Financing Administration National PlanID</xsl:when>
            <xsl:when test="N103 = 'FI'">Federal Taxpayers Identification Number</xsl:when>
            <xsl:when test="N103 = 'XV'">Center for Medicare and Medicaid PlanID</xsl:when>
            <xsl:when test="N103 = 'XX'">Health Care Financing Administration National Provider Identifier</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="N103"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(N104)">
      <tr>
        <td class="label">Payer Identifier: </td>
        <td class="data1">
          <xsl:value-of select="N104"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

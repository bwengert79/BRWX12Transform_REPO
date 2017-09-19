<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="NM1">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="NM101 = '1P'">Provider:</xsl:when>
          <xsl:when test="NM101 = '41'">Submitter:</xsl:when>
          <xsl:when test="NM101 = '85'">Billing Provider:</xsl:when>
          <xsl:when test="NM101 = 'AY'">Clearinghouse:</xsl:when>
          <xsl:when test="NM101 = 'IL'">Insured or Subscriber:</xsl:when>
          <xsl:when test="NM101 = 'PR'">Payer:</xsl:when>
          <xsl:when test="NM101 = 'QC'">Patient:</xsl:when>
          <xsl:otherwise>
            Entity Identifier Code (<xsl:value-of select="NM101"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="NM103"/>
        <xsl:if test="NM102 = '1'">
          <xsl:if test="string-length(normalize-space(NM104))!=0">, <xsl:value-of select="NM104"/></xsl:if>
          <xsl:if test="string-length(normalize-space(NM105))!=0">&#160;<xsl:value-of select="NM105"/>
          </xsl:if>
        </xsl:if>
      </td>
    </tr>
    
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="NM108 = '24'">Employer ID:</xsl:when>
          <xsl:when test="NM108 = '34'">Social Security Number:</xsl:when>
          <xsl:when test="NM108 = '46'">ETIN:</xsl:when>
          <xsl:when test="NM108 = 'FA'">Facility ID:</xsl:when>
          <xsl:when test="NM108 = 'FI'">Federal Tax ID:</xsl:when>
          <xsl:when test="NM108 = 'MI'">Member ID:</xsl:when>
          <xsl:when test="NM108 = 'NI'">NAIC:</xsl:when>
          <xsl:when test="NM108 = 'PI'">Payer ID:</xsl:when>
          <xsl:when test="NM108 = 'PP'">Pharmacy Processor Number:</xsl:when>
          <xsl:when test="NM108 = 'SV'">Provider ID:</xsl:when>
          <xsl:when test="NM108 = 'XV'">National Plan ID:</xsl:when>
          <xsl:when test="NM108 = 'XX'">National Provider ID:</xsl:when>
          <xsl:otherwise>
            Identification Code Qualifier(<xsl:value-of select="NM108"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="NM109"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>

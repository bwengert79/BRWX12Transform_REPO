<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="REF">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="REF01 = '0B'">State License Number:</xsl:when>
          <xsl:when test="REF01 = '18'">Plan Number:</xsl:when>
          <xsl:when test="REF01 = '1G'">Provider UPIN Number:</xsl:when>
          <xsl:when test="REF01 = '1K'">Payer Claim Number:</xsl:when>
          <xsl:when test="REF01 = '1L'">Group or Policy Number:</xsl:when>
          <xsl:when test="REF01 = '1W'">Member Identification Number:</xsl:when>
          <xsl:when test="REF01 = '3H'">Case Number:</xsl:when>
          <xsl:when test="REF01 = '49'">Family Unit Number:</xsl:when>
          <xsl:when test="REF01 = '6P'">Group Number:</xsl:when>
          <xsl:when test="REF01 = 'A6'">Employee Identification Number:</xsl:when>
          <xsl:when test="REF01 = 'BLT'">Billing Type:</xsl:when>
          <xsl:when test="REF01 = 'D9'">Claim Number:</xsl:when>
          <xsl:when test="REF01 = 'EA'">Medical Record Number:</xsl:when>
          <xsl:when test="REF01 = 'EJ'">Patient Account Number:</xsl:when>
          <xsl:when test="REF01 = 'FJ'">Line Item Control Number:</xsl:when>
          <xsl:when test="REF01 = 'G2'">Provider Commercial Number:</xsl:when>
          <xsl:when test="REF01 = 'LU'">Location Number:</xsl:when>
          <xsl:when test="REF01 = 'LU'">Location Number:</xsl:when>
          <xsl:when test="REF01 = 'SY'">Social Security Number:</xsl:when>
          <xsl:when test="REF01 = 'TJ'">Federal Taxpayer’s Identification Number:</xsl:when>
          <xsl:when test="REF01 = 'XZ'">Pharmacy Prescription Number:</xsl:when>
          <xsl:otherwise>
            Reference Identification (<xsl:value-of select="REF01"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="REF02"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

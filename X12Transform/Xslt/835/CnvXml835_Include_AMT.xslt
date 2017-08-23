<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="AMT">
    <tr>
      <td class="label">
      <xsl:choose>
        <xsl:when test="AMT01 = 'AU'">Coverage Amount: </xsl:when>
        <xsl:when test="AMT01 = 'B6'">Allowed Amount: </xsl:when>
        <xsl:when test="AMT01 = 'D8'">Discount Amount: </xsl:when>
        <xsl:when test="AMT01 = 'DY'">Per Day Limit: </xsl:when>
        <xsl:when test="AMT01 = 'F5'">Patient Amount Paid: </xsl:when>
        <xsl:when test="AMT01 = 'I'">Interest: </xsl:when>
        <xsl:when test="AMT01 = 'KH'">Deduction Amount: </xsl:when>
        <xsl:when test="AMT01 = 'NL'">Negative Ledger Balance: </xsl:when>
        <xsl:when test="AMT01 = 'T'">Tax: </xsl:when>
        <xsl:when test="AMT01 = 'T2'">Total Claim Before Taxes: </xsl:when>
        <xsl:when test="AMT01 = 'ZK'">Federal Medicare or Medicaid Payment Mandate - Category 1: </xsl:when>
        <xsl:when test="AMT01 = 'ZL'">Federal Medicare or Medicaid Payment Mandate - Category 2: </xsl:when>
        <xsl:when test="AMT01 = 'ZM'">Federal Medicare or Medicaid Payment Mandate - Category 3: </xsl:when>
        <xsl:when test="AMT01 = 'ZN'">Federal Medicare or Medicaid Payment Mandate - Category 4: </xsl:when>
        <xsl:when test="AMT01 = 'ZO'">Federal Medicare or Medicaid Payment Mandate - Category 5: </xsl:when>
        <xsl:otherwise>Amount Qualifier Code (<xsl:value-of select="AMT01"/>):</xsl:otherwise>
      </xsl:choose>
      </td>
      <td class="data1"><xsl:value-of select="AMT02"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

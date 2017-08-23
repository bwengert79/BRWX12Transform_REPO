<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="QTY">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="QTY01 = 'AU'">Coverage Amount: </xsl:when>
          <xsl:when test="QTY01 = 'B6'">Allowed - Amount: </xsl:when>
          <xsl:when test="QTY01 = 'D8'">Discount Amount: </xsl:when>
          <xsl:when test="QTY01 = 'DY'">Per Day Limit: </xsl:when>
          <xsl:when test="QTY01 = 'F5'">Patient Amount Paid: </xsl:when>
          <xsl:when test="QTY01 = 'I'">Interest: </xsl:when>
          <xsl:when test="QTY01 = 'KH'">Deduction Amount: </xsl:when>
          <xsl:when test="QTY01 = 'NL'">Negative Ledger Balance: </xsl:when>
          <xsl:when test="QTY01 = 'T'">Tax: </xsl:when>
          <xsl:when test="QTY01 = 'T2'">Total Claim Before Taxes: </xsl:when>
          <xsl:when test="QTY01 = 'ZK'">Federal Medicare or Medicaid Payment Mandate - Category 1: </xsl:when>
          <xsl:when test="QTY01 = 'ZL'">Federal Medicare or Medicaid Payment Mandate - Category 2: </xsl:when>
          <xsl:when test="QTY01 = 'ZM'">Federal Medicare or Medicaid Payment Mandate - Category 3: </xsl:when>
          <xsl:when test="QTY01 = 'ZN'">Federal Medicare or Medicaid Payment Mandate - Category 4: </xsl:when>
          <xsl:when test="QTY01 = 'ZO'">Federal Medicare or Medicaid Payment Mandate - Category 5: </xsl:when>
          <xsl:when test="QTY01 = '90'">Total Accepted Quantity:</xsl:when>
          <xsl:when test="QTY01 = 'AA'">Total Rejected Quantity:</xsl:when>
          <xsl:when test="QTY01 = 'QA'">Total Accepted Quantity:</xsl:when>
          <xsl:when test="QTY01 = 'QC'">Total Rejected Quantity:</xsl:when>
          <xsl:when test="QTY01 = 'CA'">Covered - Actual:</xsl:when>
          <xsl:when test="QTY01 = 'CD'">Co-insured - Actual:</xsl:when>
          <xsl:when test="QTY01 = 'LA'">Life-time Reserve - Actual:</xsl:when>
          <xsl:when test="QTY01 = 'LE'">Life-time Reserve - Estimated:</xsl:when>
          <xsl:when test="QTY01 = 'NA'">Number of Non-covered Days:</xsl:when>
          <xsl:when test="QTY01 = 'NE'">Non-Covered - Estimated:</xsl:when>
          <xsl:when test="QTY01 = 'NR'">Not Replaced Blood Units:</xsl:when>
          <xsl:when test="QTY01 = 'OU'">Outlier Days:</xsl:when>
          <xsl:when test="QTY01 = 'PS'">Prescription:</xsl:when>
          <xsl:when test="QTY01 = 'VS'">Visits:</xsl:when>
          <xsl:otherwise>Amount Qualifier Code (<xsl:value-of select="QTY01"/>):</xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="QTY02"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

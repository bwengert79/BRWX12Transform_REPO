<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="BPR">

    <xsl:if test="normalize-space(BPR01)">
      <tr>
        <td class="label">Transaction Holding Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="BPR01 = 'C'">Payment Accompanies Remittance Advice</xsl:when>
            <xsl:when test="BPR01 = 'D'">Make Payment Only</xsl:when>
            <xsl:when test="BPR01 = 'H'">Notification Only</xsl:when>
            <xsl:when test="BPR01 = 'I'">Remittance Information Only</xsl:when>
            <xsl:when test="BPR01 = 'P'">Prenotification of Future Transfers</xsl:when>
            <xsl:when test="BPR01 = 'U'">Split Payment and Remittance</xsl:when>
            <xsl:when test="BPR01 = 'X'">Handling Party’s Option to Split Payment and Remittance</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="BPR01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR02)">
      <tr>
        <td class="label">Total Actual Provider Payment Amount: </td>
        <td class="data1">
          <xsl:value-of select="BPR02"/>
          <xsl:choose>
            <xsl:when test="BPR03 = 'C'"> - Credit</xsl:when>
            <xsl:when test="BPR03 = 'D'"> - Debit</xsl:when>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR04)">
      <tr>
        <td class="label">Payment Method Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="BPR04 = 'ACH'">Automated Clearing House (ACH)</xsl:when>
            <xsl:when test="BPR04 = 'BOP'">Financial Institution Option</xsl:when>
            <xsl:when test="BPR04 = 'CHK'">Check</xsl:when>
            <xsl:when test="BPR04 = 'FWT'">Federal Reserve Funds/Wire Transfer - Nonrepetitive</xsl:when>
            <xsl:when test="BPR04 = 'NON'">Non-Payment Data</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="BPR04"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR05)">
      <tr>
        <td class="label">Payment Format Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="BPR05 = 'CCP'">Cash Concentration/Disbursement plus Addenda (CCD+) (ACH)
            </xsl:when>
            <xsl:when test="BPR05 = 'CTX'">Corporate Trade Exchange (CTX) (ACH)</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="BPR05"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR06)">
      <tr>
        <td class="label">(DFI) ID Number Qualifier: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="BPR06 = '01'">ABA Transit Routing Number Including Check Digits (9 digits)</xsl:when>
            <xsl:when test="BPR06 = '04'">Canadian Bank Branch and Institution Number</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="BPR06"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>
    
    <xsl:if test="normalize-space(BPR07)">
      <tr>
        <td class="label">Sender DFI Identifier: </td>
        <td class="data1">
          <xsl:value-of select="BPR07"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR08)">
      <tr>
        <td class="label">Account Number Qualifier: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="BPR08 = 'DA'">Demand Deposit</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="BPR08"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR09)">
      <tr>
        <td class="label">Sender Bank Account Number: </td>
        <td class="data1">
          <xsl:value-of select="BPR09"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR10)">
      <tr>
        <td class="label">Payer Identifier: </td>
        <td class="data1">
          <xsl:value-of select="BPR10"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR11)">
      <tr>
        <td class="label">Originating Company Supplemental Code: </td>
        <td class="data1">
          <xsl:value-of select="BPR11"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR12)">
      <tr>
        <td class="label">(DFI) ID Number Qualifier: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="BPR12 = '01'">ABA Transit Routing Number Including Check Digits (9 digits)</xsl:when>
            <xsl:when test="BPR12 = '04'">Canadian Bank Branch and Institution Number</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="BPR12"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR13)">
      <tr>
        <td class="label">Receiver or Provider Bank ID Number: </td>
        <td class="data1">
          <xsl:value-of select="BPR13"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR14)">
      <tr>
        <td class="label">Account Number Qualifier: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="BPR14 = 'DA'">Demand Deposit</xsl:when>
            <xsl:when test="BPR14 = 'SG'">Savings</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="BPR14"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(BPR15)">
      <tr>
        <td class="label">Receiver or Provider Account Number: </td>
        <td class="data1">
          <xsl:value-of select="BPR15"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="normalize-space(BPR16)">
      <tr>
        <td class="label">Check Issue or EFT Effective Date: </td>
        <td class="data1">
          <xsl:call-template name="format_date">
            <xsl:with-param name="theDate">
              <xsl:value-of select="BPR16"/>
            </xsl:with-param>
          </xsl:call-template>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

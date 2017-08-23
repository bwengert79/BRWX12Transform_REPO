<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="AMT">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="AMT01 = 'YU'">
            Total Accepted Amount:
          </xsl:when>
          <xsl:when test="AMT01 = 'YY'">
            Total Rejected Amount:
          </xsl:when>
          <xsl:when test="AMT01 = '1W'">
            Member Identification Number:
          </xsl:when>
          <xsl:when test="AMT01 = '3H'">
            Case Number:
          </xsl:when>
          <xsl:when test="AMT01 = '49'">
            Family Unit Number:
          </xsl:when>
          <xsl:when test="AMT01 = '6P'">
            Group Number:
          </xsl:when>
          <xsl:when test="AMT01 = 'EA'">
            Medical Record Number:
          </xsl:when>
          <xsl:when test="AMT01 = 'EJ'">
            Patient Account Number:
          </xsl:when>
          <xsl:when test="AMT01 = 'A6'">
            Employee IdentificationNumber:
          </xsl:when>
          <xsl:when test="AMT01 = '1K'">
            Payer Claim Number:
          </xsl:when>
          <xsl:when test="AMT01 = 'BLT'">
            Billing Type:
          </xsl:when>
          <xsl:when test="AMT01 = 'LU'">
            Location Number:
          </xsl:when>
          <xsl:when test="AMT01 = 'XZ'">
            Pharmacy Prescription Number:
          </xsl:when>
          <xsl:when test="AMT01 = 'D9'">
            Claim Number:
          </xsl:when>
          <xsl:when test="AMT01 = 'FJ'">
            Line Item Control Number:
          </xsl:when>
          <xsl:otherwise>
            Reference Identification (<xsl:value-of select="AMT01"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="AMT02"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

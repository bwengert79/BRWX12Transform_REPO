<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="REF">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="REF01 = '0B'">State License Number:</xsl:when>
          <xsl:when test="REF01 = '0K'">Policy Form Identifying Number:</xsl:when>
          <xsl:when test="REF01 = '1A'">Blue Cross Provider Number:</xsl:when>
          <xsl:when test="REF01 = '1B'">Blue Shield Provider Number:</xsl:when>
          <xsl:when test="REF01 = '1C'">Medicare Provider Number:</xsl:when>
          <xsl:when test="REF01 = '1D'">Medicaid Provider Number:</xsl:when>
          <xsl:when test="REF01 = '1G'">Provider UPIN Number:</xsl:when>
          <xsl:when test="REF01 = '1H'">CHAMPUS Identification Number:</xsl:when>
          <xsl:when test="REF01 = '1J'">Facility ID Number:</xsl:when>
          <xsl:when test="REF01 = '1L'">Group or Policy Number:</xsl:when>
          <xsl:when test="REF01 = '1S'">Ambulatory Patient Group (APG) Number:</xsl:when>
          <xsl:when test="REF01 = '1W'">Member Identification Number:</xsl:when>
          <xsl:when test="REF01 = '28'">Employee Identification Number:</xsl:when>
          <xsl:when test="REF01 = '6P'">Group Number:</xsl:when>
          <xsl:when test="REF01 = '6R'">Provider Control Number:</xsl:when>
          <xsl:when test="REF01 = '9A'">Repriced Claim Reference Number:</xsl:when>
          <xsl:when test="REF01 = '9C'">Adjusted Repriced Claim Reference Number:</xsl:when>
          <xsl:when test="REF01 = 'APC'">Ambulatory Payment Classification:</xsl:when>
          <xsl:when test="REF01 = 'BB'">Authorization Number:</xsl:when>
          <xsl:when test="REF01 = 'BB'">Authorization Number:</xsl:when>
          <xsl:when test="REF01 = 'CE'">Class of Contract Code:</xsl:when>
          <xsl:when test="REF01 = 'D3'">National Association of Boards of Pharmacy Number:</xsl:when>
          <xsl:when test="REF01 = 'E9'">Attachment Code:</xsl:when>
          <xsl:when test="REF01 = 'EA'">Medical Record Identification Number:</xsl:when>
          <xsl:when test="REF01 = 'F8'">Original Reference Number:</xsl:when>
          <xsl:when test="REF01 = 'G1'">Prior Authorization Number:</xsl:when>
          <xsl:when test="REF01 = 'G2'">Provider Commercial Number:</xsl:when>
          <xsl:when test="REF01 = 'G3'">Predetermination of Benefits Identification Number:</xsl:when>
          <xsl:when test="REF01 = 'HPI'">Health Care Financing Administration National Provider Identifier:</xsl:when>
          <xsl:when test="REF01 = 'IG'">Insurance Policy Number:</xsl:when>
          <xsl:when test="REF01 = 'LU'">Location Number:</xsl:when>
          <xsl:when test="REF01 = 'RB'">Rate code number:</xsl:when>
          <xsl:when test="REF01 = 'SY'">Social Security Number:</xsl:when>
          <xsl:when test="REF01 = 'TJ'">Federal Taxpayer’s Identification Number:</xsl:when>
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

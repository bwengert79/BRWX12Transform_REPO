<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="RDM">

    <tr>
      <td class="label">Claim Adjustment Group Code: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test="CAS01 = 'CO'">Contractual Obligations</xsl:when>
          <xsl:when test="CAS01 = 'CR'">Correction and Reversals</xsl:when>
          <xsl:when test="CAS01 = 'OA'">Other Adjustments</xsl:when>
          <xsl:when test="CAS01 = 'PI'">Payor Initiated Reductions</xsl:when>
          <xsl:when test="CAS01 = 'PR'">Patient Responsibility</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="CAS01"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
    <xsl:if test="normalize-space(RDM01)">
      <tr>
        <td class="label">
          <xsl:choose>
            <xsl:when test="RDM01 = 'BM'">Contractual Obligations</xsl:when>
            <xsl:when test="RDM01 = 'EM'">Correction and Reversals</xsl:when>
            <xsl:when test="RDM01 = 'FT'">Other Adjustments</xsl:when>
            <xsl:when test="RDM01 = 'OL'">Payor Initiated Reductions</xsl:when>
            <xsl:otherwise>
              Report Transmission Code:
            </xsl:otherwise>
          </xsl:choose>
        </td>

        <td class="data1">
          <xsl:choose>
            <xsl:when test="RDM01 = 'BM'">
              <xsl:call-template name="format_phone">
                <xsl:with-param name="thePhone">
                  <xsl:value-of select="RDM02"/>
                </xsl:with-param>
              </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="RDM02"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

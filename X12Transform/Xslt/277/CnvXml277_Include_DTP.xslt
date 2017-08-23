<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="DTP">
    <tr>
      <td class="label">
      <xsl:choose>
        <xsl:when test="DTP01 = 009">
          Receipt Date:
        </xsl:when>
        <xsl:when test="DTP01 = 050">
          Process Date:
        </xsl:when>
        <xsl:when test="DTP01 = 102">
          Issue Date:
        </xsl:when>
        <xsl:when test="DTP01 = 152">
          Effective Date of Change:
        </xsl:when>
        <xsl:when test="DTP01 = 193">
          Period Start Date:
        </xsl:when>
        <xsl:when test="DTP01 = 194">
          Period End Date:
        </xsl:when>
        <xsl:when test="DTP01 = 198">
          Completion Date:
        </xsl:when>
        <xsl:when test="DTP01 = 290">
          Coordination of Benefits Date:
        </xsl:when>
        <xsl:when test="DTP01 = 291">
          Plan Date:
        </xsl:when>
        <xsl:when test="DTP01 = 292">
          Benefit Date:
        </xsl:when>
        <xsl:when test="DTP01 = 295">
          Primary Care Provider Date:
        </xsl:when>
        <xsl:when test="DTP01 = 304">
          Latest Visit or Consultation Date:
        </xsl:when>
        <xsl:when test="DTP01 = 307">
          Eligibility Date:
        </xsl:when>
        <xsl:when test="DTP01 = 318">
          Added Date:
        </xsl:when>
        <xsl:when test="DTP01 = 340">
          COBRA Begin Date:
        </xsl:when>
        <xsl:when test="DTP01 = 341">
          COBRA End Date:
        </xsl:when>
        <xsl:when test="DTP01 = 342">
          Premium Paid to Date Begin:
        </xsl:when>
        <xsl:when test="DTP01 = 343">
          Premium Paid to Date End:
        </xsl:when>
        <xsl:when test="DTP01 = 346">
          Plan Begin Date:
        </xsl:when>
        <xsl:when test="DTP01 = 347">
          Plan End Date:
        </xsl:when>
        <xsl:when test="DTP01 = 348">
          Benefit Begin Date:
        </xsl:when>
        <xsl:when test="DTP01 = 349">
          Benefit End Date:
        </xsl:when>
        <xsl:when test="DTP01 = 356">
          Eligibility Begin Date:
        </xsl:when>
        <xsl:when test="DTP01 = 357">
          Eligibility End Date:
        </xsl:when>
        <xsl:when test="DTP01 = 382">
          Enrollment Date:
        </xsl:when>
        <xsl:when test="DTP01 = 435">
          Admission Date:
        </xsl:when>
        <xsl:when test="DTP01 = 442">
          Date of Death Date:
        </xsl:when>
        <xsl:when test="DTP01 = 458">
          Certification Date:
        </xsl:when>
        <xsl:when test="DTP01 = 472">
          Service Date:
        </xsl:when>
        <xsl:when test="DTP01 = 539">
          Policy Effective Date:
        </xsl:when>
        <xsl:when test="DTP01 = 540">
          Policy Expiration Date:
        </xsl:when>
        <xsl:when test="DTP01 = 636">
          Date of Last Update Date:
        </xsl:when>
        <xsl:when test="DTP01 = 771">
          Status Date:
        </xsl:when>
        <xsl:otherwise>
          Date:
        </xsl:otherwise>
      </xsl:choose>
      </td>
      <td class="data1">
        <xsl:call-template name="format_date">
        <xsl:with-param name="theDate">
          <xsl:value-of select="DTP03"/>
        </xsl:with-param>
      </xsl:call-template>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

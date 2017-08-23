<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="HCP">

    <xsl:if test="normalize-space(HCP01)">
      <tr>
        <td class="label">Pricing Methodology: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="HCP01 = '00'">Zero Pricing (Not Covered Under Contract)</xsl:when>
            <xsl:when test="HCP01 = '01'">Priced as Billed at 100%</xsl:when>
            <xsl:when test="HCP01 = '02'">Priced at the Standard Fee Schedule</xsl:when>
            <xsl:when test="HCP01 = '03'">Priced at a Contractual Percentage</xsl:when>
            <xsl:when test="HCP01 = '04'">Bundled Pricing</xsl:when>
            <xsl:when test="HCP01 = '05'">Peer Review Pricing</xsl:when>
            <xsl:when test="HCP01 = '07'">Flat Rate Pricing</xsl:when>
            <xsl:when test="HCP01 = '08'">Combination Pricing</xsl:when>
            <xsl:when test="HCP01 = '09'">Maternity Pricing</xsl:when>
            <xsl:when test="HCP01 = '10'">Other Pricing</xsl:when>
            <xsl:when test="HCP01 = '11'">Lower of Cost</xsl:when>
            <xsl:when test="HCP01 = '12'">Ratio of Cost</xsl:when>
            <xsl:when test="HCP01 = '13'">Cost Reimbursed</xsl:when>
            <xsl:when test="HCP01 = '14'">Adjustment Pricing"</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="HCP01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP02)">
      <tr>
        <td class="label">Repriced Allowed Amount: </td>
        <td class="data1"><xsl:value-of select="HCP02"/></td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP03)">
      <tr>
        <td class="label">Repriced Saving Amount: </td>
        <td class="data1"><xsl:value-of select="HCP03"/></td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP04)">
      <tr>
        <td class="label">Repricing Organization Identifier: </td>
        <td class="data1"><xsl:value-of select="HCP04"/></td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP05)">
      <tr>
        <td class="label">Repricing Per Diem or Flat Rate Amount: </td>
        <td class="data1">
          <xsl:value-of select="HCP05"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP06)">
      <tr>
        <td class="label">Repriced Approved Ambulatory Patient Group Code: </td>
        <td class="data1">
          <xsl:value-of select="HCP06"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP07)">
      <tr>
        <td class="label">Repriced Approved Ambulatory Patient Group Amount: </td>
        <td class="data1">
          <xsl:value-of select="HCP07"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP13)">
      <tr>
        <td class="label">Pricing Methodology: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="HCP13 = 'T1'">Cannot Identify Provider as TPO (Third Party Organization) Participant</xsl:when>
            <xsl:when test="HCP13 = 'T2'">Cannot Identify Payer as TPO (Third Party Organization) Participant</xsl:when>
            <xsl:when test="HCP13 = 'T3'">Cannot Identify Insured as TPO (Third Party Organization) Participant</xsl:when>
            <xsl:when test="HCP13 = 'T4'">Payer Name or Identifier Missing</xsl:when>
            <xsl:when test="HCP13 = 'T5'">Certification Information Missing</xsl:when>
            <xsl:when test="HCP13 = 'T6'">Claim does not contain enough information for repricing</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="HCP13"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP14)">
      <tr>
        <td class="label">Policy Compliance Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="HCP14 = '1'">Procedure Followed (Compliance)</xsl:when>
            <xsl:when test="HCP14 = '2'">Not Followed - Call Not Made (Non-Compliance Call Not Made)</xsl:when>
            <xsl:when test="HCP14 = '3'">Not Medically Necessary (Non-Compliance Non-Medically Necessary)</xsl:when>
            <xsl:when test="HCP14 = '4'">Not Followed Other (Non-Compliance Other)</xsl:when>
            <xsl:when test="HCP14 = '5'">Emergency Admit to Non-Network Hospital</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="HCP14"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(HCP15)">
      <tr>
        <td class="label">Exception Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="HCP15 = '1'">Non-Network Professional Provider in Network Hospital</xsl:when>
            <xsl:when test="HCP15 = '2'">Emergency Care</xsl:when>
            <xsl:when test="HCP15 = '3'">Services or Specialist not in Network</xsl:when>
            <xsl:when test="HCP15 = '4'">Out-of-Service Area</xsl:when>
            <xsl:when test="HCP15 = '5'">State Mandates</xsl:when>
            <xsl:when test="HCP15 = '6'">Other</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="HCP15"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

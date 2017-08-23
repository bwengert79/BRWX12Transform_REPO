<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="SBR">

    <tr>
      <td class="label">Payer Responsibility: </td>

      <td class="data1">
        <xsl:choose>
          <xsl:when test="SBR01 = 'A'">
            Payer Responsibility Four
          </xsl:when>
          <xsl:when test="SBR01 = 'B'">
            Payer Responsibility Five
          </xsl:when>
          <xsl:when test="SBR01 = 'C'">
            Payer Responsibility Six
          </xsl:when>
          <xsl:when test="SBR01 = 'D'">
            Payer Responsibility Seven
          </xsl:when>
          <xsl:when test="SBR01 = 'E'">
            Payer Responsibility Eight
          </xsl:when>
          <xsl:when test="SBR01 = 'F'">
            Payer Responsibility Nine
          </xsl:when>
          <xsl:when test="SBR01 = 'G'">
            Payer Responsibility Ten
          </xsl:when>
          <xsl:when test="SBR01 = 'H'">
            Payer Responsibility Eleven
          </xsl:when>
          <xsl:when test="SBR01 = 'P'">
            Primary
          </xsl:when>
          <xsl:when test="SBR01 = 'S'">
            Secondary
          </xsl:when>
          <xsl:when test="SBR01 = 'T'">
            Tertiary
          </xsl:when>
          <xsl:when test="SBR01 = 'U'">
            Unknown
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="SBR01"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>

    <xsl:if test="normalize-space(SBR02)">
      <tr>
        <td class="label">Relationship Code: </td>
        <xsl:choose>
          <xsl:when test="SBR02 = '18'">
            <td class="data1">Self</td>
          </xsl:when>
          <xsl:otherwise>
            <td class="data1">
              <xsl:value-of select="SBR02"/>
            </td>
          </xsl:otherwise>
        </xsl:choose>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SBR03)">
      <tr>
        <td class="label">Group or Policy Number: </td>
        <td class="data1">
          <xsl:value-of select="SBR03"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SBR04)">
      <tr>
        <td class="label">Plan Name: </td>
        <td class="data1">
          <xsl:value-of select="SBR04"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SBR05)">
      <tr>
        <td class="label">Insurance Type Code: </td>
        <xsl:choose>
          <xsl:when test="SBR05 = '12'">
            <td class="data1">
              Medicare Secondary Working Aged Beneficiary or Spouse with Employer Group Health Plan
            </td>
          </xsl:when>
          <xsl:when test="SBR05 = '13'">
            <td class="data1">Medicare Secondary End-Stage Renal Disease Beneficiary in the 12 month coordination period with an employer’s group health plan</td>
          </xsl:when>
          <xsl:when test="SBR05 = '14'">
            <td class="data1">Medicare Secondary, No-fault Insurance including Auto is Primary</td>
          </xsl:when>
          <xsl:when test="SBR05 = '15'">
            <td class="data1">Medicare Secondary Worker’s Compensation</td>
          </xsl:when>
          <xsl:when test="SBR05 = '16'">
            <td class="data1">Medicare Secondary Public Health Service (PHS)or Other Federal Agency</td>
          </xsl:when>
          <xsl:when test="SBR05 = '41'">
            <td class="data1">Medicare Secondary Black Lung</td>
          </xsl:when>
          <xsl:when test="SBR05 = '42'">
            <td class="data1">Medicare Secondary Veteran’s Administration</td>
          </xsl:when>
          <xsl:when test="SBR05 = '43'">
            <td class="data1">Medicare Secondary Disabled Beneficiary Under Age 65 with Large Group Health Plan (LGHP)</td>
          </xsl:when>
          <xsl:when test="SBR05 = '47'">
            <td class="data1">Medicare Secondary, Other Liability Insurance is Primary</td>
          </xsl:when>
          <xsl:otherwise>
            <td class="data1">
              <xsl:value-of select="SBR05"/>
            </td>
          </xsl:otherwise>
        </xsl:choose>
      </tr>
    </xsl:if>


    <xsl:if test="normalize-space(SBR09)">
      <tr>
        <td class="label">Claim Filing Code: </td>
        <xsl:choose>
          <xsl:when test="SBR09 = '11'">
            <td class="data1">Other Non-Federal Programs</td>
          </xsl:when>
          <xsl:when test="SBR09 = '12'">
            <td class="data1">Preferred Provider Organization (PPO)</td>
          </xsl:when>
          <xsl:when test="SBR09 = '13'">
            <td class="data1">Point of Service (POS)</td>
          </xsl:when>
          <xsl:when test="SBR09 = '14'">
            <td class="data1">Exclusive Provider Organization (EPO)</td>
          </xsl:when>
          <xsl:when test="SBR09 = '15'">
            <td class="data1">Indemnity Insurance</td>
          </xsl:when>
          <xsl:when test="SBR09 = '16'">
            <td class="data1">Health Maintenance Organization (HMO) Medicare Risk</td>
          </xsl:when>
          <xsl:when test="SBR09 = '17'">
            <td class="data1">Dental Maintenance Organization</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'AM'">
            <td class="data1">Automobile Medical</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'BL'">
            <td class="data1">Blue Cross/Blue Shield</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'CH'">
            <td class="data1">Champus</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'CI'">
            <td class="data1">Commercial Insurance Co.</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'DS'">
            <td class="data1">Disability</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'FI'">
            <td class="data1">Federal Employees Program</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'HM'">
            <td class="data1">Health Maintenance Organization</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'LM'">
            <td class="data1">Liability Medical</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'MA'">
            <td class="data1">Medicare Part A</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'MB'">
            <td class="data1">Medicare Part B</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'MC'">
            <td class="data1">Medicaid</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'OF'">
            <td class="data1">Other Federal Program</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'TV'">
            <td class="data1">Tital V</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'VA'">
            <td class="data1">Veteran Administration Plan</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'WC'">
            <td class="data1">Workers’ Compensation Health Claim</td>
          </xsl:when>
          <xsl:when test="SBR09 = 'ZZ'">
            <td class="data1">Mutually Defined</td>
          </xsl:when>
          <xsl:otherwise>
            <td class="data1">
              <xsl:value-of select="SBR09"/>
            </td>
          </xsl:otherwise>
        </xsl:choose>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

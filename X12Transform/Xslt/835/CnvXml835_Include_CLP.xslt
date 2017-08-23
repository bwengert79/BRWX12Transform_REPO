<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CLP">

    <xsl:if test="normalize-space(CLP01)">
      <tr>
        <td class="label">Patient Control Number: </td>
        <td class="data1">
          <xsl:value-of select="CLP01"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP02)">
      <tr>
        <td class="label">Claim Adjustment Group Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLP02 = '1'">Processed as Primary</xsl:when>
            <xsl:when test="CLP02 = '2'">Processed as Secondary</xsl:when>
            <xsl:when test="CLP02 = '3'">Processed as Tertiary</xsl:when>
            <xsl:when test="CLP02 = '4'">Denied</xsl:when>
            <xsl:when test="CLP02 = '19'">Processed as Primary, Forwarded to Additional Payer(s)</xsl:when>
            <xsl:when test="CLP02 = '20'">Processed as Secondary, Forwarded to Additional Payer(s)</xsl:when>
            <xsl:when test="CLP02 = '21'">Processed as Tertiary, Forwarded to Additional Payer(s)</xsl:when>
            <xsl:when test="CLP02 = '22'">Reversal of Previous Payment</xsl:when>
            <xsl:when test="CLP02 = '23'">Not Our Claim, Forwarded to Additional Payer(s)</xsl:when>
            <xsl:when test="CLP02 = '25'">Predetermination Pricing Only - No Payment</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLP02"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>    
    </xsl:if>

    <xsl:if test="normalize-space(CLP04)">
      <tr>
        <td class="label">Claim Payment Amount: </td>
        <td class="data1">
          <xsl:value-of select="CLP04"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP05)">
      <tr>
        <td class="label">Patient Responsibility Amount: </td>
        <td class="data1">
          <xsl:value-of select="CLP05"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP06)">
      <tr>
        <td class="label">Claim Adjustment Group Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CLP06 = '12'">Preferred Provider Organization (PPO)</xsl:when>
            <xsl:when test="CLP06 = '13'">Point of Service (POS)</xsl:when>
            <xsl:when test="CLP06 = '14'">Exclusive Provider Organization (EPO)</xsl:when>
            <xsl:when test="CLP06 = '15'">Indemnity Insurance</xsl:when>
            <xsl:when test="CLP06 = '16'">Health Maintenance Organization (HMO) Medicare Risk</xsl:when>
            <xsl:when test="CLP06 = '17'">Dental Maintenance Organization</xsl:when>
            <xsl:when test="CLP06 = 'AM'">Automobile Medical</xsl:when>
            <xsl:when test="CLP06 = 'CH'">Champus</xsl:when>
            <xsl:when test="CLP06 = 'DS'">Disability</xsl:when>
            <xsl:when test="CLP06 = 'HM'">Health Maintenance Organization</xsl:when>
            <xsl:when test="CLP06 = 'LM'">Liability Medical</xsl:when>
            <xsl:when test="CLP06 = 'MA'">Medicare Part A</xsl:when>
            <xsl:when test="CLP06 = 'MB'">Medicare Part B</xsl:when>
            <xsl:when test="CLP06 = 'MC'">Medicaid</xsl:when>
            <xsl:when test="CLP06 = 'OF'">Other Federal Program</xsl:when>
            <xsl:when test="CLP06 = 'TV'">Title V</xsl:when>
            <xsl:when test="CLP06 = 'VA'">Veteran Administration Plan</xsl:when>
            <xsl:when test="CLP06 = 'WC'">Workers’ Compensation Health Claim</xsl:when>
            <xsl:when test="CLP06 = 'ZZ'">Mutually Defined"</xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CLP06"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP07)">
      <tr>
        <td class="label">Payer Claim Control Number: </td>
        <td class="data1">
          <xsl:value-of select="CLP07"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP08)">
      <tr>
        <td class="label">Facility Type Code: </td>
        <td class="data1">
          <xsl:value-of select="CLP08"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP09)">
      <tr>
        <td class="label">Claim Frequency Code: </td>
        <td class="data1">
          <xsl:value-of select="CLP09"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP11)">
      <tr>
        <td class="label">Diagnosis Related Group (DRG) Code: </td>
        <td class="data1">
          <xsl:value-of select="CLP11"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP12)">
      <tr>
        <td class="label">Diagnosis Related Group (DRG) Weight: </td>
        <td class="data1">
          <xsl:value-of select="CLP12"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CLP13)">
      <tr>
        <td class="label">Discharge Fraction: </td>
        <td class="data1">
          <xsl:value-of select="CLP13"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

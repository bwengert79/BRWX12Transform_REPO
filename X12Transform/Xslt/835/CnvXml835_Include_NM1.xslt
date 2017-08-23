<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="NM1">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="NM101 = 'QC'">
            Patient:
          </xsl:when>
          <xsl:when test="NM101 = 'IL'">
            Insured or Subscriber:
          </xsl:when>
          <xsl:when test="NM101 = '74'">
            Corrected Insured:
          </xsl:when>
          <xsl:when test="NM101 = '82'">
            Rendering Provider:
          </xsl:when>
          <xsl:when test="NM101 = 'TT'">
            Transfer To:
          </xsl:when>
          <xsl:when test="NM101 = 'PR'">
            Payer:
          </xsl:when>
          <xsl:when test="NM101 = 'GB'">
            Other Insured:
          </xsl:when>
          <xsl:otherwise>
            Entity Identifier Code (<xsl:value-of select="NM101"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>

      <td class="data1">
        <xsl:choose>
          <xsl:when test="NM102 = '1'">
            <xsl:value-of select="NM103"/>
            <xsl:if test="string-length(normalize-space(NM104))!=0">
              ,&#160;<xsl:value-of select="NM104"/>
            </xsl:if>
            <xsl:if test="string-length(normalize-space(NM105))!=0">
              &#160;<xsl:value-of select="NM105"/>
            </xsl:if>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="NM103"/>
            <xsl:choose>
              <xsl:when test="NM108 = 'PI'">
                &#160;-&#160;
                <xsl:choose>
                  <xsl:when test="NM109 = '00001'">Cigna</xsl:when>
                  <xsl:when test="NM109 = '00002'">Aetna</xsl:when>
                  <xsl:when test="NM109 = '00041'">Humana</xsl:when>
                  <xsl:when test="NM109 = '00080'">Tricare</xsl:when>
                  <xsl:when test="NM109 = '00112'">United Health Care</xsl:when>
                  <xsl:when test="NM109 = '00143'">Principal Financial Group (Principal Life)</xsl:when>
                  <xsl:when test="NM109 = '00151'">BCBS of Georgia</xsl:when>
                  <xsl:when test="NM109 = '00225'">Aetna LTC</xsl:when>
                  <xsl:when test="NM109 = '00250'">Coventry Healthcare National Network (First Health)</xsl:when>
                  <xsl:when test="NM109 = '00251'">Mail Handlers Benefit Plan (First Health Mail Handlers)</xsl:when>
                  <xsl:when test="NM109 = '00263'">Preferred Health Systems</xsl:when>
                  <xsl:when test="NM109 = '00267'">BCBS of Florida</xsl:when>
                  <xsl:when test="NM109 = '00287'">Physicians Mutual Insurance Company</xsl:when>
                  <xsl:when test="NM109 = '00324'">Careplus Health Plan</xsl:when>
                  <xsl:when test="NM109 = '00370'">AvMed Health Plans</xsl:when>
                  <xsl:when test="NM109 = '00371'">Preferred One</xsl:when>
                  <xsl:when test="NM109 = '00431'">Medicare Part A and B</xsl:when>
                  <xsl:when test="NM109 = 'AARP'">AARP Health Plan</xsl:when>
                  <xsl:when test="NM109 = 'AID01'">Florida Medicaid</xsl:when>
                  <xsl:when test="NM109 = 'AID15'">Georgia Medicaid</xsl:when>
                  <xsl:when test="NM109 = 'AID21'">North Carolina Medicaid</xsl:when>
                  <xsl:when test="NM109 = 'AMGRP'">Amerigroup</xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="NM109"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:when>
            </xsl:choose>

          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>

    <xsl:if test="string-length(normalize-space(NM109))!=0">
      <tr>
        <td class="label">
          <xsl:choose>
            <xsl:when test="NM108 = '34'">
              Social Security Number:
            </xsl:when>
            <xsl:when test="NM108 = 'HN'">
              Health Insurance Claim (HIC) Number:
            </xsl:when>
            <xsl:when test="NM108 = 'IL'">
              Standard Unique Health ID:
            </xsl:when>
            <xsl:when test="NM108 = 'MI'">
              Member ID:
            </xsl:when>
            <xsl:when test="NM108 = 'MR'">
              Medicaid Recipient ID Number:
            </xsl:when>
            <xsl:when test="NM108 = 'C'">
              Insured’s Changed Unique Identification Number:
            </xsl:when>
            <xsl:when test="NM108 = 'FI'">
              Federal Tax ID:
            </xsl:when>
            <xsl:when test="NM108 = 'BD'">
              Blue Cross Provider Number:
            </xsl:when>
            <xsl:when test="NM108 = 'BS'">
              Blue Sheild Provider Number:
            </xsl:when>
            <xsl:when test="NM108 = 'MC'">
              Medicaid Provider Number:
            </xsl:when>
            <xsl:when test="NM108 = 'PC'">
              Provider Commercial Number:
            </xsl:when>
            <xsl:when test="NM108 = 'SL'">
              State License Number:
            </xsl:when>
            <xsl:when test="NM108 = 'UP'">
              Unique Physician Identification Number (UPIN):
            </xsl:when>
            <xsl:when test="NM108 = 'XX'">
              National Provider Identifier:
            </xsl:when>
            <xsl:when test="NM108 = 'AD'">
              Blue Cross Blue Shield Association Plan Code:
            </xsl:when>
            <xsl:when test="NM108 = 'NI'">
              National Association of Insurance Commissioners (NAIC) Identification:
            </xsl:when>
            <xsl:when test="NM108 = 'PI'">
              Payor Identification
            </xsl:when>
            <xsl:when test="NM108 = 'PP'">
              Pharmacy Processor Number
            </xsl:when>
            <xsl:when test="NM108 = 'XV'">
              Health Care Financing Administration National PlanID
            </xsl:when>
            <xsl:otherwise>
              Identification Code Qualifier:
            </xsl:otherwise>
          </xsl:choose>
        </td>
        <td class="data1">
          <xsl:value-of select="NM109"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>
</xsl:stylesheet>

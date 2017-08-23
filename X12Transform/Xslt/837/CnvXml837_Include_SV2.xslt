<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="SV2">

    <xsl:if test="normalize-space(SV201)">
      <tr>
        <td class="label">Service Line Revenue Code: </td>
        <td class="data1"><xsl:value-of select="SV201"/></td>
      </tr>
    </xsl:if>

    <xsl:apply-templates select="SV202/SV202-01[node()]" />
    <xsl:apply-templates select="SV202/SV202-02[node()]" />
    <xsl:apply-templates select="SV202/SV202-03[node()]" />
    <xsl:apply-templates select="SV202/SV202-04[node()]" />
    <xsl:apply-templates select="SV202/SV202-05[node()]" />
    <xsl:apply-templates select="SV202/SV202-06[node()]" />
    <xsl:apply-templates select="SV202/SV202-07[node()]" />

    <xsl:apply-templates select="SV203[node()]" />
    <xsl:apply-templates select="SV204[node()]" />
    <xsl:apply-templates select="SV205[node()]" />
    <xsl:apply-templates select="SV207[node()]" />

  </xsl:template>

  <xsl:template match="SV202-01">
    <tr>
      <td class="label">Product or Service ID Qualifier: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test=". = 'ER'">Jurisdiction Specific Prodecure and Supply Code</xsl:when>
          <xsl:when test=". = 'HC'">HCPCS Code</xsl:when>
          <xsl:when test=". = 'HP'">HIPPS Skilled Nuring Facility Rate Code</xsl:when>
          <xsl:when test=". = 'IV'">HIEC Product/Service Code</xsl:when>
          <xsl:when test=". = 'WK'">ABC Codes</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="."/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV202-02">
    <tr>
      <td class="label">Procedure Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV202-03">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV202-04">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV202-05">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV202-06">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV202-07">
    <tr>
      <td class="label">Description: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV203">
    <tr>
      <td class="label">Line Item Charge Amount: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV204">
    <tr>
      <td class="label">Unit or Basis Measurement Code: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test=". = 'DA'">Days</xsl:when>
          <xsl:when test=". = 'UN'">Unit</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="."/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV205">
    <tr>
      <td class="label">Service Unit Count: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV207">
    <tr>
      <td class="label">Service Line Non-Covered Charge Amount: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

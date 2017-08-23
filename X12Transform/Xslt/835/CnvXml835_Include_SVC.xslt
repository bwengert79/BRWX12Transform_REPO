<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="SVC">
    <xsl:apply-templates select="SVC01/SVC01-01[node()]" />
    <xsl:apply-templates select="SVC01/SVC01-02[node()]" />
    <xsl:apply-templates select="SVC01/SVC01-03[node()]" />
    <xsl:apply-templates select="SVC01/SVC01-04[node()]" />
    <xsl:apply-templates select="SVC01/SVC01-05[node()]" />
    <xsl:apply-templates select="SVC01/SVC01-06[node()]" />
    <xsl:apply-templates select="SVC01/SVC01-07[node()]" />
    <xsl:apply-templates select="SVC01/SVC01-08[node()]" />
    <xsl:apply-templates select="SVC02[node()]" />
    <xsl:apply-templates select="SVC03[node()]" />
    <xsl:apply-templates select="SVC04[node()]" />
    <xsl:apply-templates select="SVC05[node()]" />
    <xsl:apply-templates select="SVC06/SVC06-01[node()]" />
    <xsl:apply-templates select="SVC06/SVC06-02[node()]" />
    <xsl:apply-templates select="SVC06/SVC06-03[node()]" />
    <xsl:apply-templates select="SVC06/SVC06-04[node()]" />
    <xsl:apply-templates select="SVC06/SVC06-05[node()]" />
    <xsl:apply-templates select="SVC06/SVC06-06[node()]" />
    <xsl:apply-templates select="SVC06/SVC06-07[node()]" />
    <xsl:apply-templates select="SVC06/SVC06-08[node()]" />
    <xsl:apply-templates select="SVC07[node()]" />
  </xsl:template>

  <xsl:template match="SVC01-01">
    <tr>
      <td class="label">Product or Service ID Qualifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
        -
        <xsl:choose>
          <xsl:when test=". = 'HC'">HCPCS Code</xsl:when>
          <xsl:when test=". = 'AD'">American Dental Code</xsl:when>
          <xsl:when test=". = 'ER'">Jurisdiction Specific Prodecure and Supply Code</xsl:when>
          <xsl:when test=". = 'HP'">HIPPS Code</xsl:when>
          <xsl:when test=". = 'IV'">HIEC Product/Service Code</xsl:when>
          <xsl:when test=". = 'N4'">National Drug Code in 5-4-2 Format</xsl:when>
          <xsl:when test=". = 'N6'">National Drug Code in 4-6 Format</xsl:when>
          <xsl:when test=". = 'NU'">NUBC UB92 Code</xsl:when>
          <xsl:when test=". = 'UI'">UPC Consumer Package Code</xsl:when>
          <xsl:when test=". = 'WK'">Advanced Billing Concepts</xsl:when>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC01-02">
    <tr>
      <td class="label">Product or Service ID: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC01-03">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC01-04">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC01-05">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC01-06">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC01-07">
    <tr>
      <td class="label">Description: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC01-08">
    <tr>
      <td class="label">Product or Service ID: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC02">
    <tr>
      <td class="label">Line Item Charge Amount: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC03">
    <tr>
      <td class="label">Line Item Provider Payment Amount: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC04">
    <tr>
      <td class="label">Revenue Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC05">
    <tr>
      <td class="label">Units of Service Paid Count: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC06-01">
    <tr>
      <td class="label">Product or Service ID Qualifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
        -
        <xsl:choose>
          <xsl:when test=". = 'HC'">HCPCS Code</xsl:when>
          <xsl:when test=". = 'AD'">American Dental Code</xsl:when>
          <xsl:when test=". = 'ER'">Jurisdiction Specific Prodecure and Supply Code</xsl:when>
          <xsl:when test=". = 'HP'">HIPPS Code</xsl:when>
          <xsl:when test=". = 'IV'">HIEC Product/Service Code</xsl:when>
          <xsl:when test=". = 'N4'">National Drug Code in 5-4-2 Format</xsl:when>
          <xsl:when test=". = 'N6'">National Drug Code in 4-6 Format</xsl:when>
          <xsl:when test=". = 'NU'">NUBC UB92 Code</xsl:when>
          <xsl:when test=". = 'UI'">UPC Consumer Package Code</xsl:when>
          <xsl:when test=". = 'WK'">Advanced Billing Concepts</xsl:when>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC06-02">
    <tr>
      <td class="label">Product or Service ID: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC06-03">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC06-04">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC06-05">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC06-06">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC06-07">
    <tr>
      <td class="label">Description: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC06-08">
    <tr>
      <td class="label">Product or Service ID: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVC07">
    <tr>
      <td class="label">Units of Service: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

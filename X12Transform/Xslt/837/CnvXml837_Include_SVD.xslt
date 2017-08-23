<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="SVD">

    <xsl:if test="normalize-space(SVD01)">
      <tr>
        <td class="label">Other Payer Primary Identifier: </td>
        <td class="data1">
          <xsl:value-of select="SVD01"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SVD02)">
      <tr>
        <td class="label">Service Paid Amount: </td>
        <td class="data1">
          <xsl:value-of select="SVD02"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:apply-templates select="SVD03/SVD03-01[node()]" />
    <xsl:apply-templates select="SVD03/SVD03-02[node()]" />
    <xsl:apply-templates select="SVD03/SVD03-03[node()]" />
    <xsl:apply-templates select="SVD03/SVD03-04[node()]" />
    <xsl:apply-templates select="SVD03/SVD03-05[node()]" />
    <xsl:apply-templates select="SVD03/SVD03-06[node()]" />
    <xsl:apply-templates select="SVD03/SVD03-07[node()]" />
    <xsl:apply-templates select="SVD03/SVD03-08[node()]" />

    <xsl:if test="normalize-space(SVD05)">
      <tr>
        <td class="label">Paid Service Unit Count: </td>
        <td class="data1">
          <xsl:value-of select="SVD05"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(SVD06)">
      <tr>
        <td class="label">Bundled or Unbundled Line Number: </td>
        <td class="data1">
          <xsl:value-of select="SVD06"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

  <xsl:template match="SVD01-01">
    <tr>
      <td class="label">Product or Service ID Qualifier: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test=". = 'ER'">Jurisdiction Specific Prodecure and Supply Code</xsl:when>
          <xsl:when test=". = 'HC'">HCPCS Code</xsl:when>
          <xsl:when test=". = 'IV'">HIEC Product/Service Code</xsl:when>
          <xsl:when test=". = 'WK'">ABC Codes</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="."/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVD01-02">
    <tr>
      <td class="label">Procedure Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVD01-03">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVD01-04">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVD01-05">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVD01-06">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVD01-07">
    <tr>
      <td class="label">Description: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SVD01-08">
    <tr>
      <td class="label">Product or Service ID: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

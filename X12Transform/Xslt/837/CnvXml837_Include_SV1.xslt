<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="SV1">
    <xsl:apply-templates select="SV101/SV101-01[node()]" />
    <xsl:apply-templates select="SV101/SV101-02[node()]" />
    <xsl:apply-templates select="SV101/SV101-03[node()]" />
    <xsl:apply-templates select="SV101/SV101-04[node()]" />
    <xsl:apply-templates select="SV101/SV101-05[node()]" />
    <xsl:apply-templates select="SV101/SV101-07[node()]" />
    <xsl:apply-templates select="SV101/SV101-08[node()]" />
    <xsl:apply-templates select="SV102[node()]" />
    <xsl:apply-templates select="SV103[node()]" />
    <xsl:apply-templates select="SV104[node()]" />
    <xsl:apply-templates select="SV105[node()]" />

    <xsl:if test="normalize-space(SV107/SV107-01)">
      <xsl:call-template name="dx_code_pointer">
        <xsl:with-param name="theValue">
          <xsl:value-of select="SV107/SV107-01"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(SV107/SV107-02)">
      <xsl:call-template name="dx_code_pointer">
        <xsl:with-param name="theValue">
          <xsl:value-of select="SV107/SV107-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(SV107/SV107-03)">
      <xsl:call-template name="dx_code_pointer">
        <xsl:with-param name="theValue">
          <xsl:value-of select="SV107/SV107-03"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(SV107/SV107-04)">
      <xsl:call-template name="dx_code_pointer">
        <xsl:with-param name="theValue">
          <xsl:value-of select="SV107/SV107-04"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

  </xsl:template>

  <xsl:template match="SV101-01">
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

  <xsl:template match="SV101-02">
    <tr>
      <td class="label">Procedure Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV101-03">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV101-04">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV101-05">
    <tr>
      <td class="label">Procedure Modifier: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV101-07">
    <tr>
      <td class="label">Description: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV101-08">
    <tr>
      <td class="label">Product or Service ID: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV102">
    <tr>
      <td class="label">Line Item Charge Amount: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV103">
    <tr>
      <td class="label">Unit or Basis Measurement Code: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test=". = 'MJ'">Minutes</xsl:when>
          <xsl:when test=". = 'UN'">Unit</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="."/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV104">
    <tr>
      <td class="label">Service Unit Count: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV105">
    <tr>
      <td class="label">Place of Service Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="SV105">
    <tr>
      <td class="label">Place of Service Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template name="dx_code_pointer">
    <xsl:param name="theValue"/>
    <tr>
      <td class="label">Diagnosis Code Pointer: </td>
      <td class="data1">
        <xsl:value-of select="$theValue" />
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

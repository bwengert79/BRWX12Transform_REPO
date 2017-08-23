<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="HI">
    <xsl:if test="normalize-space(HI01/HI01-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI01/HI01-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI01/HI01-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI02/HI02-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI02/HI02-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI02/HI02-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI03/HI03-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI03/HI03-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI03/HI03-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI04/HI04-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI04/HI04-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI04/HI04-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI05/HI05-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI05/HI05-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI05/HI05-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI06/HI06-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI06/HI06-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI06/HI06-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI07/HI07-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI07/HI07-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI07/HI07-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI08/HI08-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI08/HI08-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI08/HI08-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI09/HI09-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI09/HI09-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI09/HI09-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI10/HI10-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI10/HI10-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI10/HI10-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI11/HI11-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI11/HI11-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI11/HI11-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="normalize-space(HI12/HI12-01)">
      <xsl:call-template name="HI_dx_code">
        <xsl:with-param name="theType">
          <xsl:value-of select="HI12/HI12-01"/>
        </xsl:with-param>
        <xsl:with-param name="theDx">
          <xsl:value-of select="HI12/HI12-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

  </xsl:template>

  <xsl:template name="HI_dx_code">
    <xsl:param name="theType"/>
    <xsl:param name="theDx"/>
    <tr>
      <td class="label">Diagnosis Type Code: </td>
      <td class="data1">
        <xsl:choose>
          <xsl:when test="$theType = 'ABK'">ICD-10-CM</xsl:when>
          <xsl:when test="$theType = 'ABF'">ICD-10-CM</xsl:when>
          <xsl:when test="$theType = 'BK'">ICD-9-CM</xsl:when>
          <xsl:when test="$theType = 'BF'">ICD-9-CM</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$theType"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>

    <tr>
      <td class="label">Diagnosis Code: </td>
      <td class="data1">
        <xsl:value-of select="$theDx"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

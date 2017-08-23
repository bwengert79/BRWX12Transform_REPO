<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="STC">
    <xsl:apply-templates select="STC01[node()]" />
    <xsl:apply-templates select="STC02[node()]" />
    <xsl:apply-templates select="STC04[node()]" />
    <xsl:apply-templates select="STC05[node()]" />
    <xsl:apply-templates select="STC06[node()]" />
    <xsl:apply-templates select="STC08[node()]" />
    <xsl:apply-templates select="STC09[node()]" />
    <xsl:apply-templates select="STC10[node()]" />
    <xsl:apply-templates select="STC11[node()]" />
    <xsl:if test="string-length(normalize-space(STC12))!=0">
      <tr>
        <td class="label">
        Free From Text: 
        </td>
        <td class="data1">
          <xsl:value-of select="STC12"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

  <xsl:template match="STC01">
    <xsl:if test="STC01-01[node()]">
      <xsl:call-template name="format_category_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC01-01"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC01-02[node()]">
      <xsl:call-template name="format_status_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC01-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC01-03[node()]">
      <xsl:call-template name="format_entity_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC01-03"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC01-04[node()]">

      <xsl:call-template name="format_qualifier_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC01-04"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template match="STC02">
    <tr>
      <td class="label">
        Status Date:
      </td>
      <td class="data1">
        <xsl:call-template name="format_date">
          <xsl:with-param name="theDate">

            <xsl:value-of select="."/>

          </xsl:with-param>
        </xsl:call-template>
      </td>
    </tr>
  </xsl:template>
  
  <xsl:template match="STC04">
    <tr>
      <td class="label">
      Total Claim Charge Amount: 
      </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="STC05">
    <tr>
      <td class="label">
        Claim Payment Amount:
      </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="STC06">
     <tr>
       <td class="label">
         Adjudication Finalized Date:
       </td>
       <td class="data1">
         <xsl:call-template name="format_date">
           <xsl:with-param name="theDate">
             <xsl:value-of select="."/>
           </xsl:with-param>
         </xsl:call-template>
       </td>
    </tr> 
  </xsl:template>
  
  <xsl:template match="STC08">
    <tr>
      <td class="label">
        Remittance Date:
      </td>
      <td class="data1">
        <xsl:call-template name="format_date">
          <xsl:with-param name="theDate">

            <xsl:value-of select="."/>

          </xsl:with-param>
        </xsl:call-template>
      </td>
    </tr>
  </xsl:template>
  
  <xsl:template match="STC09">
    <tr>
      <td class="label">
        Check Number:
      </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="STC10">
    <xsl:if test="STC10-01[node()]">
      <xsl:call-template name="format_category_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC10-01"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC10-02[node()]">
      <xsl:call-template name="format_status_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC10-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC10-03[node()]">
      <xsl:call-template name="format_entity_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC10-03"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC10-04[node()]">

      <xsl:call-template name="format_qualifier_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC10-04"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template match="STC11">
    <xsl:if test="STC11-01[node()]">
      <xsl:call-template name="format_category_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC11-01"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC11-02[node()]">
      <xsl:call-template name="format_status_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC11-02"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC11-03[node()]">
      <xsl:call-template name="format_entity_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC11-03"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>

    <xsl:if test="STC11-04[node()]">

      <xsl:call-template name="format_qualifier_code">
        <xsl:with-param name="theCode">
          <xsl:value-of select="STC11-04"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template name="format_category_code">
    <xsl:param name="theCode"/>
    <tr>
      <td class="label">
        Category Code:
      </td>
      <td class="data1">
        <xsl:value-of select="$theCode"/>
        -
        <xsl:value-of select="$codelist/claim277_codelist/category/codelist/code[@id=$theCode]"/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template name="format_status_code">
    <xsl:param name="theCode"/>
    <tr>
      <td class="label">
        Status Code:
      </td>
      <td class="data1">
        <xsl:value-of select="$theCode"/>
        -
        <xsl:value-of select="$codelist/claim277_codelist/claim_status/codelist/code[@id=$theCode]"/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template name="format_entity_code">
    <xsl:param name="theCode"/>
    <tr>
      <td class="label">
        Entity Code:
      </td>
      <td class="data1">
        <xsl:value-of select="$theCode"/>
        -
        <xsl:value-of select="$codelist/claim277_codelist/entity/codelist/code[@id=$theCode]"/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template name="format_qualifier_code">
    <xsl:param name="theCode"/>
    <tr>
      <td class="label">
        Qualifier Code:
      </td>
      <td class="data1">
        <xsl:value-of select="$theCode"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

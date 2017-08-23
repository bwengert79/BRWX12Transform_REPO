<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="N3">
    <tr>
      <td class="label">Address: </td>
      <td class="data1"><xsl:value-of select="N301"/></td>
    </tr>
    <xsl:if test="string-length(normalize-space(N302))!=0">
      <tr>
        <td class="label"></td>
        <td class="data1">
          <xsl:value-of select="N302"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

  <xsl:template match="N4">
    <tr>
      <td class="label">City, State Zip: </td>
      <td class="data1">
        <xsl:value-of select="N401"/>, <xsl:value-of select="N402"/>&#160;
        <xsl:call-template name="format_zipcode">
          <xsl:with-param name="theZipCode">
            <xsl:value-of select="N403"/>
          </xsl:with-param>
        </xsl:call-template>        
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

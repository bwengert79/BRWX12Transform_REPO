<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="ISA">
    <div class="section">
      <div class="secHeader">Interchange Control Header (ISA)</div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:if test="string-length(normalize-space(ISA09))!=0">
            <tr>
              <td class="label">Interchange Date:</td>
              <td class="data1">
                <xsl:call-template name="format_date">
                  <xsl:with-param name="theDate">
                    <xsl:value-of select="ISA09"/>
                  </xsl:with-param>
                </xsl:call-template>
              </td>
            </tr>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(ISA10))!=0">
            <tr>
              <td class="label">Interchange Time:</td>
              <td class="data1">
                <xsl:call-template name="format_time">
                  <xsl:with-param name="theTime">
                    <xsl:value-of select="ISA10"/>
                  </xsl:with-param>
                </xsl:call-template>
              </td>
            </tr>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(ISA13))!=0">
            <tr>
              <td class="label">Interchange Control Number:</td>
              <td class="data1">
                <xsl:value-of select="ISA13"/>
              </td>
            </tr>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(ISA15))!=0">
            <tr>
              <td class="label">Interchange Usage Indicator:</td>
              <td class="data1">
                <xsl:value-of select="ISA15"/>
              </td>
            </tr>
          </xsl:if>
        </table>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>

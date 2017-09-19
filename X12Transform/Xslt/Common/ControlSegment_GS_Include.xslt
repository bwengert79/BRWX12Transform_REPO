<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="GS">
    <div class="section">
      <div class="secHeader">Functional Group Header (GS)</div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:if test="string-length(normalize-space(GS02))!=0">
            <tr>
              <td class="label">Sender Code:</td>
              <td class="data1">
                <xsl:value-of select="GS02"/>
              </td>
            </tr>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(GS03))!=0">
            <tr>
              <td class="label">Receiver Code:</td>
              <td class="data1">
                <xsl:value-of select="GS03"/>
              </td>
            </tr>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(GS04))!=0">
            <tr>
              <td class="label">Acknowledgment Create Date:</td>
              <td class="data1">
                <xsl:call-template name="format_date">
                  <xsl:with-param name="theDate">
                    <xsl:value-of select="GS04"/>
                  </xsl:with-param>
                </xsl:call-template>
              </td>
            </tr>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(GS05))!=0">
            <tr>
              <td class="label">Acknowledgment Create Time:</td>
              <td class="data1">
                <xsl:call-template name="format_time">
                  <xsl:with-param name="theTime">
                    <xsl:value-of select="GS05"/>
                  </xsl:with-param>
                </xsl:call-template>

              </td>
            </tr>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(GS06))!=0">
            <tr>
              <td class="label">Group Control Number:</td>
              <td class="data1">
                <xsl:value-of select="GS06"/>
              </td>
            </tr>
          </xsl:if>
        </table>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>

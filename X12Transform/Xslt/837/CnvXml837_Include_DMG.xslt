<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="DMG">
    <xsl:if test="string-length(normalize-space(DMG02))!=0">
      <tr>
        <td class="label">DOB: </td>
        <td class="data1">
          <xsl:call-template name="format_date">
            <xsl:with-param name="theDate">
              <xsl:value-of select="DMG02"/>
            </xsl:with-param>
          </xsl:call-template>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="string-length(normalize-space(DMG03))!=0">
      <tr>
        <td class="label">Gender: </td>
        <td class="data1"><xsl:value-of select="DMG03"/></td>
      </tr>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="PAT">

    <xsl:if test="normalize-space(PAT06)">
      <tr>
        <td class="label">Date of Death: </td>
        <td class="data1">
          <xsl:call-template name="format_date">
            <xsl:with-param name="theDate">
              <xsl:value-of select="PAT06"/>
            </xsl:with-param>
          </xsl:call-template>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(PAT08)">
      <tr>
        <td class="label">Patient Weight: </td>
        <td class="data1">
          <xsl:value-of select="PAT08"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(PAT09)">
      <tr>
        <td class="label">Patient Pregnant: </td>
        <td class="data1">
          <xsl:value-of select="PAT09"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

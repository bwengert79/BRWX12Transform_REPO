<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="DTM">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="DTM01 = '036'">Expiration Date: </xsl:when>
          <xsl:when test="DTM01 = '050'">Received Date: </xsl:when>
          <xsl:when test="DTM01 = '150'">Service Period Start: </xsl:when>
          <xsl:when test="DTM01 = '151'">Service Period End: </xsl:when>
          <xsl:when test="DTM01 = '232'">Claim Statement Period Start: </xsl:when>
          <xsl:when test="DTM01 = '233'">Claim Statement Period End: </xsl:when>
          <xsl:when test="DTM01 = '405'">Production Date: </xsl:when>
          <xsl:when test="DTM01 = '472'">Service Date: </xsl:when>
          <xsl:otherwise>
            Date Time Qualifier (<xsl:value-of select="DTM01"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>

      <td class="data1">
        <xsl:call-template name="format_date">
        <xsl:with-param name="theDate">
            <xsl:value-of select="DTM02"/>
        </xsl:with-param>
      </xsl:call-template>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>

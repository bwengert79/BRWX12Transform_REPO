<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TRN">
    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="TRN01 = '1'">
            <xsl:choose>
              <xsl:when test="../../Loop[@id = '2200A']">Application Trace ID:</xsl:when>
              <xsl:when test="../../Loop[@id = '2200C']">Provider Trace ID:</xsl:when>
              <xsl:otherwise>
                Trace Type Code (<xsl:value-of select="TRN01"/>):
              </xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:when test="TRN01 = '2'">
            <xsl:choose>
              <xsl:when test="../../Loop[@id = '2200B']">Claim Trnx Batch Number:</xsl:when>
              <xsl:when test="../../Loop[@id = '2200D']">Patient Control Number:</xsl:when>
              <xsl:otherwise>
                Trace Type Code (<xsl:value-of select="TRN01"/>):
              </xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise>
            Trace Type Code (<xsl:value-of select="TRN01"/>):
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td class="data1">
        <xsl:value-of select="TRN02"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

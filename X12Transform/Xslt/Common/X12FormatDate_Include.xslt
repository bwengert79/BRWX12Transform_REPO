<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="format_date">
    <xsl:param name="theDate"/>
    <xsl:choose>
      <xsl:when test="string-length($theDate)=8">
          <xsl:value-of select="concat(
                      substring($theDate, 5, 2),
                      '/',
                      substring($theDate, 7, 2),
                      '/',
                      substring($theDate, 1, 4))"/>
      </xsl:when>
      <xsl:when test="string-length($theDate)=17">
          <xsl:value-of select="concat(
                      substring($theDate, 5, 2),
                      '/',
                      substring($theDate, 7, 2),
                      '/',
                      substring($theDate, 1, 4),
                      '-',
                      substring($theDate, 14, 2),
                      '/',
                      substring($theDate, 16, 2),
                      '/',
                      substring($theDate, 10, 4))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$theDate"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>

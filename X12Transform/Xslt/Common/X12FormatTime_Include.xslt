<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="format_time">
    <xsl:param name="theTime"/>
    <xsl:choose>
      <xsl:when test="string-length($theTime)=4">
          <xsl:value-of select="concat(
                      substring($theTime, 1, 2),
                      ':',
                      substring($theTime, 3, 2))"/>
      </xsl:when>
      <xsl:when test="string-length($theTime)=6">
        <xsl:value-of select="concat(
                      substring($theTime, 1, 2),
                      ':',
                      substring($theTime, 3, 2),
                      ':',
                      substring($theTime, 5, 2))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$theTime"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>

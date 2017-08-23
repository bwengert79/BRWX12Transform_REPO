<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="format_phone">
    <xsl:param name="thePhone"/>
    <xsl:choose>
      <xsl:when test="string-length($thePhone)=10">
        <xsl:value-of select="concat(
                      '(',
                      substring($thePhone, 1, 3),
                      ')',
                      substring($thePhone, 4, 3),
                      '-',
                      substring($thePhone, 7, 4))"/>
      </xsl:when>
      <xsl:when test="string-length($thePhone)=7">
        <xsl:value-of select="concat(
                      substring($thePhone, 1, 3),
                      '-',
                      substring($thePhone, 4, 4))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$thePhone"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>

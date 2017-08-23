<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="format_zipcode">
    <xsl:param name="theZipCode"/>
    <xsl:choose>
      <xsl:when test="string-length($theZipCode)=9">
        <xsl:value-of select="concat(
                      substring($theZipCode, 1, 5),
                      '-',
                      substring($theZipCode, 6, 4))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$theZipCode"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>

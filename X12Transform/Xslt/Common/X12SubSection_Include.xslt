<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="format_subsection">
    <xsl:param name="theLabel"/>
    <tr>
      <td class="subsection" colspan="2">*** <xsl:value-of select="$theLabel"/> ***</td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

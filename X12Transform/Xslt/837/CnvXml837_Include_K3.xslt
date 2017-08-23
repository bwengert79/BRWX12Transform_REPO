<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="K3">

    <xsl:if test="normalize-space(K301)">
      <tr>
        <td class="label">Fixed Format Information: </td>
        <td class="data1">
          <xsl:value-of select="K301"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="LX">

    <tr>
      <td class="label">Transaction Set Number: </td>
      <td class="data1">
        <xsl:value-of select="LX01"/>
      </td>
    </tr>

  </xsl:template>

</xsl:stylesheet>

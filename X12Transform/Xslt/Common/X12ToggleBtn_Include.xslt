<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="toggle_all_child_sections">
    <xsl:param name="btnText"/>
    <button class="btnToggleAll" type="button" onclick="onToggleChildSections()">
      <xsl:value-of select="$btnText"/>
    </button>
  </xsl:template>

  <xsl:template name="toggle_all_tab_sections">
    <xsl:param name="btnText"/>
    <button class="btnToggleAll" type="button" onclick="onToggleTabSections()">
      <xsl:value-of select="$btnText"/>
    </button>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="utf-8" indent="no" doctype-system="about:legacy-compat"/>

  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8" />
      </head>

      <xsl:call-template name="X12_Style">
      </xsl:call-template>

      <body>
        <div class="main">
          <div class="title">Implementation Acknowledgment For Health Care Insurance</div>
          <div class="title">Stand-alone Implementation Acknowledgment (TA1)</div>
          <xsl:apply-templates select="X12/InterchangeControl/ISA" />
          <xsl:apply-templates select="X12/InterchangeControl/TA1" />
        </div>
      </body>
  </html>
  </xsl:template>
  
  <xsl:template match="ISA">
    <div class="secHeader">
      ISA
    </div>
    <div>
        <span class="label">Sender ID: </span>
      <span class="data1">
        <xsl:value-of select="./ISA06" />
      </span>
    </div>
  </xsl:template>

  <xsl:include href="CnvXmlTA1_Include.xslt" />
  <xsl:include href="..\Common\X12Style_Include.xslt" />

</xsl:stylesheet>

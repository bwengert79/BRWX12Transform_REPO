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

      <xsl:call-template name="X12_Script">
      </xsl:call-template>

      <body>
        <div class="main">
          <div class="title">Health Care Claim Status Request (276)</div>
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/TransactionSet[@id = '276']" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:include href="CnvXml276_Include.xslt" />
  <xsl:include href="CnvXml276_Include_AMT.xslt" />
  <xsl:include href="CnvXml276_Include_DTP.xslt" />
  <xsl:include href="CnvXml276_Include_NM1.xslt" />
  <xsl:include href="CnvXml276_Include_TRN.xslt" />
  <xsl:include href="CnvXml276_Include_REF.xslt" />
  <xsl:include href="CnvXml276_Include_SVC.xslt" />
  <xsl:include href="..\Common\X12FormatDate_Include.xslt" />
  <xsl:include href="..\Common\X12FormatPhone_Include.xslt" />
  <xsl:include href="..\Common\X12Style_Include.xslt" />
  <xsl:include href="..\Common\X12Script_Include.xslt" />

</xsl:stylesheet>

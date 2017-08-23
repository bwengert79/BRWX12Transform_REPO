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
          <div class="title">Health Care Claim Status Response (277)</div>
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/TransactionSet[@id = '277']" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:variable name="codelist" select="document('claim277_codelist.xml')"/>
  
  <xsl:include href="CnvXml277_Include_005010X212.xslt" />
  <xsl:include href="CnvXml277_Include_DTP.xslt" />
  <xsl:include href="CnvXml277_Include_NM1.xslt" />
  <xsl:include href="CnvXml277_Include_PER.xslt" />
  <xsl:include href="CnvXml277_Include_REF.xslt" />
  <xsl:include href="CnvXml277_Include_STC.xslt" />
  <xsl:include href="CnvXml277_Include_SVC.xslt" />
  <xsl:include href="CnvXml277_Include_TRN_005010X212.xslt" />
  <xsl:include href="..\Common\X12FormatDate_Include.xslt" />
  <xsl:include href="..\Common\X12FormatPhone_Include.xslt" />
  <xsl:include href="..\Common\X12SubSection_Include.xslt" />
  <xsl:include href="..\Common\X12Style_Include.xslt" />
  <xsl:include href="..\Common\X12Script_Include.xslt" />

</xsl:stylesheet>

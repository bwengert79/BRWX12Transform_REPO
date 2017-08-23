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
          <div class="title">
            Health Care Claim Payment/Advice (835)
          </div>
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/TransactionSet[@id = '835']" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:variable name="codelist" select="document('remit_codelist.xml')"/>

  <xsl:include href="CnvXml835_Include.xslt"/>
  <xsl:include href="CnvXml835_Include_AMT.xslt"/>
  <xsl:include href="CnvXml835_Include_BPR.xslt"/>
  <xsl:include href="CnvXml835_Include_CAS.xslt"/>
  <xsl:include href="CnvXml835_Include_CLP.xslt"/>
  <xsl:include href="CnvXml835_Include_CUR.xslt"/>
  <xsl:include href="CnvXml835_Include_DTM.xslt"/>
  <xsl:include href="CnvXml835_Include_LQ.xslt"/>
  <xsl:include href="CnvXml835_Include_LX.xslt"/>
  <xsl:include href="CnvXml835_Include_MIA.xslt"/>
  <xsl:include href="CnvXml835_Include_MOA.xslt"/>
  <xsl:include href="CnvXml835_Include_N1.xslt"/>
  <xsl:include href="CnvXml835_Include_N3_N4.xslt"/>
  <xsl:include href="CnvXml835_Include_NM1.xslt"/>
  <xsl:include href="CnvXml835_Include_PER.xslt"/>
  <xsl:include href="CnvXml835_Include_PLB.xslt"/>
  <xsl:include href="CnvXml835_Include_QTY.xslt"/>
  <xsl:include href="CnvXml835_Include_RDM.xslt"/>
  <xsl:include href="CnvXml835_Include_REF.xslt"/>
  <xsl:include href="CnvXml835_Include_SVC.xslt"/>
  <xsl:include href="CnvXml835_Include_TRN.xslt"/>
  <xsl:include href="CnvXml835_Include_TS2.xslt"/>
  <xsl:include href="CnvXml835_Include_TS3.xslt"/>
  <xsl:include href="..\Common\X12FormatDate_Include.xslt" />
  <xsl:include href="..\Common\X12FormatPhone_Include.xslt" />
  <xsl:include href="..\Common\X12FormatZipCode_Include.xslt" />
  <xsl:include href="..\Common\X12SubSection_Include.xslt" />
  <xsl:include href="..\Common\X12ToggleBtn_Include.xslt" />
  <xsl:include href="..\Common\X12Style_Include.xslt" />
  <xsl:include href="..\Common\X12Script_Include.xslt" />

</xsl:stylesheet>

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
          <div class="title">Health Care Claim: Instituional (837)</div>
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/TransactionSet[@id = '837']" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:include href="CnvXml837_Include_005010X223.xslt" />
  <xsl:include href="CnvXml837_Include_AMT.xslt" />
  <xsl:include href="CnvXml837_Include_CAS.xslt" />
  <xsl:include href="CnvXml837_Include_CL1.xslt" />
  <xsl:include href="CnvXml837_Include_CLM.xslt" />
  <xsl:include href="CnvXml837_Include_CN1.xslt" />
  <xsl:include href="CnvXml837_Include_CRC.xslt" />
  <xsl:include href="CnvXml837_Include_CTP.xslt" />
  <xsl:include href="CnvXml837_Include_CUR.xslt" />
  <xsl:include href="CnvXml837_Include_DMG.xslt" />
  <xsl:include href="CnvXml837_Include_DTP.xslt" />
  <xsl:include href="CnvXml837_Include_HCP.xslt" />
  <xsl:include href="CnvXml837_Include_HI.xslt" />
  <xsl:include href="CnvXml837_Include_K3.xslt" />
  <xsl:include href="CnvXml837_Include_LIN.xslt" />
  <xsl:include href="CnvXml837_Include_LX.xslt" />
  <xsl:include href="CnvXml837_Include_MEA.xslt" />
  <xsl:include href="CnvXml837_Include_MIA.xslt" />
  <xsl:include href="CnvXml837_Include_MOA.xslt" />
  <xsl:include href="CnvXml837_Include_N3_N4.xslt" />
  <xsl:include href="CnvXml837_Include_NM1.xslt" />
  <xsl:include href="CnvXml837_Include_NTE.xslt" />
  <xsl:include href="CnvXml837_Include_OI.xslt" />
  <xsl:include href="CnvXml837_Include_PAT.xslt" />
  <xsl:include href="CnvXml837_Include_PER.xslt" />
  <xsl:include href="CnvXml837_Include_PRV.xslt" />
  <xsl:include href="CnvXml837_Include_PS1.xslt" />
  <xsl:include href="CnvXml837_Include_PWK.xslt" />
  <xsl:include href="CnvXml837_Include_REF.xslt" />
  <xsl:include href="CnvXml837_Include_SBR.xslt" />
  <xsl:include href="CnvXml837_Include_SV2.xslt" />
  <xsl:include href="CnvXml837_Include_SVD.xslt" />
  <xsl:include href="..\Common\X12FormatDate_Include.xslt" />
  <xsl:include href="..\Common\X12FormatPhone_Include.xslt" />
  <xsl:include href="..\Common\X12FormatZipCode_Include.xslt" />
  <xsl:include href="..\Common\X12SubSection_Include.xslt" />
  <xsl:include href="..\Common\X12ToggleBtn_Include.xslt" />
  <xsl:include href="..\Common\X12Style_Include.xslt" />
  <xsl:include href="..\Common\X12Script_Include.xslt" />

</xsl:stylesheet>

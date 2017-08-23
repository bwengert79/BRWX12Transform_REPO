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
          <div class="title">
            Health Care Claim Pending Status Information (277)
            <br></br>
            <span class="alertText">Unrecognized Version</span>
          </div>
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/GS" />
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/TransactionSet[@id = '277']" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="GS">
    <div class="section">Functional Group</div>
    <div>
      <span class="label">Version Release Identifier Code: </span>
      <span class="data1"><xsl:value-of select="GS08"/></span>
    </div>
  </xsl:template>
  
  <xsl:template match="TransactionSet[@id = '277']">
    <div class="section">Transaction Set</div>
    <div>
      <span class="label">Transaction Set Identifier Code: </span>
      <span class="data1">
        <xsl:value-of select="ST/ST01"/>
      </span>
    </div>
    <div>
      <span class="label">Version Release Identifier Code: </span>
      <span class="data1">
        <xsl:value-of select="ST/ST03"/>
      </span>
    </div>
  </xsl:template>

  <xsl:include href="..\Common\X12Style_Include.xslt" />

</xsl:stylesheet>

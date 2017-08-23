<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TransactionSet[@id = '837']">
    <xsl:apply-templates select="Loop[@id = '1000A']" />
    <xsl:apply-templates select="Loop[@id = '1000B']" />
    <xsl:apply-templates select="Loop[@id = '2000A']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '1000A']">
    <div class="section">
      <div class="secHeader">Submitter Information</div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="NM1" />
          <xsl:apply-templates select="PER" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '1000B']">
    <div class="section">
      <div class="secHeader">Reveiver Information</div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="NM1" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2000A']">
    <div class="section">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Billing Provider Information
        <xsl:call-template name="toggle_all_child_sections">
          <xsl:with-param name="btnText">
            <xsl:text>Collapse All Subscribers</xsl:text>
          </xsl:with-param>
        </xsl:call-template>
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="PRV" />
          <xsl:apply-templates select="Loop[@id = '2010AA']" />
          <xsl:apply-templates select="Loop[@id = '2010AB']" />
          <xsl:apply-templates select="Loop[@id = '2010AC']" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2000B']">
          <xsl:sort select="Loop[@id = '2010BA']/NM1/NM103[../NM101='IL']"/>
          <xsl:sort select="Loop[@id = '2010BA']/NM1/NM104[../NM101='IL']"/>
        </xsl:apply-templates>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2010AA']">
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="PER" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2010AB']">
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2010AC']">
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000B']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Subscriber Information
        <xsl:if test="Loop[@id = '2010BA']/NM1/NM101 = 'IL' and Loop[@id = '2010BA']/NM1/NM102 = '1'">
          &#160;-&#160;
          <xsl:value-of select="Loop[@id = '2010BA']/NM1/NM103"/>
          <xsl:if test="string-length(normalize-space(Loop[@id = '2010BA']/NM1/NM104))!=0">
            ,&#160;<xsl:value-of select="Loop[@id = '2010BA']/NM1/NM104"/>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(Loop[@id = '2010BA']/NM1/NM105))!=0">
            &#160;<xsl:value-of select="Loop[@id = '2010BA']/NM1/NM105"/>
          </xsl:if>
        </xsl:if>
        &#160;-&#160;
        <xsl:value-of select="Loop[@id = '2300']/CLM/CLM01"/>
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="SBR" />
          <xsl:apply-templates select="PAT" />
          <xsl:apply-templates select="Loop[@id = '2010BA']" />
          <xsl:apply-templates select="Loop[@id = '2010BB']" />
          <xsl:apply-templates select="Loop[@id = '2300']" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2000C']" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2010BA']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Subscriber Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
    <xsl:apply-templates select="DMG" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2010BB']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Payer Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2300']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Claim</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="CLM" />
    <xsl:apply-templates select="DTP" />
    <xsl:apply-templates select="CL1" />
    <xsl:apply-templates select="PWK" />
    <xsl:apply-templates select="CN1" />
    <xsl:apply-templates select="AMT" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="K3" />
    <xsl:apply-templates select="NTE" />
    <xsl:apply-templates select="CRC" />
    <xsl:apply-templates select="HI" />
    <xsl:apply-templates select="HCP" />
    <xsl:apply-templates select="Loop[@id = '2310A']" />
    <xsl:apply-templates select="Loop[@id = '2310B']" />
    <xsl:apply-templates select="Loop[@id = '2310C']" />
    <xsl:apply-templates select="Loop[@id = '2310D']" />
    <xsl:apply-templates select="Loop[@id = '2310E']" />
    <xsl:apply-templates select="Loop[@id = '2310F']" />
    <xsl:apply-templates select="Loop[@id = '2320']" />
    <xsl:apply-templates select="Loop[@id = '2400']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2310A']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Attending Provider Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="PRV" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2310B']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Operating Physician Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2310C']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Operating Physician Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2310D']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Rendering Provider Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2310E']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Service Facility Location Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2310F']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Referring Provider Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2320']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Subscriber Information</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="SBR" />
    <xsl:apply-templates select="CAS" />
    <xsl:apply-templates select="AMT" />
    <xsl:apply-templates select="OI" />
    <xsl:apply-templates select="MIA" />
    <xsl:apply-templates select="MOA" />
    <xsl:apply-templates select="Loop[@id = '2330A']" />
    <xsl:apply-templates select="Loop[@id = '2330B']" />
    <xsl:apply-templates select="Loop[@id = '2330C']" />
    <xsl:apply-templates select="Loop[@id = '2330D']" />
    <xsl:apply-templates select="Loop[@id = '2330E']" />
    <xsl:apply-templates select="Loop[@id = '2330F']" />
    <xsl:apply-templates select="Loop[@id = '2330G']" />
    <xsl:apply-templates select="Loop[@id = '2330H']" />
    <xsl:apply-templates select="Loop[@id = '2330I']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330A']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Subscriber Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330B']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Payer Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
    <xsl:apply-templates select="DTP" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330C']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Payer Attending Provider</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330D']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Payer Operating Physician</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330E']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Payer Other Operating Physician</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330F']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Payer Service Facility Location</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330G']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Payer Rendering Provider Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330H']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Payer Referring Provider </xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2330G']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Payer Billing Provider</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2400']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Service</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="LX" />
    <xsl:apply-templates select="SV2" />
    <xsl:apply-templates select="PWK" />
    <xsl:apply-templates select="DTP" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="AMT" />
    <xsl:apply-templates select="NTE" />
    <xsl:apply-templates select="HCP" />
    <xsl:apply-templates select="Loop[@id = '2410']" />
    <xsl:apply-templates select="Loop[@id = '2420A']" />
    <xsl:apply-templates select="Loop[@id = '2420B']" />
    <xsl:apply-templates select="Loop[@id = '2420C']" />
    <xsl:apply-templates select="Loop[@id = '2420D']" />
    <xsl:apply-templates select="Loop[@id = '2430']" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2410']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Drug Identification</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="LIN" />
    <xsl:apply-templates select="CTP" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2420A']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Operating Physician Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2420B']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Other Operating Physician Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2420C']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Rendering Provider Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2420D']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Referring Provider Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="REF" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2430']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Line Adjusication Information</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="SVD" />
    <xsl:apply-templates select="CAS" />
    <xsl:apply-templates select="DTP" />
    <xsl:apply-templates select="AMT" />
  </xsl:template>

  <xsl:template match="Loop[@id = '2000C']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Patient Detail
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="SBR" />
          <xsl:apply-templates select="PAT" />
          <xsl:apply-templates select="Loop[@id = '2010CA']" />
          <xsl:apply-templates select="Loop[@id = '2300']" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2010CA']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Patient Name</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="NM1" />
    <xsl:apply-templates select="N3" />
    <xsl:apply-templates select="N4" />
    <xsl:apply-templates select="DMG" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="PER" />
  </xsl:template>

</xsl:stylesheet>

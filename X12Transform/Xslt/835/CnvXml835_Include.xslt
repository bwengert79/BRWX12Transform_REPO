<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TransactionSet[@id = '835']">
    <div class="section">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span>Transaction Set
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="BPR" />
          <xsl:apply-templates select="TRN" />
          <xsl:apply-templates select="CUR" />
          <xsl:apply-templates select="REF" />
          <xsl:apply-templates select="DTM" />
        </table>
        <xsl:apply-templates select="Loop[@id = '1000A']" />
        <xsl:apply-templates select="Loop[@id = '1000B']" />
        <xsl:apply-templates select="Loop[@id = '2000']" />

        <xsl:if test="normalize-space(PLB)">
          <div class="section">
            <div class="secHeader">
              Provider Adjustment
            </div>
            <div class="secContent">
              <table class="secTable">
                <colgroup>
                  <col class="colLabel"></col>
                  <col class="colData"></col>
                </colgroup>
                <xsl:apply-templates select="PLB" />
              </table>
            </div>
          </div>
        </xsl:if>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '1000A']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span>Payer Identification
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="N1" />
          <xsl:apply-templates select="N3" />
          <xsl:apply-templates select="N4" />
          <xsl:apply-templates select="REF" />
          <xsl:apply-templates select="PER" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '1000B']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span>Payee Identification
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="N1" />
          <xsl:apply-templates select="N3" />
          <xsl:apply-templates select="N4" />
          <xsl:apply-templates select="REF" />
          <xsl:apply-templates select="RDM" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2000']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Claim Payment Group
        <xsl:call-template name="toggle_all_child_sections">
          <xsl:with-param name="btnText">
            <xsl:text>Collapse All Claim Payments</xsl:text>
          </xsl:with-param>
        </xsl:call-template>
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="LX" />
          <xsl:apply-templates select="TS3" />
          <xsl:apply-templates select="TS2" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2100']">
          <xsl:sort select="./NM1/NM103[../NM101='QC']"/>
          <xsl:sort select="./NM1/NM104[../NM101='QC']"/>
        </xsl:apply-templates>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100']">
    <div class="section indent">
      <div class="secHeader" onclick="onSectionClick()">
        <span class="secMarker">-</span> Claim Payment
        <xsl:if test="NM1/NM101 = 'QC' and NM1/NM102 = '1'">
          &#160;-&#160;
          <xsl:value-of select="NM1/NM103"/>
          <xsl:if test="string-length(normalize-space(NM1/NM104))!=0">
            ,&#160;<xsl:value-of select="NM1/NM104"/>
          </xsl:if>
          <xsl:if test="string-length(normalize-space(NM1/NM105))!=0">
            &#160;<xsl:value-of select="NM1/NM105"/>
          </xsl:if>
        </xsl:if>
        &#160;-&#160;
        <xsl:value-of select="CLP/CLP01"/>
      </div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="CLP" />
          <xsl:apply-templates select="CAS" />
          <xsl:apply-templates select="NM1" />
          <xsl:apply-templates select="MIA" />
          <xsl:apply-templates select="MOA" />
          <xsl:apply-templates select="REF" />
          <xsl:apply-templates select="DTM" />
          <xsl:apply-templates select="PER" />
          <xsl:apply-templates select="AMT" />
          <xsl:apply-templates select="QTY" />
          <xsl:apply-templates select="Loop[@id = '2110']" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Loop[@id = '2110']">
    <xsl:call-template name="format_subsection">
      <xsl:with-param name="theLabel">
        <xsl:text>Service Payment</xsl:text>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:apply-templates select="SVC" />
    <xsl:apply-templates select="DTM" />
    <xsl:apply-templates select="CAS" />
    <xsl:apply-templates select="REF" />
    <xsl:apply-templates select="AMT" />
    <xsl:apply-templates select="QTY" />
    <xsl:apply-templates select="LQ" />
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="ST">
    <div class="section">
      <div class="secHeader">Transaction Set Header (ST)</div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:if test="string-length(normalize-space(ST02))!=0">
            <tr>
              <td class="label">Transaction Set Control Number:</td>
              <td class="data1">
                <xsl:value-of select="ST02"/>
              </td>
            </tr>
          </xsl:if>
        </table>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="PWK">

    <xsl:if test="normalize-space(PWK01)">
      <tr>
        <td class="label">Report Type Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="PWK01 = '03'">
              Report Justifying Treatment Beyond Utilization
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="PWK01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(PWK02)">
      <tr>
        <td class="label">Attachment Transmission Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="PWK01 = 'AA'">
              Available on Request at Provider Site
            </xsl:when>
            <xsl:when test="PWK01 = 'BM'">
              By Mail
            </xsl:when>
            <xsl:when test="PWK01 = 'EL'">
              Electronically Only
            </xsl:when>
            <xsl:when test="PWK01 = 'EM'">
              E-Mail
            </xsl:when>
            <xsl:when test="PWK01 = 'FT'">
              File Transfer
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="PWK02"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

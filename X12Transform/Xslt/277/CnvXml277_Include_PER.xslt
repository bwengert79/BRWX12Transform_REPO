<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="PER">

    <tr>
      <td class="label">
        <xsl:choose>
          <xsl:when test="PER01 = 'IC'">
            Information Contact:
          </xsl:when>
          <xsl:otherwise>
            Contact:
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <xsl:if test="string-length(normalize-space(PER02))!=0">
        <td class="data1">
          <xsl:value-of select="PER02"/>
        </td>
      </xsl:if>
    </tr>

    <xsl:if test="PER03[node()]">
      <xsl:call-template name="format_contact">
      <xsl:with-param name="theType">
        <xsl:value-of select="PER03"/>
      </xsl:with-param>
      <xsl:with-param name="theContact">
        <xsl:value-of select="PER04"/>
      </xsl:with-param>
    </xsl:call-template>
    </xsl:if>

    <xsl:if test="PER05[node()]">
      <xsl:call-template name="format_contact">
      <xsl:with-param name="theType">
        <xsl:value-of select="PER05"/>
      </xsl:with-param>
      <xsl:with-param name="theContact">
        <xsl:value-of select="PER06"/>
      </xsl:with-param>
    </xsl:call-template>
    </xsl:if>

    <xsl:if test="PER07[node()]">
    <xsl:call-template name="format_contact">
      <xsl:with-param name="theType">
        <xsl:value-of select="PER07"/>
      </xsl:with-param>
      <xsl:with-param name="theContact">
        <xsl:value-of select="PER08"/>
      </xsl:with-param>
    </xsl:call-template>
    </xsl:if>

  </xsl:template>

  <xsl:template name="format_contact">
    <xsl:param name="theType"/>
    <xsl:param name="theContact"/>
    <tr>
      <xsl:choose>
        <xsl:when test="$theType = 'ED'">
          <td class="label">EDI Access Number: </td>
          <td class="data1">
            <xsl:value-of select="$theContact"/>
          </td>
        </xsl:when>
        <xsl:when test="$theType = 'EM'">
          <td class="label">EMail: </td>
          <td class="data1">
            <xsl:value-of select="$theContact"/>
          </td>
        </xsl:when>
        <xsl:when test="$theType = 'FX'">
          <td class="label">Fax: </td>
          <td class="data1">
            <xsl:call-template name="format_phone">
              <xsl:with-param name="thePhone">
                <xsl:value-of select="$theContact"/>
              </xsl:with-param>
            </xsl:call-template>
          </td>
        </xsl:when>
        <xsl:when test="$theType = 'TE'">
          <td class="label">Telephone: </td>
          <td class="data1">
            <xsl:call-template name="format_phone">
              <xsl:with-param name="thePhone">
                <xsl:value-of select="$theContact"/>
              </xsl:with-param>
            </xsl:call-template>
          </td>
        </xsl:when>
        <xsl:otherwise>
          <td class="label">
            Communication Type: (<xsl:value-of select="$theType"/>):
          </td>
          <td class="data1">
              <xsl:value-of select="$theContact"/>
          </td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:template>

</xsl:stylesheet>

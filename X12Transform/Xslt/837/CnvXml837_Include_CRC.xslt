<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="CRC">

    <xsl:if test="normalize-space(CRC01)">
      <tr>
        <td class="label">Category Code: </td>
        <td class="data1">
          <xsl:choose>
            <xsl:when test="CRC01 = '07'">
              Ambulance Certification
            </xsl:when>
            <xsl:when test="CRC01 = 'E1'">
              Spectacle Lenes
            </xsl:when>
            <xsl:when test="CRC01 = 'E2'">
              Contact Lenes
            </xsl:when>
            <xsl:when test="CRC01 = 'E3'">
              Spectacle Frames
            </xsl:when>
            <xsl:when test="CRC01 = '75'">
              Functional Limitations
            </xsl:when>
            <xsl:when test="CRC01 = 'ZZ'">
              Mutually Defined EPSDT Screening referral information
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="CRC01"/>
            </xsl:otherwise>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CRC03)">
      <tr>
        <td class="label">Condition Code: </td>
        <xsl:call-template name="CRC_condition_code">
          <xsl:with-param name="theCode">
            <xsl:value-of select="CRC02"/>
          </xsl:with-param>
          <xsl:with-param name="theResponse">
            <xsl:value-of select="CRC03"/>
          </xsl:with-param>
        </xsl:call-template>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CRC04)">
      <tr>
        <td class="label">Condition Code: </td>
        <xsl:call-template name="CRC_condition_code">
          <xsl:with-param name="theCode">
            <xsl:value-of select="CRC02"/>
          </xsl:with-param>
          <xsl:with-param name="theResponse">
            <xsl:value-of select="CRC04"/>
          </xsl:with-param>
        </xsl:call-template>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CRC05)">
      <tr>
        <td class="label">Condition Code: </td>
        <xsl:call-template name="CRC_condition_code">
          <xsl:with-param name="theCode">
            <xsl:value-of select="CRC02"/>
          </xsl:with-param>
          <xsl:with-param name="theResponse">
            <xsl:value-of select="CRC05"/>
          </xsl:with-param>
        </xsl:call-template>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CRC06)">
      <tr>
        <td class="label">Condition Code: </td>
        <xsl:call-template name="CRC_condition_code">
          <xsl:with-param name="theCode">
            <xsl:value-of select="CRC02"/>
          </xsl:with-param>
          <xsl:with-param name="theResponse">
            <xsl:value-of select="CRC06"/>
          </xsl:with-param>
        </xsl:call-template>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(CRC07)">
      <tr>
        <td class="label">Condition Code: </td>
        <xsl:call-template name="CRC_condition_code">
          <xsl:with-param name="theCode">
            <xsl:value-of select="CRC02"/>
          </xsl:with-param>
          <xsl:with-param name="theResponse">
            <xsl:value-of select="CRC07"/>
          </xsl:with-param>
        </xsl:call-template>
      </tr>
    </xsl:if>

  </xsl:template>

  <xsl:template name="CRC_condition_code">
    <xsl:param name="theCode"/>
    <xsl:param name="theResponse"/>
    <td class="data1">
      <xsl:value-of select="$theResponse"/>
      &#160;-&#160;
      <xsl:choose>
        <xsl:when test="$theCode = '01'">
          Patient was admitted to a hospital
        </xsl:when>
        <xsl:when test="$theCode = '04'">
          Patient was moved by stretcher
        </xsl:when>
        <xsl:when test="$theCode = '05'">
          Patient was unconscious or in shock
        </xsl:when>
        <xsl:when test="$theCode = '06'">
          Patient was transported in an emergency situation
        </xsl:when>
        <xsl:when test="$theCode = '07'">
          Patient had to be physically restrained
        </xsl:when>
        <xsl:when test="$theCode = '08'">
          Patient had visible hemorrhaging
        </xsl:when>
        <xsl:when test="$theCode = '09'">
          Ambulance service was medically necessary
        </xsl:when>
        <xsl:when test="$theCode = '12'">
          Paitient is confined to bed or chair
        </xsl:when>
        <xsl:when test="$theCode = 'L1'">
          General Standard of 20 Degree or .5 Diopter Sphere or Cylinder Change Met
        </xsl:when>
        <xsl:when test="$theCode = 'L2'">
          Replacement Due to Loss or Theft
        </xsl:when>
        <xsl:when test="$theCode = 'L3'">
          Replacement Due to Breakage or Damage
        </xsl:when>
        <xsl:when test="$theCode = 'L4'">
          Replacement Due to Patient Preference
        </xsl:when>
        <xsl:when test="$theCode = 'L5'">
          Replacement Due to Medical Reason
        </xsl:when>
        <xsl:when test="$theCode = 'IH'">
          Independent at Home
        </xsl:when>
        <xsl:when test="$theCode = 'AV'">
          Available - Not Used - Patient refused Referral
        </xsl:when>
        <xsl:when test="$theCode = 'NU'">
          Not Used
        </xsl:when>
        <xsl:when test="$theCode = 'S2'">
          Under Treatment
        </xsl:when>
        <xsl:when test="$theCode = 'ST'">
          New Services Requested
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$theCode"/>
        </xsl:otherwise>
      </xsl:choose>
    </td>
  </xsl:template>

</xsl:stylesheet>

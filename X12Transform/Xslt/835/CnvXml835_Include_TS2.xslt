<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TS2">

    <xsl:if test="normalize-space(TS201)">
      <tr>
        <td class="label">Total DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS201"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS202)">
      <tr>
        <td class="label">Total Federal Specific Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS202"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS203)">
      <tr>
        <td class="label">Total Hospital Specific Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS203"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS204)">
      <tr>
        <td class="label">Total Disproportionate Share Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS204"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS205)">
      <tr>
        <td class="label">Total Capital Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS205"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS206)">
      <tr>
        <td class="label">Total Indirect Medical Education Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS206"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS207)">
      <tr>
        <td class="label">Total Cost Outlier Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS207"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS208)">
      <tr>
        <td class="label">Total Day Outlier Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS208"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS209)">
      <tr>
        <td class="label">Total Cost Outlier Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS209"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS210)">
      <tr>
        <td class="label">Average DRG Length of Stay: </td>
        <td class="data1">
          <xsl:value-of select="TS210"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS211)">
      <tr>
        <td class="label">Total Discharge Count: </td>
        <td class="data1">
          <xsl:value-of select="TS211"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS212)">
      <tr>
        <td class="label">Total Cost Report Day Count: </td>
        <td class="data1">
          <xsl:value-of select="TS212"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS213)">
      <tr>
        <td class="label">Total Covered Day Count: </td>
        <td class="data1">
          <xsl:value-of select="TS213"/>
        </td>
      </tr>
    </xsl:if>
    
    <xsl:if test="normalize-space(TS214)">
      <tr>
        <td class="label">Total Noncovered Day Count: </td>
        <td class="data1">
          <xsl:value-of select="TS214"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS215)">
      <tr>
        <td class="label">Total MSP Pass-Through Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS215"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS216)">
      <tr>
        <td class="label">Average DRG weight: </td>
        <td class="data1">
          <xsl:value-of select="TS216"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS217)">
      <tr>
        <td class="label">Total PPS Capital FSP DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS217"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS218)">
      <tr>
        <td class="label">Total PPS Capital HSP DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS218"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(TS219)">
      <tr>
        <td class="label">Total PPS DSH DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="TS219"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="MIA">

    <xsl:if test="normalize-space(MIA01)">
      <tr>
        <td class="label">Covered Days or Visits Count: </td>
        <td class="data1"><xsl:value-of select="MIA01"/></td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA03)">
      <tr>
        <td class="label">Lifetime Psychiatric Days Count: </td>
        <td class="data1">
          <xsl:value-of select="MIA03"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA04)">
      <tr>
        <td class="label">Claim DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA04"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA05)">
      <tr>
        <td class="label">Claim Payment Remark Code: </td>
        <td class="data1">
          <xsl:value-of select="MIA05"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA06)">
      <tr>
        <td class="label">Claim Disproportionate Share Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA06"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA07)">
      <tr>
        <td class="label">Claim MSP Pass-through Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA07"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA08)">
      <tr>
        <td class="label">Claim PPS Capital Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA08"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA09)">
      <tr>
        <td class="label">PPS-Capital FSP DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA09"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA10)">
      <tr>
        <td class="label">PPS-Capital HSP DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA10"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA11)">
      <tr>
        <td class="label">PPS-Capital DSH DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA11"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA12)">
      <tr>
        <td class="label">Old Capital Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA12"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA13)">
      <tr>
        <td class="label">PPS-Capital IME Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA13"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA14)">
      <tr>
        <td class="label">PPS-Operating Hospital Specific DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA14"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA15)">
      <tr>
        <td class="label">Cost Report Day Count: </td>
        <td class="data1">
          <xsl:value-of select="MIA15"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA16)">
      <tr>
        <td class="label">PPS-Operating Federal Specific DRG Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA16"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA17)">
      <tr>
        <td class="label">Claim PPS Capital Outlier Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA17"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA18)">
      <tr>
        <td class="label">Claim Indirect Teaching Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA18"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA19)">
      <tr>
        <td class="label">Nonpayable Professional Component Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA19"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA20)">
      <tr>
        <td class="label">Claim Payment Remark Code: </td>
        <td class="data1">
          <xsl:value-of select="MIA20"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA21)">
      <tr>
        <td class="label">Claim Payment Remark Code: </td>
        <td class="data1">
          <xsl:value-of select="MIA21"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA22)">
      <tr>
        <td class="label">Claim Payment Remark Code: </td>
        <td class="data1">
          <xsl:value-of select="MIA22"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA23)">
      <tr>
        <td class="label">Claim Payment Remark Code: </td>
        <td class="data1">
          <xsl:value-of select="MIA23"/>
        </td>
      </tr>
    </xsl:if>

    <xsl:if test="normalize-space(MIA24)">
      <tr>
        <td class="label">PPS-Capital Exception Amount: </td>
        <td class="data1">
          <xsl:value-of select="MIA24"/>
        </td>
      </tr>
    </xsl:if>

  </xsl:template>

</xsl:stylesheet>

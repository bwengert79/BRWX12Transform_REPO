<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="TA1">
    <div class="section">
      <div class="secHeader">Interchange Acknowledgment (TA1)</div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="./TA101" />
          <xsl:apply-templates select="./TA102" />
          <xsl:apply-templates select="./TA103" />
          <xsl:apply-templates select="./TA104" />
          <xsl:apply-templates select="./TA105" />
        </table>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="TA101">
    <tr>
      <td class="label">Control Number: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="TA102">
    <tr>
      <td class="label">Interchange Date: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="TA103">
    <tr>
      <td class="label">Interchange Time: </td>
      <td class="data1">
        <xsl:value-of select="."/>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="TA104">
    <tr>
      <td class="label">Interchange Acknowledgement Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
        -
        <xsl:choose>
          <xsl:when test=". = 'A'">
            The Transmitted Interchange Control Structure Header and Trailer Have Been Received and Have No Errors.
          </xsl:when>
          <xsl:when test=". = 'E'">
            The Transmitted Interchange Control Structure Header and Trailer Have Been Received and Are Accepted But Errors Are Noted. This Means the Sender Must Not Resend This Data.
          </xsl:when>
          <xsl:when test=". = 'R'">
            The Transmitted Interchange Control Structure Header and Trailer are Rejected Because of Errors.
          </xsl:when>
          <xsl:otherwise>
            Description unavailable
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="TA105">
    <tr>
      <td class="label">Interchange Note Code: </td>
      <td class="data1">
        <xsl:value-of select="."/>
        -
        <xsl:choose>
          <xsl:when test=". = '000'">
            No error
          </xsl:when>
          <xsl:when test=". = '001'">
            The Interchange Control Number in the Header and Trailer Do Not Match. The Value From the Header is Used in the Acknowledgment.
          </xsl:when>
          <xsl:when test=". = '002'">
            This Standard as Noted in the Control Standards Identifier is Not Supported.
          </xsl:when>
          <xsl:when test=". = '003'">
            This Version of the Controls is Not Supported
          </xsl:when>
          <xsl:when test=". = '004'">
            The Segment Terminator is Invalid
          </xsl:when>
          <xsl:when test=". = '005'">
            Invalid Interchange ID Qualifier for Sender
          </xsl:when>
          <xsl:when test=". = '006'">
            Invalid Interchange Sender ID
          </xsl:when>
          <xsl:when test=". = '007'">
            Invalid Interchange ID Qualifier for Receiver
          </xsl:when>
          <xsl:when test=". = '008'">
            Invalid Interchange Receiver ID
          </xsl:when>
          <xsl:when test=". = '009'">
            Unknown Interchange Receiver ID
          </xsl:when>
          <xsl:when test=". = '010'">
            Invalid Authorization Information Qualifier Value
          </xsl:when>
          <xsl:when test=". = '011'">
            Invalid Authorization Information Value
          </xsl:when>
          <xsl:when test=". = '012'">
            Invalid Security Information Qualifier Value
          </xsl:when>
          <xsl:when test=". = '013'">
            Invalid Security Information Value
          </xsl:when>
          <xsl:when test=". = '014'">
            Invalid Interchange Date Value
          </xsl:when>
          <xsl:when test=". = '015'">
            Invalid Interchange Time Value
          </xsl:when>
          <xsl:when test=". = '016'">
            Invalid Interchange Standards Identifier Value
          </xsl:when>
          <xsl:when test=". = '017'">
            Invalid Interchange Version ID Value
          </xsl:when>
          <xsl:when test=". = '018'">
            Invalid Interchange Control Number Value
          </xsl:when>
          <xsl:when test=". = '019'">
            Invalid Acknowledgment Requested Value
          </xsl:when>
          <xsl:when test=". = '020'">
            Invalid Test Indicator Value
          </xsl:when>
          <xsl:when test=". = '021'">
            Invalid Number of Included Groups Value
          </xsl:when>
          <xsl:when test=". = '022'">
            Invalid Control Structure
          </xsl:when>
          <xsl:when test=". = '023'">
            Improper (Premature) End-of-File (Transmission)
          </xsl:when>
          <xsl:when test=". = '024'">
            Invalid Interchange Content (e.g., Invalid GS Segment)
          </xsl:when>
          <xsl:when test=". = '025'">
            Duplicate Interchange Control Number
          </xsl:when>
          <xsl:when test=". = '026'">
            Invalid Data Element Separator
          </xsl:when>
          <xsl:when test=". = '027'">
            Invalid Component Element Separator
          </xsl:when>
          <xsl:when test=". = '028'">
            Invalid Delivery Date in Deferred Delivery Request
          </xsl:when>
          <xsl:when test=". = '029'">
            Invalid Delivery Time in Deferred Delivery Request
          </xsl:when>
          <xsl:when test=". = '030'">
            Invalid Delivery Time Code in Deferred Delivery Request
          </xsl:when>
          <xsl:when test=". = '031'">
            Invalid Grade of Service Code
          </xsl:when>
          <xsl:otherwise>
            Description unavailable
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>

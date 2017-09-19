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
          <div class="title">Implementation Acknowledgment For Health Care Insurance (999)</div>
          <xsl:apply-templates select="X12/InterchangeControl/ISA" />
          <xsl:apply-templates select="X12/InterchangeControl/TA1" />
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/GS" />
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/TransactionSet[@id = '999']/ST" />
          <xsl:apply-templates select="X12/InterchangeControl/FunctionalGroup/TransactionSet[@id = '999']" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="TransactionSet[@id = '999']">
    <div class="section">
      <div class="secHeader">Functional Group Response Header</div>
      <div class="secContent">
        <xsl:apply-templates select="AK1" />
        <xsl:apply-templates select="Loop[@id = '2000']" />
        <xsl:apply-templates select="AK9" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="AK1">
    <table class="secTable">
      <colgroup>
        <col class="colLabel"></col>
        <col class="colData"></col>
      </colgroup>
      <xsl:if test="string-length(normalize-space(./AK101))!=0">
        <tr>
          <td class="label">Identifier Code:</td>
          <td class="data1">
            <xsl:value-of select="./AK101"/>
          </td>
        </tr>
      </xsl:if>
      <xsl:if test="string-length(normalize-space(./AK102))!=0">
        <tr>
          <td class="label">Control Number: </td>
          <td class="data1">
            <xsl:value-of select="./AK102"/>
          </td>
        </tr>
      </xsl:if>
    </table>
  </xsl:template>

  <xsl:template match="Loop[@id = '2000']">
    <div class="section indent">
      <div class="secHeader">Transaction Set Response Header</div>
      <div class="secContent">
        <xsl:apply-templates select="AK2" />
        <xsl:apply-templates select="Loop[@id = '2100']" />
        <xsl:apply-templates select="IK5" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="AK2">
    <table class="secTable">
      <colgroup>
        <col class="colLabel"></col>
        <col class="colData"></col>
      </colgroup>
      <xsl:if test="string-length(normalize-space(AK201))!=0">
        <tr>
          <td class="label">Identifier Code:</td>
          <td class="data1">
            <xsl:value-of select="AK201"/>
          </td>
        </tr>
      </xsl:if>
      <xsl:if test="string-length(normalize-space(AK202))!=0">
        <tr>
          <td class="label">Control Number: </td>
          <td class="data1">
            <xsl:value-of select="AK202"/>
          </td>
        </tr>
      </xsl:if>
    </table>
  </xsl:template>

  <xsl:template match="Loop[@id = '2100']">
    <div class="section indent">
      <div class="secHeader">Error Identification</div>
      <div class="secContent">
        <table class="secTable">
          <colgroup>
            <col class="colLabel"></col>
            <col class="colData"></col>
          </colgroup>
          <xsl:apply-templates select="IK3" />
          <xsl:apply-templates select="CTX" />
        </table>
        <xsl:apply-templates select="Loop[@id = '2110']" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="IK3">
    <xsl:if test="string-length(normalize-space(IK301))!=0">
      <tr>
        <td class="label">Segment ID Code:</td>
        <td class="data1">
          <xsl:value-of select="IK301"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="string-length(normalize-space(IK302))!=0">
      <tr>
        <td class="label">Segment Position: </td>
        <td class="data1">
          <xsl:value-of select="IK302"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="string-length(normalize-space(IK303))!=0">
      <tr>
        <td class="label">Loop ID Code: </td>
        <td class="data1">
          <xsl:value-of select="IK303"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="string-length(normalize-space(IK304))!=0">
      <tr>
        <td class="label">Error Code: </td>
        <td class="data1">
          <xsl:value-of select="IK304"/>
          -
          <xsl:choose>
            <xsl:when test="IK304 = '1'">Unrecognized segment ID</xsl:when>
            <xsl:when test="IK304 = '2'">Unexpected segment</xsl:when>
            <xsl:when test="IK304 = '3'">Required segment missing</xsl:when>
            <xsl:when test="IK304 = '4'">Loop occurs over maximum times</xsl:when>
            <xsl:when test="IK304 = '5'">Segment exceeds maximum use</xsl:when>
            <xsl:when test="IK304 = '6'">Segment not defined in transaction set</xsl:when>
            <xsl:when test="IK304 = '7'">Segment not in proper sequence</xsl:when>
            <xsl:when test="IK304 = '8'">Segment has data element errors</xsl:when>
            <xsl:when test="IK304 = 'I4'">Implementation Not Used segment present</xsl:when>
            <xsl:when test="IK304 = 'I6'">Implementation dependent segment missing</xsl:when>
            <xsl:when test="IK304 = 'I7'">Implementation loop occurs under minimum times</xsl:when>
            <xsl:when test="IK304 = 'I8'">Implementation segment below minimum use</xsl:when>
            <xsl:when test="IK304 = 'I9'">Implementation dependent Not Used segment present</xsl:when>
          </xsl:choose>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

  <xsl:template match="CTX">
    <xsl:choose>
      <xsl:when test="string-length(normalize-space(CTX01/CTX01-01))!=0">
        <tr>
          <td class="label">Context Name:</td>
          <td class="data1">
            <xsl:value-of select="CTX01/CTX01-01"/>
          </td>
        </tr>
        <xsl:if test="string-length(normalize-space(CTX01/CTX01-02))!=0">
          <tr>
            <td class="label">Context Reference:</td>
            <td class="data1">
              <xsl:value-of select="CTX01/CTX01-02"/>
            </td>
          </tr>
        </xsl:if>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="string-length(normalize-space(CTX01))!=0">
          <tr>
            <td class="label">Context Identification:</td>
            <td class="data1">
              <xsl:value-of select="CTX01"/>
            </td>
          </tr>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:if test="string-length(normalize-space(CTX02))!=0">
      <tr>
        <td class="label">Segment ID Code:</td>
        <td class="data1">
          <xsl:value-of select="CTX02"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="string-length(normalize-space(CTX03))!=0">
      <tr>
        <td class="label">Segment Position: </td>
        <td class="data1">
          <xsl:value-of select="CTX03"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="string-length(normalize-space(CTX04))!=0">
      <tr>
        <td class="label">Loop ID Code: </td>
        <td class="data1">
          <xsl:value-of select="CTX04"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="string-length(normalize-space(CTX05))!=0">
      <tr>
        <td class="label">Segment Position: </td>
        <td class="data1">
          <xsl:value-of select="CTX05"/>
        </td>
      </tr>
    </xsl:if>
    <xsl:if test="string-length(normalize-space(CTX06))!=0">
      <tr>
        <td class="label">Reference in Segment: </td>
        <td class="data1">
          <xsl:value-of select="CTX06"/>
        </td>
      </tr>
    </xsl:if>
  </xsl:template>

  <xsl:template match="Loop[@id = '2110']">
    <div class="indent">
      <xsl:apply-templates select="IK4" />
      <xsl:apply-templates select="CTX" />
    </div>
  </xsl:template>

  <xsl:template match="IK4">
    <div class="secHeader">Data Element Note</div>
    <div class="secContent">
      <table class="secTable">
        <colgroup>
          <col class="colLabel"></col>
          <col class="colData"></col>
        </colgroup>
        <xsl:if test="string-length(normalize-space(IK401))!=0">
          <tr>
            <td class="label">Position:</td>
            <td class="data1">
              <xsl:value-of select="IK401"/>
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(IK402))!=0">
          <tr>
            <td class="label">Ref Number: </td>
            <td class="data1">
              <xsl:value-of select="IK402"/>
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(IK403))!=0">
          <tr>
            <td class="label">Error Code: </td>
            <td class="data1">
              <xsl:value-of select="IK403"/>
              -
              <xsl:choose>
                <xsl:when test="IK403 = '1'">
                  Required data element missing
                </xsl:when>
                <xsl:when test="IK403 = '2'">
                  Conditional required data element missing
                </xsl:when>
                <xsl:when test="IK403 = '3'">
                  Too many data elements
                </xsl:when>
                <xsl:when test="IK403 = '4'">
                  Data element too short
                </xsl:when>
                <xsl:when test="IK403 = '5'">
                  Data element too long
                </xsl:when>
                <xsl:when test="IK403 = '6'">
                  Invalid character in data element
                </xsl:when>
                <xsl:when test="IK403 = '7'">
                  Invalid code value
                </xsl:when>
                <xsl:when test="IK403 = '8'">
                  Invalid Date
                </xsl:when>
                <xsl:when test="IK403 = '9'">
                  Invalid Time
                </xsl:when>
                <xsl:when test="IK403 = '10'">
                  Exclusion Condition Violated
                </xsl:when>
                <xsl:when test="IK403 = '12'">
                  Too many repetitions
                </xsl:when>
                <xsl:when test="IK403 = '13'">
                  Too many components
                </xsl:when>
                <xsl:when test="IK403 = 'I10'">
                  Implementation Not Used data element present
                </xsl:when>
                <xsl:when test="IK403 = 'I11'">
                  Implementation too few repetitions
                </xsl:when>
                <xsl:when test="IK403 = 'I12'">
                  Implementation pattern match failure
                </xsl:when>
                <xsl:when test="IK403 = 'I13'">
                  Impementation dependent Not User data element present
                </xsl:when>
                <xsl:when test="IK403 = 'I6'">
                  Code value not used in implementation
                </xsl:when>
                <xsl:when test="IK403 = 'I9'">
                  Impementation dependent data element missing
                </xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="IK403"/>
                </xsl:otherwise>
              </xsl:choose>
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(IK404))!=0">
          <tr>
            <td class="label">Element Copy: </td>
            <td class="data1">
              <xsl:value-of select="IK404"/>
            </td>
          </tr>
        </xsl:if>
      </table>
    </div>
  </xsl:template>

  <xsl:template match="IK5">
    <div class="secHeader">Transaction Set Response Trailer</div>
    <div class="secContent">
      <table class="secTable">
        <colgroup>
          <col class="colLabel"></col>
          <col class="colData"></col>
        </colgroup>
        <xsl:if test="string-length(normalize-space(IK501))!=0">
          <tr>
            <td class="label">Ack Code:</td>
            <td class="data1">
              <xsl:choose>
                <xsl:when test="IK501 = 'A'">Accepted</xsl:when>
                <xsl:when test="IK501 = 'E'">Accepted But Errors Were Noted</xsl:when>
                <xsl:when test="IK501 = 'M'">Rejected, Message Authentication Code (MAC) Failed</xsl:when>
                <xsl:when test="IK501 = 'R'">Rejected</xsl:when>
                <xsl:when test="IK501 = 'W'">Rejected, Assurance Failed Validity Tests</xsl:when>
                <xsl:when test="IK501 = 'X'">Rejected, Content After Decryption Could Not Be Analyzed</xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="IK501"/>
                </xsl:otherwise>
              </xsl:choose>
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(IK502))!=0">
          <tr>
            <xsl:call-template name="IK5_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK502"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(IK503))!=0">
          <tr>
            <xsl:call-template name="IK5_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK503"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(IK504))!=0">
          <tr>
            <xsl:call-template name="IK5_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK504"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(IK505))!=0">
          <tr>
            <xsl:call-template name="IK5_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK505"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(IK506))!=0">
          <tr>
            <xsl:call-template name="IK5_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK506"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
      </table>
    </div>
  </xsl:template>

  <xsl:template match="AK9">
    <div class="secHeader">Functional Group Response Trailer</div>

    <div class="secContent">
      <table class="secTable">
        <colgroup>
          <col class="colLabel"></col>
          <col class="colData"></col>
        </colgroup>
        <xsl:if test="string-length(normalize-space(AK901))!=0">
          <tr>
            <td class="label">Ack Code:</td>
            <td class="data1">
              <xsl:choose>
                <xsl:when test="AK901 = 'A'">Accepted</xsl:when>
                <xsl:when test="AK901 = 'E'">Accepted, But Errors Were Noted.</xsl:when>
                <xsl:when test="AK901 = 'M'">Rejected, Message Authentication Code (MAC) Failed</xsl:when>
                <xsl:when test="AK901 = 'P'">Partially Accepted, At Least One Transaction Set Was Rejected</xsl:when>
                <xsl:when test="AK901 = 'R'">Rejected</xsl:when>
                <xsl:when test="AK901 = 'W'">Rejected, Assurance Failed Validity Tests</xsl:when>
                <xsl:when test="AK901 = 'X'">Rejected, Content After Decryption Could Not Be Analyzed</xsl:when>
                <xsl:otherwise>
                  <xsl:value-of select="AK901"/>
                </xsl:otherwise>
              </xsl:choose>
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(AK902))!=0">
          <tr>
            <td class="label">TS Count: </td>
            <td class="data1">
              <xsl:value-of select="AK902"/>
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(AK903))!=0">
          <tr>
            <td class="label">TS Received: </td>
            <td class="data1">
              <xsl:value-of select="AK903"/>
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(AK904))!=0">
          <tr>
            <td class="label">TS Accepted: </td>
            <td class="data1">
              <xsl:value-of select="AK904"/>
            </td>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(AK905))!=0">
          <tr>
            <xsl:call-template name="AK9_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK502"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(AK906))!=0">
          <tr>
            <xsl:call-template name="AK9_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK502"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(AK907))!=0">
          <tr>
            <xsl:call-template name="AK9_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK502"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(AK908))!=0">
          <tr>
            <xsl:call-template name="AK9_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK502"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
        <xsl:if test="string-length(normalize-space(AK909))!=0">
          <tr>
            <xsl:call-template name="AK9_error_code">
              <xsl:with-param name="theCode">
                <xsl:value-of select="IK502"/>
              </xsl:with-param>
            </xsl:call-template>
          </tr>
        </xsl:if>
      </table>
    </div>
  </xsl:template>

  <xsl:template name="IK5_error_code">
    <xsl:param name="theCode"/>
    <tr>
      <td class="label">Error Code: </td>
      <td class="data1">
        <xsl:value-of select="$theCode"/>
        -
        <xsl:choose>
          <xsl:when test="$theCode = '1'">Transaction Set Not Supported</xsl:when>
          <xsl:when test="$theCode = '2'">Transaction Set Trailer Missing</xsl:when>
          <xsl:when test="$theCode = '3'">Transaction Set Control Number in Header and Trailer Do Not Match</xsl:when>
          <xsl:when test="$theCode = '4'">Number of Included Segments Does Not Match Actual Count</xsl:when>
          <xsl:when test="$theCode = '5'">One or More Segments in Error</xsl:when>
          <xsl:when test="$theCode = '6'">Missing or Invalid Transaction Set Identifier</xsl:when>
          <xsl:when test="$theCode = '7'">Missing or Invalid Transaction Set Control Number</xsl:when>
          <xsl:when test="$theCode = '8'">Authentication Key Name Unknown</xsl:when>
          <xsl:when test="$theCode = '9'">Encryption Key Name Unknown</xsl:when>
          <xsl:when test="$theCode = '10'">Requested Service (Authentication or Encrypted) Not Available</xsl:when>
          <xsl:when test="$theCode = '11'">Unknown Security Recipient</xsl:when>
          <xsl:when test="$theCode = '12'">Incorrect Message Length (Encryption Only)</xsl:when>
          <xsl:when test="$theCode = '13'">Message Authentication Code Failed</xsl:when>
          <xsl:when test="$theCode = '15'">Unknown Security Originator</xsl:when>
          <xsl:when test="$theCode = '16'">Syntax Error in Decrypted Text</xsl:when>
          <xsl:when test="$theCode = '17'">Security Not Supported</xsl:when>
          <xsl:when test="$theCode = '23'">Transaction Set Control Number Not Unique within the Functional Group</xsl:when>
          <xsl:when test="$theCode = '24'">S3E Security End Segment Missing for S3S Security Start Segment</xsl:when>
          <xsl:when test="$theCode = '25'">S3S Security Start Segment Missing for S3E Security End Segment</xsl:when>
          <xsl:when test="$theCode = '26'">S4E Security End Segment Missing for S4S Security Start Segment</xsl:when>
          <xsl:when test="$theCode = '27'">S4S Security Start Segment Missing for S4E Security End Segment</xsl:when>
          <xsl:when test="$theCode = 'I5'">Implementation One Or More Segments In Error</xsl:when>
          <xsl:when test="$theCode = 'I6'">Implementation Convention Not Supported</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$theCode"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:template name="AK9_error_code">
    <xsl:param name="theCode"/>
    <tr>
      <td class="label">Error Code: </td>
      <td class="data1">
        <xsl:value-of select="$theCode"/>
        -
        <xsl:choose>
          <xsl:when test="$theCode = '1'">Functional Group Not Supported</xsl:when>
          <xsl:when test="$theCode = '2'">Functional Group Version Not Supported</xsl:when>
          <xsl:when test="$theCode = '3'">Functional Group Trailer Missing</xsl:when>
          <xsl:when test="$theCode = '4'">Group Control Number in the Functional Group Header and Trailer Do Not Agree</xsl:when>
          <xsl:when test="$theCode = '5'">Number of Included Transaction Sets Does Not Match Actual Count</xsl:when>
          <xsl:when test="$theCode = '6'">Group Control Number Violates Syntax</xsl:when>
          <xsl:when test="$theCode = '10'">Authentication Key Name Unknown</xsl:when>
          <xsl:when test="$theCode = '11'">Encryption Key Name Unknown</xsl:when>
          <xsl:when test="$theCode = '12'">Requested Service (Authentication or Encryption) Not Available</xsl:when>
          <xsl:when test="$theCode = '13'">Unknown Security Recipient</xsl:when>
          <xsl:when test="$theCode = '14'">Unknown Security Originator</xsl:when>
          <xsl:when test="$theCode = '15'">Syntax Error in Decrypted Text</xsl:when>
          <xsl:when test="$theCode = '16'">Security Not Supported</xsl:when>
          <xsl:when test="$theCode = '17'">Incorrect Message Length (Encryption Only)</xsl:when>
          <xsl:when test="$theCode = '18'">Message Authentication Code Failed</xsl:when>
          <xsl:when test="$theCode = '23'">S3E Security End Segment Missing for S3S Security Start Segment</xsl:when>
          <xsl:when test="$theCode = '24'">S3S Security Start Segment Missing for S3E End Segment</xsl:when>
          <xsl:when test="$theCode = '25'">S4E Security End Segment Missing for S4S Security Start Segment</xsl:when>
          <xsl:when test="$theCode = '26'">S4S Security Start Segment Missing for S4E Security End Segment</xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$theCode"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>

  <xsl:include href="..\TA1\CnvXmlTA1_Include.xslt" />
  <xsl:include href="..\Common\X12Style_Include.xslt" />
  <xsl:include href="..\Common\X12FormatDate_Include.xslt" />
  <xsl:include href="..\Common\X12FormatTime_Include.xslt" />
  <xsl:include href="..\Common\ControlSegment_ISA_Include.xslt" />
  <xsl:include href="..\Common\ControlSegment_GS_Include.xslt" />
  <xsl:include href="..\Common\ControlSegment_ST_Include.xslt" />
</xsl:stylesheet>

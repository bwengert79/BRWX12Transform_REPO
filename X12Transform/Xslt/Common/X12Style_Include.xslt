<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="X12_Style">
      <style>
        body
        {
        font-family: Calibri, 'Times New Roman', Sans-Serif;
        }
        .main
        {
        position: relative; left: 10px;
        font-family: Calibri, 'Times New Roman', Sans-Serif;
        }
        .title
        {
        font-size:large;
        color:Blue;
        white-space:nowrap;
        }
        .label
        {
        vertical-align: top;
        }
        .data1
        {
        vertical-align: top;
        }
        .btnToggleAll
        {
        position: absolute;
        right: 10px;
        }
        .secHeader
        {
        font-weight: bold;
        font-size: larger;
        background-color: #aeceff;
        margin-top: 10px;
        padding-left: 5px;
        width: 100%;
        }
        .secContent
        {
        border-style: solid;
        border-width: 1px;
        }
        .secTable
        {
        table-layout: fixed;
        width: 100%;
        }
        .colLabel
        {
        width: 250px;
        }
        .colData
        {
        width: 100%;
        }
        .indent
        {
        margin-left: 15px;
        }
        .subsection
        {
        font-weight: bold;
        }
        .alert
        {
        background-color: red
        }
        .alertText
        {
        color: red
        }
        .tabBox
        {
        border-bottom: 1px solid #DDD;
        padding-bottom: 5px;
        margin-top: 20px;
        outline: none;
        cursor: default;
        }
        .tabBox a
        {
        border:1px solid #DDD;
        color:windowtext;
        padding: 3px 15px;
        text-decoration:none;
        background-color: white;
        font-weight: normal;
        }
        .tabBox a.activeLink
        {
        background-color: #aeceff;
        border-bottom: 0;
        padding: 4px 15px;
        font-size: larger;
        font-weight: bold;
        }
        .hide
        {
        display: none;
        }
      </style>
  </xsl:template>

</xsl:stylesheet>

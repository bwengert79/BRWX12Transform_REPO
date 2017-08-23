<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="X12_Script">
    
    <script type="text/javascript">
      function getSection(theElement) {
      if (theElement.className.indexOf("section") >= 0) {return theElement;}

      while (theElement.parentElement != null) {
      if (theElement.parentElement.className.indexOf("section") >= 0) {return theElement.parentElement;}
      else {theElement = theElement.parentElement}
      }

      return null;
      }

      function getSectionHeader(theElement) {
      if (theElement.className.indexOf("secHeader") >= 0) {return theElement;}

      if (theElement.parentElement) {
      if (theElement.parentElement.className.indexOf("secHeader") >= 0) {return theElement.parentElement;}
      }

      return null;
      }

      function getSectionMark(theHeader) {
      theHeader = getSectionHeader(theHeader);
      if (theHeader === null) {return null;}

      if (theHeader.firstChild.className.indexOf("secMarker") >= 0) {return theHeader.firstChild;}

      return null;
      }

      function getSectionContent(theHeader) {
      theHeader = getSectionHeader(theHeader);
      if (theHeader === null) {return null;}

      if (theHeader.nextSibling.className.indexOf("secContent") >= 0) {return theHeader.nextSibling;}

      return null;
      }

      function setSectionDisplay(bExpand, theMark, theContent) {
      if (bExpand) {
      theMark.innerText = "-";
      theContent.style.display = "block";
      }
      else {
      theMark.innerText = "+";
      theContent.style.display = "none";
      }
      }

      function onSectionClick() {

      theHeader = getSectionHeader(window.event.srcElement);
      if (theHeader === null) {return;}

      theMark = getSectionMark(theHeader);
      if (theMark === null) {return;}

      theContent = getSectionContent(theHeader);
      if (theContent === null) {return;}

      setSectionDisplay((theMark.innerText == "+"), theMark, theContent);
      }

      function onToggleChildSections() {
      window.event.cancelBubble = true;

      theButton = window.event.srcElement;

      theSection = getSection(theButton);
      if (theSection === null) {return;}

      theContent = theSection.firstChild;
      while (theContent != null) {
      if (theContent.className.indexOf("secContent") >= 0) {break;}
      theContent = theContent.nextSibling;
      }

      if (theContent === null) {return;}

      var bExpand = !(theButton.innerText.indexOf("Collapse") >= 0);

      theChildSection = theContent.firstChild;
      while (theChildSection != null)
      {
      if (theChildSection.className.indexOf("section") >= 0)
      {
      theContent = theChildSection.firstChild;
      while (theContent != null)
      {
      if (theContent.className.indexOf("secContent") >= 0)
      {
      theHeader = theContent.previousSibling;
      if (theHeader === null) {return;}

      theMark = getSectionMark(theHeader);
      if (theMark === null) {return;}

      setSectionDisplay(bExpand, theMark, theContent);
      }
      theContent = theContent.nextSibling;
      }
      }
      theChildSection = theChildSection.nextSibling;
      }

      if (bExpand == true) {
      theButton.innerText = theButton.innerText.replace("Expand", "Collapse");
      }
      else {
      theButton.innerText = theButton.innerText.replace("Collapse", "Expand");
      }
      }

      function getTabBox(theElement) {
      if (theElement.className.indexOf("tabBox") >= 0) {return theElement;}

      if (theElement.parentElement) {
      if (theElement.parentElement.className.indexOf("tabBox") >= 0) {return theElement.parentElement;}
      }

      return null;
      }

      function getTabContent(theElement) {
      theTabBox = getTabBox(theElement);
      if (theTabBox === null) {return null;}

      if (theTabBox.nextSibling.className.indexOf("tabContent") >= 0) {return theTabBox.nextSibling;}

      return null;
      }

      function getImmediateChildrenByClass(theParent, theName) {
      var theChildren = [];
      theChild = theParent.firstChild;
      while (theChild != null) {
      if (theChild.className.indexOf(theName) >= 0) {
      theChildren.push(theChild);
      }

      theChild = theChild.nextSibling;
      }

      return theChildren;
      }

      function onTabClick() {

      theTabBox = getTabBox(window.event.srcElement);
      if (theTabBox === null) {return;}

      theTabContent = getTabContent(theTabBox);
      if (theTabContent === null) {return;}

      theTabs = getImmediateChildrenByClass(theTabBox, "tabLink");
      theContents = getImmediateChildrenByClass(theTabContent, "tabItem");

      for (i = 0; i &lt; theTabs.length; i++) {
      if (theTabs[i] == window.event.srcElement) {
      theTabs[i].className = "tabLink activeLink";
      theContents[i].className = "tabItem";
      }
      else {
      theTabs[i].className = "tabLink";
      theContents[i].className = "tabItem hide";
      }
      }
      }

      function onToggleTabSections() {
      theButton = window.event.srcElement;

      theTabBox = getTabBox(window.event.srcElement);
      if (theTabBox === null) {return;}

      theTabContent = getTabContent(theTabBox);
      if (theTabContent === null) {return;}

      theTabItems = getImmediateChildrenByClass(theTabContent, "tabItem");

      var bExpand = !(theButton.innerText.indexOf("Collapse") >= 0);

      for (i = 0; i &lt; theTabItems.length; i++)
      {
      theChildSection = theTabItems[i].firstChild;

      while (theChildSection != null)
      {
      if (theChildSection.className.indexOf("section") >= 0) {break;}
      theChildSection = theChildSection.nextSibling;
      }

      while (theChildSection != null)
      {
      if (theChildSection.className.indexOf("section") >= 0)
      {
      theContent = theChildSection.firstChild;
      while (theContent != null)
      {
      if (theContent.className.indexOf("secContent") >= 0)
      {
      theHeader = theContent.previousSibling;
      if (theHeader === null) {return;}

      theMark = getSectionMark(theHeader);
      if (theMark === null) {return;}

      setSectionDisplay(bExpand, theMark, theContent);
      }
      theContent = theContent.nextSibling;
      }
      }
      theChildSection = theChildSection.nextSibling;
      }
      }

      if (bExpand == true) {
      theButton.innerText = theButton.innerText.replace("Expand", "Collapse");
      }
      else {
      theButton.innerText = theButton.innerText.replace("Collapse", "Expand");
      }
      }
    </script>

  </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<!-- This is an XSL stylesheet for making a clean table of LEGO colors using an XML file created from Ryan's spreadsheet -->
<!-- That XML file was generated using http://www.zamzar.com , although it feels like there should be an easier way to handle this (not to mention getting cleaner XML) -->
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	<xsl:template match="/">

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="utf-8" />
<title>Color List</title>
<link rel="stylesheet" href="./Color List_files/style.css" type="text/css" />
<script type="text/javascript" src="./Color List_files/jquery.js"></script> 
<script type="text/javascript" src="./Color List_files/jquery.tablesorter.js"></script> 
</head>

<body>

<a href="http://ryanhowerter.com/notes.html">Notes and Credits</a>
<a href="http://ryanhowerter.com/changelog.html">Changelog</a>

<br/>
<table id="myTable" class="tablesorter" border="0" cellpadding="0" cellspacing="1">
  <colgroup span="2" style="background-color:#ffff00;"></colgroup>
  <colgroup style="background-color:#0000FF;"></colgroup>
<thead>
<tr>
<th class="header">Material</th>
<th class="header">LEGO ID</th>
<th class="header">LEGO Name (*=unconfirmed)</th>
<th class="header">TLG's Modern Abbr.</th>
<th class="header">Photo</th>
<th class="header">Pos.</th>
<th class="header">BL ID</th>
<th class="header">BL Name</th>
<th class="header">LDraw ID</th>
<th class="header">LDraw Name</th>
<th class="header">Peeron Name</th>
<th class="header">Other/Colloquial</th>
<th class="header">Rarity</th>
<th class="header" colspan="2">Years Active</th>
<th class="header">Notes</th>
<th class="header">R</th>
<th class="header">G</th>
<th class="header">B</th>
<th class="header">Hex</th>
<th class="header">C</th>
<th class="header">M</th>
<th class="header">Y</th>
<th class="header">K</th>
<th class="header">Pantone</th>
</tr>
</thead>

<tbody>

		<xsl:for-each select="//Row">
			<xsl:variable name="altClass">
				<xsl:choose>
					<xsl:when test="position() mod 2 = 0">even</xsl:when>
					<xsl:otherwise>odd</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<tr class="{$altClass}">
				<td class="solid"><xsl:value-of select="@B" /></td>
				<td class="col1"><xsl:value-of select="@C" /></td>
				<td class="col2"><xsl:value-of select="@D" /></td>
				<td class="col3"><xsl:value-of select="@E" /></td>
				<td class="col4"><xsl:value-of select="@F" /></td>
				<td class="col5"><xsl:value-of select="@G" /></td>
				<td class="col6"><xsl:value-of select="@H" /></td>
				<td class="col7"><xsl:value-of select="@I" /></td>
				<td class="col8"><xsl:value-of select="@J" /></td>
				<td class="col9"><xsl:value-of select="@K" /></td>
				<td class="col10"><xsl:value-of select="@L" /></td>
				<td class="col11"><xsl:value-of select="@M" /></td>
				<td class="col12"><xsl:value-of select="@N" /></td>
				<td class="col13"><xsl:value-of select="@O" /></td>
				<td class="col14"><xsl:value-of select="@P" /></td>
				<td class="col15"><xsl:value-of select="@Q" /></td>
				<td class="col16"><xsl:value-of select="@R" /></td>
				<td class="col17"><xsl:value-of select="@S" /></td>
				<td class="col18"><xsl:value-of select="@T" /></td>
				<td class="col19"><xsl:value-of select="@U" /></td>
				<td class="col20"><xsl:value-of select="@V" /></td>
				<td class="col21"><xsl:value-of select="@W" /></td>
				<td class="col22"><xsl:value-of select="@X" /></td>
				<td class="col23"><xsl:value-of select="@Y" /></td>
				<td class="col24"><xsl:value-of select="@Z" /></td>
			</tr>
		</xsl:for-each>
</tbody>
</table>

<script type="text/javascript">
$(document).ready(function() 
    { 
        $("#myTable").tablesorter({ 
    widgets: ['zebra'] 
}); 
    } 
); 
</script>
</body>
</html>
	</xsl:template>
</xsl:stylesheet>


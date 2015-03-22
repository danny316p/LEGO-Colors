<?xml version="1.0" encoding="UTF-8"?>
<!-- This is an XSL stylesheet for making a clean table of LEGO colors using an XML file created from Ryan's spreadsheet -->
<!-- That XML file was generated using http://www.zamzar.com , although it feels like there should be an easier way to handle this (not to mention getting cleaner XML) -->
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	<xsl:template match="/">

new Timesheet('timesheet', 1950, 2015, [
<xsl:for-each select="//Row">
<xsl:if test="(not(@B='Modulex')) and (not(@B='Ink')) and (not(@B='Process'))">
	<xsl:choose>
	<xsl:when test="@D"> <!-- If we have an official name, we use it -->
		['<xsl:value-of select="@O" />', '<xsl:value-of select="@P" />', '<xsl:value-of select="@C" /> <xsl:value-of select="@D" />', 'dummy'],
	</xsl:when>
	<xsl:when test="not(@D)"> <!-- If official name is unknown, use BrickLink name -->
		['<xsl:value-of select="@O" />', '<xsl:value-of select="@P" />', '<xsl:value-of select="@C" /> <xsl:value-of select="@I" />', 'dummy'],
	</xsl:when>
	<xsl:when test="not(@D) and not(@I)"> <!--If BrickLink doesn't give it a name either, use a colloquial one -->
		['<xsl:value-of select="@O" />', '<xsl:value-of select="@P" />', '<xsl:value-of select="@C" /> <xsl:value-of select="@M" />', 'dummy'],
	</xsl:when>
	</xsl:choose>
</xsl:if>
</xsl:for-each>
]);
	</xsl:template>
</xsl:stylesheet>


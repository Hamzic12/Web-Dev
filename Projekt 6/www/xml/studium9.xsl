<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:template match="/">
    <html>
        <ul>
            <xsl:for-each select="//semestr">
                <xsl:sort select="sum(predmet/kredity)" data-type="number" order="descending"/>
                <xsl:if test="position()=1">
                    <xsl:value-of select="../@cislo"/> - <xsl:value-of select="@nazev"/>:
                    <xsl:apply-templates select="predmet" />
                </xsl:if>
            </xsl:for-each>
        </ul>
    </html>
  </xsl:template>

  <xsl:template match="predmet">
    <li>
        <xsl:value-of select="nazev"/>
    </li>
  </xsl:template>

</xsl:stylesheet>
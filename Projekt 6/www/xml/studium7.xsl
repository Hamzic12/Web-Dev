<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

    <xsl:template match="/">
        <html>
            <ul>
                <xsl:apply-templates select="//semestr">
                    <xsl:sort select="sum(predmet/kredity)" data-type="number" order="descending"/>
                </xsl:apply-templates>
            </ul>
        </html>
    </xsl:template>

    <xsl:template match="semestr">
        <li>
            <xsl:value-of select="@nazev"/> = <xsl:value-of select="sum(predmet/kredity)"/> kreditů
        </li>
    </xsl:template>
    
</xsl:stylesheet>
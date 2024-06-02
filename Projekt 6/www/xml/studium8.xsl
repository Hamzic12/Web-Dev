<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

    <xsl:template match="/">
        <html>
            <ul>
                <xsl:apply-templates select="//rocnik[1]/semestr[1]/predmet"/>
            </ul>
        </html>
    </xsl:template>

    <xsl:template match="predmet">
        <li>
            <xsl:attribute name="style">
                <xsl:choose>
                    <xsl:when test="@katedra='KMA'">
                        background: blue;
                    </xsl:when>
                    <xsl:otherwise>
                        background: yellow;
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:value-of select="nazev"/>
        </li>
    </xsl:template>

</xsl:stylesheet>
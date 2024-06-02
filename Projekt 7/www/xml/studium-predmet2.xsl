<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:param name="kodpredmetu"/>
    <xsl:template match="/">
        <html>
            <table border="1" align="center">
                <tr>
                    <th>Katedra a KOD</th>
                    <th>Nazev</th>
                    <th>Zakončení</th>                  
                </tr>
                <xsl:apply-templates select="//predmet"/>
            </table>
        </html>
    </xsl:template>

    <xsl:template match="predmet">
        <xsl:if test="@kod = $kodPredmetu">
            <tr align="center">
                <td><xsl:value-of select="@katedra"/>/<xsl:value-of select="@kod"/></td>
                <td><xsl:value-of select="nazev"/></td>
                <td><xsl:value-of select="zakonceni"/></td>
            </tr>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
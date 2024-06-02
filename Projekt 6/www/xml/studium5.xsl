<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
    <xsl:template match="/">
        <html>
            <table border="1">
                <tr>
                    <th>Předmět</th>
                    <th>Zakončení</th>
                    <th>Kredity</th>
                </tr>
                <xsl:apply-templates select="//rocnik[3]/semestr[@nazev='letni']/predmet">
                    <!--<xsl:sort select="@kod" order="descending"/>-->
                    <!--<xsl:sort select="kredity" order="descending"/>--> 
                </xsl:apply-templates>
            </table>
            <xsl:variable name="creditsSum">
                <xsl:value-of select="sum(//rocnik[3]/semestr[@nazev='letni']/predmet/kredity)"/>
            </xsl:variable>
            <h2>Celkem kreditů je <xsl:value-of select="$creditsSum"/></h2>
        </html>
    </xsl:template>
    
    <xsl:template match="predmet">
        <tr>
            <td>
                <xsl:value-of select="@katedra"/>/<xsl:value-of select="kod"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="nazev"/>
            </td>
            
            <td>
                <xsl:value-of select="zakonceni"/>
            </td>
            
            <td>
                <xsl:value-of select="kredity"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
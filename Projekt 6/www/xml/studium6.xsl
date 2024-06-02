<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

    <xsl:template match="/">
        <html>
            <table border="1" align="center">
                <tr>
                    <th>Kod</th>
                    <th>Zakončení</th>
                    <th>Kredity</th>
                    <th>Status</th>
                </tr>

                <xsl:apply-templates select="//predmet[kredity>'2']"/>
            </table>
        </html>
    </xsl:template>
    
    <xsl:template match="predmet">
        <tr align="center">
            <td>
                <xsl:value-of select="@katedra"/>/<xsl:value-of select="@kod"/>
                <xsl:text> </xsl:text>
            </td>
            <td>
                <xsl:value-of select="zakonceni"/>
            </td>
            <td>
                <xsl:value-of select="kredity"/>
            </td>
            <td>
                <xsl:value-of select="status"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
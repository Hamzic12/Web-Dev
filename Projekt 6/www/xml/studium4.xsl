<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
    <html>
        <body>
        <table border="1">
            <tr>
                <th>Kod</th>
                <th>Nazev</th>
                <th>Kredity</th>
                <th>Zakončení</th>
            </tr>
            <xsl:apply-templates select="//rocnik[1]/semestr[@nazev='zimni']/predmet[nazev='Matematika I']"/>
        </table>
        </body>
    </html>
</xsl:template>

<xsl:template match="predmet">
    <tr>
        <td>
            <xsl:value-of select="@katedra"/>/<xsl:value-of select="@kod"/>
        </td>
        <td>
            <xsl:value-of select="nazev"/>
        </td>
        <td>
            <xsl:value-of select="kredity"/>
        </td>
        <td>
            <xsl:value-of select="zakonceni"/>
        </td>
    </tr>
</xsl:template>


</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <h1 align="center">Studium informatiky</h1>
        <body>
            <xsl:apply-templates select="/studium"/>
            <xsl:apply-templates select="/predmet"/>
        </body>
    </html>
</xsl:template>

<xsl:template match="/studium">
    <table border = "1">
        <tr>
            <th>Předměty</th>
            <th>Vyučující</th>
            <th>Status</th>
            <th>Zakončení</th>
            <th>Kredity</th>
        </tr>

        <xsl:for-each select="rocnik/semestr/predmet">
            <tr>
                <td><xsl:value-of select="nazev"/></td>
                <td><xsl:value-of select="vyucujici"/></td>
                <td><xsl:value-of select="status"/></td>
                <td><xsl:value-of select="zakonceni"/></td>
                <td><xsl:value-of select="kredity"/></td>
            </tr>
        </xsl:for-each>
    </table>
</xsl:template>

</xsl:stylesheet>
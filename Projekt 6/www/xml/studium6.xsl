<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

    <xsl:template match="/">
                <xsl:template select="//semestr/predmet[kredity='2']"/>
    </xsl:template>
    
    <xsl:template match="semestr">
            <li>
                <xsd:value-of select="@katedra"/>/<xsd:value-of select="@kod"/>
            </li>
    </xsl:template>

</xsl:stylesheet>
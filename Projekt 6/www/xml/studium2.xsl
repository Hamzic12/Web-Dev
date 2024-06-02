<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:template match="/">
    <html>
        <h1 align="center">Seznam předmětů</h1>
      <body>
        <ul>
          <xsl:apply-templates select="//predmet"/>
        </ul>
      </body>
    </html>
  </xsl:template>

    <xsl:template match="predmet">
        <p>
            <xsl:attribute name="style">
                <xsl:choose>
                <xsl:when test="@katedra='KMA'">
                            background: blue;
                </xsl:when>
                <xsl:when test="@katedra='KI'">
                            background: red;
                </xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <xsl:value-of select="@katedra"/>/<xsl:value-of select="@kod"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="nazev"/>
        </p>
    </xsl:template>
</xsl:stylesheet>
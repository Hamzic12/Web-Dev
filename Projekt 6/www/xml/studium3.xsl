<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:template match="/">
    <table>
      <tr>
        <th>předmět</th> <th>kredity</th> <th>vyučující</th> 
      </tr>
      <xsl:apply-templates select="//rocnik[@cislo='1']/semestr[@nazev='zimni']/predmet"/>
    </table>
  </xsl:template>

  <xsl:template match="predmet">
    <tr>
      <td>
        <xsl:value-of select="@katedra"/>/<xsl:value-of select="@kod"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="nazev"/>
      </td>
      <td>
        <xsl:value-of select="kredity"/>
      </td>
      <td>
        <xsl:value-of select="vyucujici"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
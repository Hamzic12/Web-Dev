<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:template match="/">
    <html>
        <h2 align="center">Recipes</h2>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Meal Type</th>
                <th>Amount</th>
                <th>Ingredients</th>
                <th>Duration</th>
                <th>Instructions</th>
            </tr>
            <xsl:apply-templates select="//recipe"/>
        </table>
    </html>
  </xsl:template>

  <xsl:template match="recipe">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="mealtype"/></td>
      <td><xsl:value-of select="amount"/></td>
      <td>
        <ul>
          <xsl:for-each select="ingredients/ingredient">
            <li><xsl:value-of select="."/></li>
          </xsl:for-each>
        </ul>
      </td>
      <td><xsl:value-of select="duration"/></td>
      <td>
        <ul>
          <xsl:for-each select="instructions/instruction">
            <li><xsl:value-of select="."/></li>
          </xsl:for-each>
        </ul>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
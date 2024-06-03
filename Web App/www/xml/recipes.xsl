<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <xsl:template match="/">
    <html>
      <div class="container">
        <table border="5" class="table table-striped">

            <tr>
                <th>Name</th>
                <th>Meal Type</th>
                <th>Amount</th>
                <th>Ingredients</th>
                <th style="width: 130px;">Duration</th>
                <th>Instructions</th>
                <th>Youtube Video</th>
            </tr>
 
        <xsl:apply-templates select="//recipe"/>
        </table>
      </div>
    </html>
  </xsl:template>

  <xsl:template match="recipe">
      <tr>
        <td style="font-size: 20px;"><xsl:value-of select="name"/></td>
        <td style="font-size: 17px;"><xsl:value-of select="mealtype"/></td>
        <td style="font-size: 17px;"><xsl:value-of select="amount"/></td>
        <td>
          <ul>
            <xsl:for-each select="ingredients/ingredient">
              <li><xsl:value-of select="."/></li> 
            </xsl:for-each>
          </ul>
        </td>
        <td><xsl:value-of select="duration"/><xsl:text> </xsl:text><xsl:value-of select="duration/@unit"/> </td>
        <td>
          <ul>
            <xsl:for-each select="instructions/instruction">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
        </td>
        <td>
          <a href="{tutorial}">
            <xsl:value-of select="tutorial"/>
          </a>
        </td>
      </tr>
  </xsl:template>

</xsl:stylesheet>
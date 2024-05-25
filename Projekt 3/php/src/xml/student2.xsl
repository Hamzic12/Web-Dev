<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Student informace</h1>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">jmeno</th>
            <th style="text-align:left">prijmeni</th>
            <th style="text-align:left">forma</th>
            <th style="text-align:left">Telefonni cislo</th>
            <th style="text-align:left">Student Id</th>
          </tr>
          <xsl:for-each select="Univerzita/fakulta/student">
            <tr>
              <td><xsl:value-of select="jmeno"/></td>
              <td><xsl:value-of select="prijmeni"/></td>
              <td><xsl:value-of select="forma"/></td>
              <td><xsl:value-of select="telcislo"/></td>
              <td><xsl:value-of select="StId"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

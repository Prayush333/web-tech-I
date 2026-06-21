<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Bookstore</title>
    <style>
      body { font-family: Arial, sans-serif; margin: 30px; }
      h2 { color: #8B0000; }
      table { border-collapse: collapse; width: 80%; }
      th, td { border: 1px solid #999; padding: 8px 12px; text-align: left; }
      th { background-color: #8B0000; color: white; }
      tr:nth-child(even) { background-color: #f2f2f2; }
    </style>
  </head>
  <body>
    <h2>Bookstore Catalog</h2>
    <table>
      <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Year</th>
        <th>Price ($)</th>
        <th>Category</th>
      </tr>
      <xsl:for-each select="bookstore/book">
        <tr>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="author"/></td>
          <td><xsl:value-of select="year"/></td>
          <td><xsl:value-of select="price"/></td>
          <td><xsl:value-of select="@category"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
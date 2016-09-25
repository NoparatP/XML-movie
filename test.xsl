<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
<style>

h1 {
    font-family:Lucida Console;
    color: white;
    font-style: oblique;
    font-size: 40px;
    font-weight: bold;
}
h2{
    font-family:Lucida Console;
    color: white;
    font-size: 20px;
}
</style>
</head>
<body background="https://2.bp.blogspot.com/-B4xzmOrqYb0/V70YoPobGEI/AAAAAAAAjQc/6iVwuN74MOcPTdzF3QSUzIF8mtEavekQwCLcB/s1600/pastel-wallpaper01.jpg" bgproperties="fixed">
    <h1 align="center">My Movies Collection</h1>
    <h2 align="center">    SeriousLY's Store</h2>
    <table border="1" align="center" bgcolor="#FFFFFF">
    <tr>
      <td align="center" rowspan="2" bgcolor="#CD5C5C">Title</td>
      <td align="center"  rowspan="2" bgcolor="#F08080">Year</td>
      <td align="center" colspan="3" bgcolor="#FA8072">Types</td>
      <td align="center" rowspan="2" bgcolor="#E9967A">Time</td>
      <td align="center" rowspan="2" bgcolor="#FFA07A">Director</td>
    </tr>
   <tr >
      <td bgcolor="#AF601A">Type</td>
      <td bgcolor="#CA6F1E">Type</td>
      <td bgcolor="#E67E22">Type</td>
    </tr>
    <xsl:for-each select="movies/film">
    <xsl:sort select="year"/>
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="year"/></td>
      <td><xsl:value-of select="types/type[1]"/></td>
      <td><xsl:value-of select="types/type[2]"/></td>
      <td><xsl:value-of select="types/type[3]"/></td>
      <td><xsl:value-of select="time"/></td>
      <td><xsl:value-of select="director"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
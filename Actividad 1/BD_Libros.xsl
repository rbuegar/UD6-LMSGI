<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Tabla de Libros</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h2>Libros</h2>
        <table>
          <tr>
            <th>Código de Libro</th>
            <th>Título</th>
            <th>Editorial</th>
            <th>Edición</th>
            <th>ISBN</th>
            <th>Número de Páginas</th>
            <th>Autores</th>
            <th>Nacionalidad del Autor</th>
          </tr>
          <xsl:for-each select="Libros/libro">
            <tr>
              <td><xsl:value-of select="Cod_Libro"/></td>
              <td><xsl:value-of select="Titulo"/></td>
              <td><xsl:value-of select="Editorial"/></td>
              <td><xsl:value-of select="Edicion"/></td>
              <td><xsl:value-of select="ISBN"/></td>
              <td><xsl:value-of select="NumPaginas"/></td>
              <td>
                <xsl:for-each select="Autores/autor">
                  <xsl:value-of select="concat(Nombre, ' ', Apellidos)"/>
                  <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
              </td>
              <td>
                <xsl:for-each select="Autores/autor">
                  <xsl:value-of select="Nacionalidad"/>
                  <xsl:if test="position() != last()">, </xsl:if>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

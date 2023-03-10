<?xml version="1.0" encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match='/reservaeventos'>

<html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>
		<!-- Seleccionamos los conciertos  -->
		<section class="festival">
			<h1>FESTIVALES DE ROCK</h1>
			
			<table>
				<tr>
					<th>FESTIVAL</th>
					<th>CONCIERTO</th>
					<th>FECHA</th>
					<th>HORA</th>
					<th>LUGAR</th>
				</tr>
          <!-- Seleccionamos los festivales que queremos mostrar y les aplicamos la plantilla-->
				<!-- <xsl:apply-templates select="festival"/> -->
				 <xsl:for-each select="festival">
 	<!-- <xsl:value-of select="festival/conciertos"/> -->
	
			<tr>
			<!-- Mostramos el nombre del festival, concierto, su fecha, hora y lugar-->
				<td><xsl:value-of select="nombrefesti" /></td>
				<td><xsl:value-of select="conciertos/concierto/grupo" /></td>
				<td><xsl:value-of select="conciertos/concierto/fecha"/></td>
				<td><xsl:value-of select="conciertos/concierto/hora" /></td>
				<td><xsl:value-of select="lugar"/></td> 
			</tr>
		</xsl:for-each> 
									
			</table>			
		</section>
		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>


<!-- Formateamos los conciertos -->
	
    
</xsl:template>


</xsl:stylesheet>

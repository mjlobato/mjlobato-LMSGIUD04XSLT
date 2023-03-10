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
		
		<main class="principal">
		<!--Introduzco el enlace a la web-->	
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="restaurante/informacion/@tipo"/>
			</xsl:attribute>
				<xsl:value-of select="restaurante/nombrerestaurante"/> - <xsl:value-of select="restaurante/ciudad"/>
		</a>			
			
		<section class="restaurante">
			<xsl:apply-templates select="restaurante/menu/plato"/> 				
									
		</section>
		</main>
		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
        
    </xsl:template>

	<!-- <xsl:template match="restaurante">
		<xsl:value-of select="restaurante/nombrerestaurante/menu"/>
		<xsl:variable name="nombrerest" select="nombrerestaurante" />
		<tr>
			<td><xsl:value-of select="/restaurante[cod=$nombrerest]/nombrerestaurante" /></td>
			<td><xsl:value-of select="ciudad" /></td>
		</tr>
	</xsl:template> -->

	
	
			

    

</xsl:stylesheet>

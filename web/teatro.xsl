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
	<!--Seleccionamos la lista de obras de teatro-->	
		<main class="principal">
			<section class="teatro">
			<h3>PROXIMAS OBRAS DE TEATRO</h3>
			<xsl:for-each select="teatro" >	

				<!--Ordenarpor fecha más reciente-->		
				<xsl:sort select="fechahora/@dia" order="descending"/>					
									
				<!--Condición precio menor 20 euros-->
				<xsl:choose>			
					<xsl:when test="precio&lt;20">					
						<li class="subrayado"><xsl:value-of select="fechahora/@dia"/>:  <xsl:value-of select="obra" /></li>	
										</xsl:when>
					<xsl:otherwise>
						<li><xsl:value-of select="fechahora/@dia"/>:  <xsl:value-of select="obra" /></li>	
					</xsl:otherwise>	
					</xsl:choose>				
				</xsl:for-each>			
						
			</section>
				
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
        
</xsl:template>

</xsl:stylesheet>

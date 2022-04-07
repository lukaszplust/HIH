<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8" />
				<title>Trojboj silowy</title>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<link rel="stylesheet" href="style.css" />
			</head>
			<body>
				<h3>Rodzaj Suplementow</h3>
				<ul>
					<xsl:apply-templates select="//rodzaj_suplementu"/>
				</ul>
				<h3>Plany dla klientow</h3>
				<ul>
					<xsl:apply-templates select="//klient"/>
				</ul>

			</body>
		</html>
	</xsl:template>

	<xsl:template match="rodzaj_suplementu">
		<li>
			<xsl:value-of select="@suplement"/>
		</li>
	</xsl:template>

	<xsl:template match="klient">
		<li>
			<xsl:value-of select="informacje/nazwa"/>
		</li>
	</xsl:template>

</xsl:stylesheet>

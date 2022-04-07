<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet type="text/xsl" href="hih.xslt"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<xsl:variable name="klient_number" select="count(//klient)"/>
		<html>
			<head>
				<meta charset="UTF-8" />
				<title>Elektroman</title>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<link rel="stylesheet" href="style.css" />
			</head>
			<body>
				<h3>Rodzaj Suplementu</h3>
				<xsl:apply-templates select="//rodzaj_suplementu"/>

				<h3>Plany dla klientow</h3>
				<p>
					Informacje o <xsl:value-of select="$klient_number"/> planach i klientach.
				</p>
				<xsl:for-each select="//klient">

					<xsl:sort/>
					<xsl:number value="position()" format="1. "/>
					<xsl:call-template name="klient"/>
					<br/>
				</xsl:for-each>

				
			</body>
		</html>
	</xsl:template>


	<xsl:template match="rodzaj_suplementu">
		Suplement: <xsl:value-of select="@suplement"/> <br />
		Producent: <xsl:value-of select="producent"/> <br />
		Ilosc: <xsl:value-of select="ilosc"/> <br />
		Cena: <xsl:apply-templates select="cena" /> szt <br />
		<xsl:apply-templates select="zdjecie"/>
		<xsl:apply-templates select="link"/>
	</xsl:template>

	<xsl:template match="cena">
		<xsl:value-of select="."/>&#160;<xsl:value-of select="@szt"/>
	</xsl:template>



	<xsl:template name="klient">
		<xsl:apply-templates select="informacje" />
		<xsl:apply-templates select="zdjecie" />
		<xsl:apply-templates select="link" />
		<br />
	</xsl:template>

	<xsl:template match="zdjecie">
		<img src="{@source}" />
		<br />

		<xsl:if test="name(..)= 'klient'">
			<xsl:value-of select="."/>
			<br /> <br />
		</xsl:if>

	</xsl:template>

	<xsl:template match="link">
		<a href="{@source}">
			<xsl:value-of select="."/>
			<br />
		</a>
	</xsl:template>

	<xsl:template match="informacje">
		<xsl:value-of select="nazwa"/>
		<ul>
			<xsl:for-each select="./*">
				<xsl:choose>
					<xsl:when test="name(.)='nazwa'">
						<b>Informacje</b>
					</xsl:when>
					<xsl:otherwise>
						<li>
							<xsl:number value="position()-1" format="1) "/>
							<b><xsl:value-of select="name(.)"/>:&#160;&#160;</b>
							<xsl:value-of select="."/>
						</li>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</ul>
	</xsl:template>

</xsl:stylesheet>
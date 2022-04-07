<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

	<xsl:template match="/">

		<html>
			<head>
				<meta charset="UTF-8" />
			</head>
			<body>
				<header>
					<h3>Hypertext hypermedia</h3>
				</header>

				<section>
					<xsl:value-of select="history/person/name"/><xsl:text> </xsl:text>
					<xsl:value-of select="history/person/surname"/>
					<br/>
					<xsl:value-of select="history/person1/name"/><xsl:text> </xsl:text>
					<xsl:value-of select="history/person1/surname"/>
				</section>
			</body>
		</html>

	</xsl:template>


</xsl:stylesheet>



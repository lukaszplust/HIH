<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

	<xsl:template match="/">

		<html>
			<head>
				<meta charset="UTF-8" />
				<title>Hypertext hypermedia</title>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<link rel="stylesheet" href="index.css" />
			</head>
			<body>
				<div id="wrapper">
					<header>
						<h1>Hypertext hypermedia</h1>
					</header>

		<nav>
			<ul>
				<li> <a href="#lecture">Lecture</a> </li>
				<li> <a href="#lab">Laboratory</a> 	</li>
				<li> <a href="#project">Project</a> </li>
				<li> <a href="#links">Links</a> 		</li>
				<li> <a href="HiH0.xml">History</a>	</li>
			</ul>
		</nav>	

					<div id="content">
						<!-- a place for information about lecture, laboratory, project and links -->
						<h3 id="lecture">Lecture
						
						<img src="img/Vannevar-Bush.jpg">
						<xsl:attribute name="src">
						<xsl:value-of select="hipertext/history/person/source"/>
						</xsl:attribute>
						<xsl:attribute name="alt">
						<xsl:value-of select="hipertext/history/person/source">
						</xsl:attribute>
						</img>
						
						</h3>
						<p>
							Information about the lecture.
						</p>
						<!-- information about lecture -->

						<!-- reference to a template that allows to display information about laboratory and project -->

						<h3 id="links">Additional information about HTML and XML</h3>
						<ul>
							<!-- reference to a template that allows to display links -->
						</ul>

					</div>
					<!-- end content -->
				</div>
				<!-- end wrapper -->
				<footer>
					<xsl:apply-templates select="hipertext/course/student"/> <!-- reference to a template that allows for displaying information about the name and surname of the student -->
				</footer>
			</body>
		</html>

	</xsl:template>

	<xsl:template match="student">
		Copyright 2021, <xsl:value-of select="name"/> 
	</xsl:template>

	<xsl:template match="classes">
		<h3 id="lab">Laboratory</h3>
		<p>
			Information about the laboratory.
		</p>
		<ol>

		</ol>
	</xsl:template>


<!--
		<nav>
			<ul>
				<li> <a href="#lecture">Lecture</a> </li>
				<li> <a href="#lab">Laboratory</a> 	</li>
				<li> <a href="#project">Project</a> </li>
				<li> <a href="#links">Links</a> 		</li>
				<li> <a href="HiH0.xml">History</a>	</li>
			</ul>
		</nav>	
-->

<!--
				<h3 id="lab">Laboratory</h3>
				<p>
				Information about the laboratory.
				</p>	
				<ol>
					<li>......
						<ul>
							<li>...... </li>
						</ul>
					</li>

				</ol>
-->

<!--
			<h3 id="project">Project</h3>
			<p>
				Information about the project.
			</p>
			<table style="width:50%; border: 5px solid red">
				<tr>
					<th>Title of the project</th>
					<th>Score</th>
				</tr>
				
			</table>
-->

</xsl:stylesheet>

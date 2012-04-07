<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" encoding="utf-8" />
	<xsl:param name="columns" select="4" />
	<xsl:param name="use-summary">false</xsl:param>
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				<meta name="keywords" content=""/>
				<meta name="description" content=""/>
				<xsl:apply-templates select="document/title"/>
        <style type="text/css" media="print">
          body{ width: 90%; }
        </style>
				<style type="text/css">
          html{color:#000;background:#FFF;}
          body{font:13px/1.231 arial,helvetica,clean,sans-serif;*font-size:small;*font:x-small;}
          #hd,#bd,#ft,.yui-g,.yui-gb,.yui-gc,.yui-gd,.yui-ge,.yui-gf{zoom:1;}
          /*#doc2,.yui-t1,.yui-t2,.yui-t3,.yui-t4,.yui-t5,.yui-t6,.yui-t7{margin:auto;text-align:left;width:57.69em;*width:56.25em;}*/
          #doc2{width:73.076em;*width:71.25em; margin:auto;}

          #hd:after,#bd:after,#ft:after,.yui-g:after,
          .yui-gb:after,.yui-gc:after,.yui-gd:after,
          .yui-ge:after,.yui-gf:after{
          content:".";
          display:block;
          height:0;
          clear:both;
          visibility:hidden;
          }

          .yui-u { float:right; }
          div.first { float:left; width:60% }
          .yui-u ul { margin:0; padding:0; }
          .yui-u ul li {
          list-style: none outside none;
          }

          /* //-- yui-grids style overrides -- */
          body { font-family: Georgia; color: #444; }
          #inner { padding: 10px 80px; margin: 5px auto; background: #f5f5f5; border: solid #666; border-width: 8px 0 2px 0; }
          .yui-gf { margin-bottom: 1em; padding-bottom: 1em; border-bottom: 1px solid #ccc; }

          /* //-- header, body, footer -- */
          #hd { margin: 1em 0 1.5em 0; padding-bottom: 0.5em; border-bottom: 1px solid #ccc }
          h1,h2,h3,h4 { margin:0; padding-bottom:0; }
          #hd h1 {  width:100%; }
          #hd h2 { text-transform: uppercase; letter-spacing: 2px; font-style:italic; font-weight:bold; margin:0 0 0 0; }
          .first h2 {
          font-size: 115%;
          }
          .yui-gf h2 { font-weight: bold; }
          #bd, #ft { margin-bottom: 0.5em; }

          /* //-- footer -- */
          #ft { padding: 1em 0 1em 0; font-size: 92%; border-top: 1px solid #ccc; text-align: center; }
          #ft p { margin-bottom: 0; text-align: center;   }

          /* //-- core typography and style -- */
          #hd h1 { font-size: 36px; text-transform: uppercase; letter-spacing: 3px; }
          h2 { font-size: 115%; font-weight:bold }
          h3, h4 { font-size: 105%; }
          h1, h2, h3, h4 { color: #333; font-weight: normal; }
          #doc2 p { font-size: 100%; line-height: 18px; padding-right: 1.5em; }
          a { color: #990003 }
          a:hover { text-decoration: none; }
          strong { font-weight: bold; }
          .yui-t7 li { line-height: 24px; border-bottom: 1px solid #ccc; }
          .yui-t7 li.last{ border: none; }
          ul.worklist { margin-top: 10px; }
          ul.worklist li{  list-style:square inside; border:none; margin-left: 10px; line-height:24px; }

          p.enlarge { font-size: 144%; padding-right: 4.5em; line-height: 24px; margin:0; }
          p.enlarge span { color: #000 }
          .contact-info { margin-top: 7px; }

          /* //-- section styles -- */
          .job { position: relative; margin-bottom: 0.5em; margin-bottom: 0.75em; padding-bottom: 0.5em; border-bottom: 1px solid #ccc; }
          .degree { position: relative; margin-bottom: 0.5em; padding-bottom: 0.5em; border-bottom: 1px solid #ccc; }
          .job h3 { font-style: italic; }
          .job h4 { position: absolute; top: 0.35em; right: 0 }
          .job p { margin: 0.50em 0 1.5em 0; }
          .degree h3 { font-style: italic; }
          .degree h4 { position: absolute; top: 0.35em; right: 0 }

          .last { border: none; border-bottom: 0}
          .skills-list {  }
          .yui-t7.skills-list ul { margin: 0; }
          .yui-t7.skills-list li { margin: 3px 0; padding: 3px 0; }
          .yui-t7.skills-list li span { font-size: 152%; display: block; margin-bottom: -2px; padding: 0 }
          .talent { width: 33%; float: left; text-align:left; }
          .talent h2 { margin-bottom: 6px; }

          #srt-ttab { margin-bottom: 100px; text-align: center;  }
          #srt-ttab img.last { margin-top: 20px }

          /* --// override to force 1/8th width grids -- */
          .yui-gf .yui-u{width:82%;}
          .yui-gf div.first{width:17%; float:left; margin-right: 0px;}


          /* COVER LETTER AREA */
          #container { width:73.076em; margin: 5px auto; background: #f5f5f5; border: solid #666; border-width: 8px 0 2px 0; padding:}
          #containerf { width:73.076em; padding: 10px 80px; margin: 5px auto; background: #f5f5f5; border: solid #666; border-width: 8px 0 2px 0; height:100% }
          #container2 { padding-right: 80px; }
          #sidepanel{ padding: 50px 10px 0 20px; vertical-align:text-top; width:10%; text-align:left; font-weight:bold; font-size:15; border-right: 1px solid black; }
          #mainbody{ float: none; text-align:left; width: 90%; padding-left: 10px; }
          .flatsummary{  margin:0;padding:0 }
          .flatsummary li{ list-style:square inside; display:inline;margin-right:10px;}
          .bodylist li{ list-style:square inside; margin-left:35px; }
          #container h2 { margin: 1em 0 1.5em 0; padding-bottom: 0.5em; border-bottom: 1px solid #ccc }
          #container h2 { text-transform: uppercase; letter-spacing: 2px; font-style:italic; font-weight:bold; margin:0 0 0 0; }

          div.SenderAddress{
          margin-bottom:.0001pt;
          font-size:12.0pt;
          font-family:"Times New Roman","serif";
          margin-left: 0cm;
          margin-right: 0cm;
          margin-top: 0cm;
          }
          div.MsoDate{
          margin-top:50px;
          margin-right:0cm;
          margin-bottom:24.0pt;
          margin-left:0cm;
          font-size:12.0pt;
          font-family:"Times New Roman","serif";
          }
          p.MsoSalutation{
          margin-top:24.0pt;
          margin-right:0cm;
          margin-bottom:12.0pt;
          margin-left:0cm;
          font-size:12.0pt;
          font-family:"Times New Roman","serif";
          }
          p.MsoHeading{
          margin-top: 4px;
          margin-bottom: 4px;
          font-family:"Times New Roman","serif";
          text-decoration:underline;
          font-weight: bold;
          text-align:center;
          }
          p.MsoBodyText{
          margin-top:0cm;
          margin-right:0cm;
          margin-bottom:12.0pt;
          margin-left:0cm;
          font-size:12.0pt;
          font-family:"Times New Roman","serif";
          }
          p.MsoClosing{
          margin-top:0cm;
          margin-right:0cm;
          margin-bottom:48.0pt;
          margin-left:0cm;
          font-size:12.0pt;
          font-family:"Times New Roman","serif";
          }
        </style>
			</head>

			<body>
				<xsl:if test="document/cover/@include = 'true'">
					<xsl:apply-templates select="document/cover" />
					<div style="page-break-after:always">&#160;</div>
				</xsl:if>
				<xsl:if test="document/resume/@include = 'true'">
					<div id="doc2" class="yui-t7">
						<div id="inner">
							<xsl:call-template name="resume_header"/>
							<!--// hd -->
							<div id="bd">
								<div id="yui-main">
									<xsl:apply-templates select="document/resume" />
									<!--<xsl:apply-templates select="document/owner/education" />-->
								</div>
								<!-- //.main -->
							</div>
							<!-- //.bd -->
							<xsl:call-template name="footer" />
						</div>
					</div>
				</xsl:if>
			</body>
		</html>
	</xsl:template>

	<!--TITLE NODE-->
	<xsl:template match="title">
		<title>
			<xsl:value-of select="."/>
		</title>
	</xsl:template>

	
	<!--COVER LETTER-->
	<xsl:template match="cover">
    <div id="container">
      <table id="container2">
        <tr>
          <td id="sidepanel">
            <xsl:value-of select="title"/>
          </td>
          <td id="mainbody">
            <xsl:variable name="owner" select="../owner"/>
            <xsl:variable name="address" select="$owner/addresses/address[@type='local']" />
            <xsl:variable name="email" select="$owner/emails/email[1]"/>

            <xsl:variable name="street" select="$address/street" />
            <xsl:variable name="city" select="$address/city" />
            <xsl:variable name="province" select="$address/province" />
            <xsl:variable name="postalcode" select="$address/postalcode" />

            <xsl:variable name="addressflat" select="concat($street , ', ' , $city , ', ' , $province  , ', ' , $postalcode)"/>

            <div id="top">
              <h2>
                <xsl:value-of select="$owner/@name"/>
              </h2>
              <ul class="flatsummary">
                <li id="first">
                  <xsl:value-of select="$addressflat"/>
                </li>
                <li>
                  <xsl:text>&#164;</xsl:text>
                </li>
                <li>
                  <xsl:value-of select="$owner/phones/phone[@type='cell']"/>
                </li>
                <li>
                  <xsl:text>&#164;</xsl:text>
                </li>
                <li>
                  <xsl:value-of select="$email"/>
                </li>
              </ul>
            </div>
            <div id="horizontal">
              <hr />
            </div>

            <xsl:if test="employer-address/@include = 'true'">
              <div id="topmatter">
                <div class="MsoDate">
                  <span lang="en-us">
                    <span>
                      <xsl:value-of select="date"/>
                    </span>
                  </span>
                </div>
                <div class="SenderAddress">
                  <span lang="en-us">
                    <xsl:value-of select="employer-address/receiver"/>
                  </span>
                </div>
                <div class="SenderAddress">
                  <span lang="en-us">
                    <xsl:value-of select="employer-address/receiver-title"/>
                  </span>
                </div>
                <div class="SenderAddress">
                  <span lang="en-us">
                    <xsl:value-of select="employer-address/company"/>
                  </span>
                </div>
                <div class="SenderAddress">
                  <span lang="en-us">
                    <xsl:value-of select="employer-address/street"/>
                  </span>
                </div>
                <div class="SenderAddress">
                  <xsl:variable name="employer_address" select="concat(employer-address/city , ', ' , employer-address/province, ' ', employer-address/postalcode)" />
                  <span lang="en-us">
                    <xsl:value-of select="$employer_address"/>
                  </span>
                </div>
              </div>
            </xsl:if>
            <div id="letterbody">
              <p class="MsoSalutation">
                <span lang="en-us">
                  <xsl:value-of select="salutation"/>
                </span>
              </p>
              <div id="body">
                <xsl:apply-templates select="paragraphs" />

                <p class="MsoClosing" style="margin-bottom:12.0pt">
                  <span lang="en-us">
                    <xsl:value-of select="subscript"/>
                  </span>
                </p>
                <p class="MsoClosing" style="margin-bottom:12.0pt">
                  <span lang="en-us">
                    <p>
                      <xsl:text></xsl:text>
                    </p>
                    <p>
                      <xsl:text></xsl:text>
                    </p>
                  </span>
                </p>
                <p class="MsoClosing" style="margin-bottom:6.0pt">
                  <span lang="en-us">
                    <xsl:value-of select="subscript-name"/>
                  </span>
                </p>
                <p class="MsoClosing" style="margin-bottom:6.0pt">
                  <span lang="en-us">
                    <xsl:value-of select="footer"/>
                  </span>
                </p>
              </div>
            </div>
          </td>
        </tr>
      </table>
    </div>
	</xsl:template>

	<xsl:template match="paragraphs">
		<xsl:apply-templates />
	</xsl:template>
	
	<xsl:template match="paragraph">
		<p class="MsoBodyText">
			<span lang="en-us">
				<xsl:value-of select="." />
			</span>
		</p>
	</xsl:template>

	<xsl:template match="points">
		<p class="MsoBodyText">
			<span lang="en-us">
				<xsl:value-of select="@description" />
			</span>
			<ul class="bodylist">
				<xsl:for-each select="point">
					<li>
						<xsl:value-of select="."/>
					</li>
				</xsl:for-each>
			</ul>
		</p>
	</xsl:template>

	
	<!--RESUME SECTIONS-->
	<xsl:template match="resume">
		<div class="yui-b">
			<xsl:apply-templates select="application-summary"/>
			<xsl:apply-templates select="application-summary/technical-skills"/>
			<xsl:apply-templates select="experiences"/>
			<xsl:apply-templates select="../owner/education"/>
			<xsl:apply-templates select="miscelleaneous"/>
		</div>
		<!--// .yui-b -->
	</xsl:template>

	<xsl:template match="application-summary">
		<!--// PROFILE-->
		<div class="yui-gf">
			<div class="yui-u first">
				<h2>
					<xsl:value-of select="@name"/>
				</h2>
			</div>
			<div class="yui-u">
				<p class="enlarge">
					<xsl:value-of select="goal"/>
				</p>
			</div>
		</div>
		<!--// SKILLS-->
		<div class="yui-gf">
			<div class="yui-u first">
				<h2>
					Skills
				</h2>
			</div>
			<div class="yui-u">
				<xsl:apply-templates select="qualifications" />
			</div>
		</div>
		<!--// .yui-gf -->
	</xsl:template>

	<xsl:template match="qualifications">
		<!--// SKILLS-->
		<xsl:for-each select="qualification">
			<xsl:element name="div">
				<xsl:if test="position() = 1">
					<xsl:attribute name="class">talent ichi</xsl:attribute>
				</xsl:if>
				<xsl:if test="position() &gt; 1">
					<xsl:attribute name="class">talent</xsl:attribute>
				</xsl:if>
				<h2>
					<xsl:value-of select="@summary"/>
				</h2>
				<p>
					<xsl:value-of select="." />
				</p>
			</xsl:element>
		</xsl:for-each>
	</xsl:template>

	<!--// TECHNICAL SKILLS-->
	<xsl:template match="technical-skills">

		<xsl:for-each select="languages | tools">
			<div class="yui-gf">
				<div class="yui-u first">
					<h2>
						<xsl:value-of select="@type"/>
					</h2>
				</div>
				<div class="yui-u">
					<xsl:apply-templates select="self::node()" />
				</div>
			</div>
			<!--// .yui-gf-->
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="languages | tools" name="iterator_main">
		<xsl:param name="start" select="1" />
		<xsl:variable name="size" select="count(language | tool)" />
		<xsl:variable name="rows" select="ceiling($size div $columns)" />
		<xsl:variable name="condition1" select="language[(position() &gt; $start - 1) and (position() &lt; ($start + $rows))]"/>
		<xsl:variable name="condition2" select="tool[(position() &gt; $start - 1) and (position() &lt; ($start + $rows))]"/>
		<xsl:variable name="node" select="$condition1 | $condition2" />

		<xsl:if test="$start &lt; $size+1">
			<xsl:element name="ul">
				<xsl:attribute name="class">talent</xsl:attribute>
				<xsl:attribute name="style">width:<xsl:value-of select="concat(floor(100 div ceiling($size div $rows))-0.5, '%')"/>
			</xsl:attribute>
				<xsl:call-template name="write_skills">
					<xsl:with-param name="index" select="$start"/>
					<xsl:with-param name="node" select="$node"/>
					<xsl:with-param name="rows" select="$rows"/>
				</xsl:call-template>
			</xsl:element>
			<xsl:call-template name="iterator_main">
				<xsl:with-param name="start" select="$start + $rows"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template name="write_skills">
		<xsl:param name="index" />
		<xsl:param name="node" />
		<xsl:param name="rows" />
		<xsl:variable name="last" select="$node[last()]"/>
		<xsl:for-each select="$node">
			<xsl:element name="li">
				<xsl:if test=". = $last and (position() mod $rows = 0)">
					<xsl:attribute name="class">last</xsl:attribute>
				</xsl:if>
				<xsl:value-of select="."/>
			</xsl:element>
		</xsl:for-each>
	</xsl:template>

	<!--RESUME HEADER-->
	<xsl:template name="resume_header">
		<div id="hd">
			<div class="yui-gc">
				<div class="yui-u first">
					<h1>
						<xsl:value-of select="document/owner/@name"/>
					</h1>
					<h2>
						<xsl:value-of select="document/owner/status"/>
					</h2>
				</div>
				<div class="yui-u">
					<div class="contact-info">
						<h3>
							<div>
								<xsl:value-of select="document/owner/degree-status"/>
							</div>
						</h3>
						<h3>
							<xsl:variable name="email" select="document/owner/emails/email[1]"/>
							<a href="mailto:{$email}">
								<xsl:value-of select="$email"/>
							</a>
						</h3>
						<h3>
							<xsl:value-of select="document/owner/phones/phone[@type='cell']"/>
						</h3>
					</div>
					<!--// .contact-info -->
				</div>
			</div>
			<!--// .yui-gc -->
		</div>
		<!--// hd -->
	</xsl:template>

	<xsl:template match="experiences">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="experience">
		<xsl:variable name="last" select="history[last()]"/>
		<div class="yui-gf">
			<div class="yui-u first">
				<h2>
					<xsl:value-of select="@type"/>
				</h2>
			</div>
			<!--// .yui-u -->
			<div class="yui-u">
				<xsl:for-each select="history">
					<xsl:choose>
						<xsl:when test="$last = .">
							<div class="job last">
								<xsl:apply-templates select="."/>
							</div>
						</xsl:when>
						<xsl:otherwise>
							<div class="job">
								<xsl:apply-templates select="."/>
							</div>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</div>
			<!--// .yui-u -->
		</div>
		<!--// .yui-gf -->
	</xsl:template>

	<xsl:template match="history">
		<h2>
			<xsl:value-of select="company-name"/>
		</h2>
		<h3>
			<xsl:value-of select="position"/>
		</h3>
		<h4>
			<xsl:value-of select="@start"/> - <xsl:value-of select="@end"/>
		</h4>
		<xsl:choose>
			<xsl:when test="$use-summary = 'true'">
				<p>
					<xsl:value-of select="summary"/>
				</p>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="achievements" />
			</xsl:otherwise>
		</xsl:choose>
		<!--// .yui-u -->
	</xsl:template>

	<xsl:template match="achievements">
		<ul class="worklist">
			<xsl:for-each select="achievement">
				<li>
					<xsl:value-of select="."/>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:template match="miscelleaneous">
		<xsl:variable name="last" select="items/item[last()]"/>
		<div class="yui-gf last">
			<div class="yui-u first">
				<h2>
					<xsl:value-of select="@type"/>
				</h2>
			</div>
			<!--// .yui-u -->
			<div class="yui-u">
				<h2>
					<xsl:value-of select="summary"/>
				</h2>
				
				<ul class="worklist">
					<xsl:for-each select="items/item">
						<li>
							<xsl:value-of select="."/>
						</li>
					</xsl:for-each>
				</ul>
			</div>
			<!--// .yui-u -->
		</div>
		<!--// .yui-gf -->
	</xsl:template>

	<xsl:template match="education">
		<xsl:variable name="last" select="degrees/degree[last()]" />
		<!--TODO: rmr to change this to last if education is the last field-->
		<div class="yui-gf">
			<div class="yui-u first">
				<h2>
					Education
				</h2>
			</div>
			<xsl:for-each select="degrees/degree">
				<xsl:choose>
					<xsl:when test=". = $last">
						<div class="degree yui-u last">
							<h2>
								<xsl:value-of select="locationinfo"/>
							</h2>
							<h3>
								<xsl:value-of select="description" />
							</h3>
							<h4>
								<xsl:value-of select="@start"/> - <xsl:value-of select="@end"/>
							</h4>
						</div>
					</xsl:when>
					<xsl:otherwise>
						<div class="degree yui-u">
							<h2>
								<xsl:value-of select="locationinfo"/>
							</h2>
							<h3>
								<xsl:value-of select="description" />
							</h3>
							<h4>
								<xsl:value-of select="@start"/> - <xsl:value-of select="@end"/>
							</h4>
						</div>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</div>
		<!--// .yui-gf -->
	</xsl:template>

	<xsl:template name="footer">
		<xsl:variable name="email" select="document/owner/emails/email[1]" />
		<xsl:variable name="name" select="document/owner/@name" />
		<xsl:variable name="phone" select="document/owner/phones/phone[@type='cell']" />
		<div id="ft">
			<p>
				<xsl:value-of select="$name" /> <xsl:text> &#8212; </xsl:text> <a href="mailto:{$email}"> <xsl:value-of select="$email"/> </a> <xsl:text> &#8212; </xsl:text> <xsl:value-of select="$phone"/>
			</p>
		</div>
		<!--// footer -->

	</xsl:template>
</xsl:stylesheet>

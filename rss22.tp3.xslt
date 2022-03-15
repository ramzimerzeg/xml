<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
				xmlns:p="http://univrouen.fr/rss22" 
				version="1.0">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

	<xsl:template match="/p:feed">
	<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
      <xsl:element name="html">
        <xsl:element name="head">
          <xsl:element name="title"><xsl:text> TP4 FLUX RSS22 </xsl:text>
            <xsl:value-of select="titre"/>
          </xsl:element>
        </xsl:element>
        <xsl:element name="body">
       	  <xsl:text>TP4 FLUX RSS22 </xsl:text>
          <xsl:value-of select="pubDate"/><xsl:text> </xsl:text>
          <xsl:text>09 mars 2022 </xsl:text>
          <xsl:value-of select="pubDate"/><xsl:text> </xsl:text> 
          <xsl:element name="div">
	           <xsl:element name="h1">
	           	<xsl:text>Description </xsl:text>
	          </xsl:element>
	          
	          <xsl:element name="ul">
	          
	          	<xsl:element name="li">	
	          		<xsl:text>Contenu : </xsl:text>
	          		<xsl:element name="p:titre">
            		<xsl:value-of select="p:titre"/>
              		</xsl:element>
	         	</xsl:element>

	          	<xsl:element name="li">	
	          		<xsl:text>Publié le : </xsl:text>
	          		<xsl:element name="p:pubdate">
            		<xsl:value-of select="p:pubDate"/>
              		</xsl:element>
	         	</xsl:element>
	         	
	         	<xsl:element name="li">	
	          		<xsl:element name="p:copyright">
            		<xsl:value-of select="p:copyright"/>
              		</xsl:element>
	         	</xsl:element>	          
	          
	          </xsl:element>
	          
	          
              
          </xsl:element>
          
          
          
        </xsl:element>
      </xsl:element>
    </xsl:template>
</xsl:stylesheet>


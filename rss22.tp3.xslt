<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
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
          <xsl:element name="h1">
	           <xsl:text>TP4 FLUX RSS22 </xsl:text>
	      </xsl:element>
          <xsl:value-of select="pubDate"/><xsl:text> </xsl:text>
          <xsl:text>Le 09 mars 2022 </xsl:text>
          <xsl:value-of select="pubDate"/><xsl:text> </xsl:text> 
          <xsl:element name="div">
	           <xsl:element name="h1">
	           	<xsl:text>Description </xsl:text>
	          </xsl:element>
	          
	          <xsl:element name="ul">
	          
	          	<xsl:element name="li">	
	          		<xsl:text>Contenu : </xsl:text>
	          		<xsl:element name="p:content">
            		<xsl:value-of select="p:content"/>
              		</xsl:element>
	         	</xsl:element>

	          	<xsl:element name="li">	
	          		<xsl:text>Publié le </xsl:text>
	          		<xsl:element name="p:pubdate">
            		<xsl:value-of select="p:pubDate"/>
              		</xsl:element>
	         	</xsl:element>
	         	
	         	<xsl:element name="li">	
	          		<xsl:element name="p:copyright">
            		<xsl:value-of select="p:copyright"/>
              		</xsl:element>
              		<xsl:text>univrouen 2022 </xsl:text>
	         	</xsl:element>	          
	          
	          </xsl:element>              
          </xsl:element>
          
           <xsl:element name="h2">
	           <xsl:text>Détails des informations </xsl:text>
	      </xsl:element>
	      
	       <xsl:element name="h3">	
	          		<xsl:element name="p:titre">
            		<xsl:value-of select="p:titre"/>
              		</xsl:element>
              		
              		<xsl:element name="i">	
	              		<xsl:text>( </xsl:text>
	              		<xsl:element name="p:guid">
	            			<xsl:value-of select="p:guid"/>
	            			<xsl:text> ) </xsl:text>
              			</xsl:element>
	       			</xsl:element>
	       	</xsl:element>

			<xsl:element name="picture">	
	            	<xsl:attribute name="size">500px</xsl:attribute>
	              	<xsl:element name="p:image">
	            	<xsl:value-of select="p:image"/>
            		</xsl:element>
            </xsl:element>
            
            <xsl:element name="h4">	
            	    <xsl:text>Auteur </xsl:text>
	              	<xsl:element name="p:name">
	            	<xsl:value-of select="p:name"/>
            		</xsl:element>	     
			</xsl:element>
			
        </xsl:element>
      </xsl:element>
      
    </xsl:template>
    
    
</xsl:stylesheet>


<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <!-- <xsl:output method="xml" omit-xml-declaration="yes" indent="yes" /> -->

    <xsl:template match="tei:TEI">    
                    <div class="row">
                        <div class="col"> 
                            <h4>
                                <img src="images/noun-quill-and-ink-4122460.png" alt="quill and ink" class="image"/>
                                Deletions and additions on this page
                            </h4>
                        </div>
                    </div>
                    <div class="row">
                    <div class="col-md-4">
                        <h6>General:</h6>
                        <div>
                        <ul>
                        <li>Total number of modifications: 
                            <xsl:value-of select="count(//tei:del|//tei:add)" /> <!-- Counts all the add and del elements, and puts it in a list item -->
                        </li>
                        <li>Number of additions: 
                        <!-- count the additions only -->
                            <xsl:value-of select="count(//tei:add)"/>
                        </li>
                        <li>Number of deletions: 
                        <!-- count the deletions only -->
                            <xsl:value-of select="count(//tei:del)"/>
                        </li>
                        </ul>
                        </div>
                    </div>    
                        <!-- add other list items in which you count things, such as the modifications made by Percy -->
                        <!-- count the deletions and additions by Mary -->
                    <div class="col-md-4">
                    <h6>Mary:</h6>  
                        <ul>
                            <li>Total number of modifications: 
                                <xsl:value-of select="count((//tei:del|//tei:add)[@hand = '#MWS'])" /> <!-- Counts all the add and del elements, and puts it in a list item -->
                            </li>
                            <li>Number of additions:
                                <xsl:value-of select="count((//tei:add)[@hand = '#MWS'])"/>
                            </li>
                            <li>Number of deletions:
                                <xsl:value-of select="count((//tei:del)[@hand = '#MWS'])"/>
                            </li>
                        </ul>
                    </div>
                        <!-- count the deletions and additions by Percey -->
                    <div class="col-md-4">         
                    <h6>Percey:</h6>
                        <ul>
                            <li>Total number of modifications: 
                                <xsl:value-of select="count((//tei:del|//tei:add)[@hand = '#PBS'])" /> <!-- Counts all the add and del elements, and puts it in a list item -->
                            </li>
                            <li>Number of additions:
                                <xsl:value-of select="count((//tei:add)[@hand = '#PBS'])"/>
                            </li>
                            <li>Number of deletions:
                                <xsl:value-of select="count((//tei:del)[@hand = '#PBS'])"/>
                            </li>
                        </ul>
                    </div>
                    </div>
       
    </xsl:template>
</xsl:stylesheet>

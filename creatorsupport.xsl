<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:cre="www.abc.com/creator-support"
    exclude-result-prefixes="cre">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table, td, th {  
                      border: 1px solid #ddd;
                      text-align: left;
                    }
                    
                    table {
                      border-collapse: collapse;
                      width: 100%;
                    }
                    
                    th, td {
                      padding: 15px;
                    }
                </style>
                <title>Creators</title>
            </head>
            <body>
                <h2>Creator Support</h2>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>ProjectName</th>
                        <th>Funding</th>
                    </tr>
                    <xsl:for-each select="/cre:creators/cre:creator">
                    <tr>
                        <td><xsl:value-of select="cre:creator-id"/></td>
                        <td><xsl:value-of select="cre:creator-name"/></td>
                        <td>
                            <xsl:for-each select="cre:projects/cre:project">
                                <div><xsl:value-of select="cre:project-name"/></div>
                            </xsl:for-each>
                        </td>
                        <td>
                            <xsl:for-each select="cre:projects/cre:project">
                                <div><xsl:value-of select="cre:funding-goal"/></div>
                            </xsl:for-each>
                        </td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

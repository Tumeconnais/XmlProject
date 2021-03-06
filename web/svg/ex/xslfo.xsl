<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:import href="../charts.xsl" />
    <xsl:output method="xml" indent="yes" />
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="portrait" page-height="30cm" page-width="21cm" margin="1cm">
                    <fo:region-body />
                </fo:simple-page-master>
            </fo:layout-master-set>
           
            <fo:page-sequence master-reference="portrait">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-style="normal"
                              font-weight="bold"
                              text-align="center"
                              font-size="12px">
                        Prix moyen des chambres
                    </fo:block>
                
                    <fo:block>
                        <fo:instream-foreign-object>
                            <xsl:call-template name="lineChart">
                                <xsl:with-param name="xData" select="/data/line/x"/>
                                <xsl:with-param name="yData" select="/data/line/y"/>
                                <xsl:with-param name="width" select="'15cm'"/>
                                <xsl:with-param name="height" select="'8cm'"/>
                            </xsl:call-template>
                        </fo:instream-foreign-object>
                    </fo:block>
                    <fo:block font-style="normal"
                              font-weight="bold"
                              text-align="center"
                              font-size="12px">
                        Nombre de langues parlées
                    </fo:block>
                    <fo:block>
                        <fo:instream-foreign-object>
                            <xsl:call-template name="barChart">
                                <xsl:with-param name="xData" select="/data/bar/x"/>
                                <xsl:with-param name="yData" select="/data/bar/y"/>
                                <xsl:with-param name="width" select="'15cm'"/>
                                <xsl:with-param name="height" select="'8cm'"/>
                            </xsl:call-template>
                        </fo:instream-foreign-object>
                    </fo:block>
                    <fo:block font-style="normal"
                              font-weight="bold"
                              text-align="center"
                              font-size="12px">
                        Pourcentages des hotels par rapport à la classification
                    </fo:block>
                    <fo:block>
                        <fo:instream-foreign-object>
                            <xsl:call-template name="pieChart">
                                <xsl:with-param name="xData" select="/data/pie/x"/>
                                <xsl:with-param name="yData" select="/data/pie/y"/>
                                <xsl:with-param name="width" select="'15cm'"/>
                                <xsl:with-param name="height" select="'9cm'"/>
                            </xsl:call-template>
                        </fo:instream-foreign-object>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:cui_vocal="http://giove.isti.cnr.it" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns="http://giove.isti.cnr.it"
    version="1.0">
    <xsl:output method="xml" version="1.0" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*"/>
    
    
    
    <xsl:template match="cui_vocal:link" priority="3">
        <xsl:variable name="elName">
            <xsl:value-of select="name(.)"/>
        </xsl:variable>
        <xsl:element name="{$elName}">
            <xsl:for-each select="@*">
                <xsl:variable name="attrName" select="name(.)"/>
                <xsl:attribute name="{$attrName}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:choose>
                <xsl:when test="ancestor::cui_vocal:navigator[@id='preferences_home'] or 
                    ancestor::cui_vocal:navigator[@id='userInfo_home'] or 
                    ancestor::cui_vocal:navigator[@id='submitRequest_home'] or 
                    ancestor::cui_vocal:navigator[@id='agencyList_home'] or 
                    ancestor::cui_vocal:navigator[@id='resultsList_home'] or 
                    ancestor::cui_vocal:navigator[@id='carDetail_home']" >
                    <xsl:attribute name="message">
                        <xsl:text>Main menu</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Main menu</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:navigator[@id='registration_navigator']">
                    <xsl:attribute name="message">
                        <xsl:text>Registration</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Registration</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:navigator[@id='login_back'] or 
                    ancestor::cui_vocal:navigator[@id='registration_back'] or 
                    ancestor::cui_vocal:navigator[@id='home_back'] or 
                    ancestor::cui_vocal:navigator[@id='preferences_back'] or 
                    ancestor::cui_vocal:navigator[@id='userInfo_back'] or 
                    ancestor::cui_vocal:navigator[@id='agencyList_back'] or 
                    ancestor::cui_vocal:navigator[@id='resultList_back'] or 
                    ancestor::cui_vocal:navigator[@id='carDetail_back']">
                    <xsl:attribute name="message">
                        <xsl:text>Back</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Back</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:navigator[@id='home_preferences']">
                    <xsl:attribute name="message">
                        <xsl:text>Preferences</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Preferences</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:navigator[@id='home_userInfo']">
                    <xsl:attribute name="message">
                        <xsl:text>User Info</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>User Info</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:navigator[@id='home_searchInfo'] or 
                    ancestor::cui_vocal:navigator[@id='userInfo_searchInfo']">
                    <xsl:attribute name="message">
                        <xsl:text>Search Car</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Search Car</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:navigator[@id='agency_detail']">
                    <xsl:attribute name="message">
                        <xsl:text>Say: </xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Say: </xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:navigator[@id='car_detail']">
                    <xsl:attribute name="message">
                        <xsl:text>Car Detail</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Car Detail</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
            </xsl:choose>
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>
    

    
    <xsl:template match="cui_vocal:command" priority="3">
        <xsl:variable name="elName">
            <xsl:value-of select="name(.)"/>
        </xsl:variable>
        <xsl:element name="{$elName}">
            <xsl:for-each select="@*">
                <xsl:variable name="attrName" select="name(.)"/>
                <xsl:attribute name="{$attrName}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:choose>
                <xsl:when test="ancestor::cui_vocal:activator[@id='login_activator']">
                    <xsl:attribute name="activation_sentence">
                        <xsl:text>Login</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="message">
                        <xsl:text>Authentication in progress...</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Say login to authenticate</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:activator[@id='registration_activator']">
                    <xsl:attribute name="activation_sentence">
                        <xsl:text>Login</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="message">
                        <xsl:text>Registration completed</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Please, say register for completing the registration</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:activator[@id='preferences_userInfo']">
                    <xsl:attribute name="activation_sentence">
                        <xsl:text>Save</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="message">
                        <xsl:text>Preferences Saved</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Please, say save for saving your preferences</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:activator[@id='userInfo_activator']">
                    <xsl:attribute name="activation_sentence">
                        <xsl:text>Save</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="message">
                        <xsl:text>Personal information Saved</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Please, say save for saving your personal information</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:activator[@id='request_submit']">
                    <xsl:attribute name="activation_sentence">
                        <xsl:text>Search</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="message">
                        <xsl:text>Search in progress...</xsl:text>
                    </xsl:attribute>
                    <xsl:call-template name="createVocalType">
                        <xsl:with-param name="elementName">
                            <xsl:value-of select="'request'"/>
                        </xsl:with-param>
                        <xsl:with-param name="content">
                            <xsl:text>Please, say search for getting  the available cars</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:when>
            </xsl:choose>
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="cui_vocal:choice_element" priority="3">
        <xsl:element name="choice_element">
            <xsl:attribute name="value">
                <xsl:value-of select="@value"/>
            </xsl:attribute>
            <xsl:attribute name="vocal_selection">
                <xsl:choose>
                    <xsl:when test="@value='male'">
                        <xsl:value-of select="'male'"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="@value"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="cui_vocal:text_edit" priority="3">
        <xsl:choose>
            <xsl:when test="./@id = 'registration_birth_date' or 
                ./@id = 'registration_poBox' or 
                ./@id = 'registration_zip_code' or 
                ./@id = 'userInfo_birth_date' or 
                ./@id = 'userInfo_poBox' or 
                ./@id = 'userInfo_zip_code' or 
                ./@id = 'accepted_distance'">
                <xsl:element name="numerical_edit_full">
                    <xsl:for-each select="@*">
                        <xsl:variable name="attrName" select="name(.)"/>
                        <xsl:attribute name="{$attrName}">
                            <xsl:value-of select="."/>
                        </xsl:attribute>
                    </xsl:for-each>
                    <xsl:apply-templates select="*"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="copyAll"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="cui_vocal:vocal_textual_input" priority="3">
        <xsl:choose>
            <xsl:when test="parent::cui_vocal:text_edit/@id = 'registration_birth_date' or 
                parent::cui_vocal:text_edit/@id = 'userInfo_birth_date'">
                <xsl:element name="vocal_numerical_input">
                    <xsl:for-each select="@*">
                        <xsl:variable name="attrName" select="name(.)"/>
                        <xsl:attribute name="{$attrName}">
                            <xsl:value-of select="."/>
                        </xsl:attribute>
                    </xsl:for-each>
                    <xsl:attribute name="built_in_grammar">
                        <xsl:text>date</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="parent::cui_vocal:text_edit/@id = 'registration_poBox' or 
                parent::cui_vocal:text_edit/@id = 'registration_zip_code' or 
                parent::cui_vocal:text_edit/@id = 'userInfo_poBox' or 
                parent::cui_vocal:text_edit/@id = 'userInfo_zip_code'">
                <xsl:element name="vocal_numerical_input">
                    <xsl:for-each select="@*">
                        <xsl:variable name="attrName" select="name(.)"/>
                        <xsl:attribute name="{$attrName}">
                            <xsl:value-of select="."/>
                        </xsl:attribute>
                    </xsl:for-each>
                    <xsl:attribute name="built_in_grammar">
                        <xsl:text>digits</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="parent::cui_vocal:text_edit/@id = 'accepted_distance'">
                <xsl:element name="vocal_numerical_input">
                    <xsl:for-each select="@*">
                        <xsl:variable name="attrName" select="name(.)"/>
                        <xsl:attribute name="{$attrName}">
                            <xsl:value-of select="."/>
                        </xsl:attribute>
                    </xsl:for-each>
                    <xsl:attribute name="built_in_grammar">
                        <xsl:text>number</xsl:text>
                    </xsl:attribute>
                    <xsl:apply-templates/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="copyAll"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    
    <xsl:template match="cui_vocal:single_vocal_selection" priority="3">
        <xsl:variable name="elName">
            <xsl:value-of select="name(.)"/>
        </xsl:variable>
        <xsl:element name="{$elName}">
            <xsl:for-each select="@*">
                <xsl:variable name="attrName" select="name(.)"/>
                <xsl:attribute name="{$attrName}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:attribute name="askConfirmation">
                <xsl:value-of select="true()"/>
            </xsl:attribute>
            <xsl:choose>
                <xsl:when test="parent::cui_vocal:single_choice[@id='registration_gender'] or
                    parent::cui_vocal:single_choice[@id='userInfo_gender'] or
                    parent::cui_vocal:single_choice[@id='ordering'] or
                    parent::cui_vocal:single_choice[@id='location_selection'] or
                    parent::cui_vocal:single_choice[@id='color']">
                    <xsl:attribute name="list_values">
                        <xsl:text>true</xsl:text>
                    </xsl:attribute>
                </xsl:when>
            </xsl:choose>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="cui_vocal:speech" priority="3">
        <xsl:variable name="elName">
            <xsl:value-of select="name(.)"/>
        </xsl:variable>
        <xsl:element name="{$elName}">
            <xsl:for-each select="@*">
                <xsl:variable name="attrName" select="name(.)"/>
                <xsl:attribute name="{$attrName}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:choose>
                <xsl:when test="ancestor::cui_vocal:description/@id = 'agencyList_itemName'">
                    <xsl:element name="content">
                        <xsl:text>Agency name:</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:description/@id = 'car_model'">
                    <xsl:element name="content">
                        <xsl:text>Model:</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:description/@id = 'car_price'">
                    <xsl:element name="content">
                        <xsl:text>Price:</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:description/@id = 'carDetail_description'">
                    <xsl:element name="content">
                        <xsl:text>Car description:</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="ancestor::cui_vocal:description/@id = 'carDetail_price'">
                    <xsl:element name="content">
                        <xsl:text>Car price:</xsl:text>
                    </xsl:element>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <xsl:template match="cui_vocal:content" priority="3">
        <xsl:variable name="elName">
            <xsl:value-of select="name(.)"/>
        </xsl:variable>
        <xsl:element name="{$elName}">
            <xsl:for-each select="@*">
                <xsl:variable name="attrName" select="name(.)"/>
                <xsl:attribute name="{$attrName}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:choose>
                <!-- text edit -->
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='login_username']">
                    <xsl:text>Please, say your user name. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='login_password']">
                    <xsl:text>Please, say your password. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='searchInfo_location']">
                    <xsl:text>Please, say where you need the car </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='accepted_distance']">
                    <xsl:text>Please, say an acceptable value for the distance between you and the car position, in kilometers </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                
                <!-- registration / user info -->
                
                <!-- request -->
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_username'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_username']">
                    <xsl:text>Please, say your user name. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_password'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_password']">
                    <xsl:text>Please, say your password. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_name'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_name']">
                    <xsl:text>Please, say your first name. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_lastName'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_lastName']">
                    <xsl:text>Please, say your last name. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_email'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_email']">
                    <xsl:text>Please, say your email address. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_birth_date'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_birth_date']">
                    <xsl:text>Please, say your birth date. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_street'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_street']">
                    <xsl:text>Please, say the name of your steet. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_poBox'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_poBox']">
                    <xsl:text>Please, say the number of your Post Office Box code. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_zip_code'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_zip_code']">
                    <xsl:text>Please, say the number of your zip code. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='registration_location'] or
                    parent::cui_vocal:request/ancestor::cui_vocal:text_edit[@id='userInfo_location']">
                    <xsl:text>Please, say the name of your city. </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
               
                <!-- vocal labels -->
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_username'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_username']">
                    <xsl:text>Your current user name is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_password'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_password']">
                    <xsl:text>Your current password is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_name'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_name']">
                    <xsl:text>Your first name is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_lastName'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_lastName']">
                    <xsl:text>Your last name is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_email'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_email']">
                    <xsl:text>Your email address is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_birth_date'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_birth_date']">
                    <xsl:text>Your birth date is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_street'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_street']">
                    <xsl:text>The name of your street is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_poBox'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_poBox']">
                    <xsl:text>Your Post Office Box code is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_zip_code'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_zip_code']">
                    <xsl:text>Your zip code is: </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='registration_location'] or
                    parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='userInfo_location']">
                    <xsl:text>The name of your city is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='searchInfo_location']">
                    <xsl:text>The current search location is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:value_label/ancestor::cui_vocal:text_edit[@id='accepted_distance']">
                    <xsl:text>The current accepted distance is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <!-- single choice -->
                
                
                <!-- question -->
                <xsl:when test="parent::cui_vocal:question/ancestor::cui_vocal:single_choice[@id='registration_gender'] or
                    ancestor::cui_vocal:text_edit[@id='userInfo_gender']">
                    <xsl:text>Please, select your gender between the following values: </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:question/ancestor::cui_vocal:single_choice[@id='registration_country'] or
                    ancestor::cui_vocal:text_edit[@id='userInfo_country']">
                    <xsl:text>Please, select your country among the following values: </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:question/ancestor::cui_vocal:single_choice[@id='location_awareness'] ">
                    <xsl:text>The application can automatically detect your position. Do you allow the detection? </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:question/ancestor::cui_vocal:single_choice[@id='choose_by_agency']">
                    <xsl:text>Do you want the car search results grouped by agency? </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:question/ancestor::cui_vocal:single_choice[@id='ordering']">
                    <xsl:text>Please, choose one of the following ordering criteria: </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:question/ancestor::cui_vocal:single_choice[@id='location_selection']">
                    <xsl:text>Please, choose one of the following location selection techniques:</xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:question/ancestor::cui_vocal:single_choice[@id='color']">
                    <xsl:text>Please, specify the car color</xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <!-- selected label -->
                <xsl:when test="parent::cui_vocal:selected_label/ancestor::cui_vocal:single_choice[@id='registration_gender'] or
                    ancestor::cui_vocal:text_edit[@id='userInfo_gender']">
                    <xsl:text>Your gender is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:selected_label/ancestor::cui_vocal:single_choice[@id='registration_country'] or
                    ancestor::cui_vocal:text_edit[@id='userInfo_country']">
                    <xsl:text>Your country is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:selected_label/ancestor::cui_vocal:single_choice[@id='location_awareness'] ">
                    <xsl:text>The automatic detection of your position is set to:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:selected_label/ancestor::cui_vocal:single_choice[@id='choose_by_agency']">
                    <xsl:text>The car search results are grouped by agency is: </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:selected_label/ancestor::cui_vocal:single_choice[@id='ordering']">
                    <xsl:text>The current criterion for ordering the car search results is:  </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:selected_label/ancestor::cui_vocal:single_choice[@id='location_selection']">
                    <xsl:text>The location selection will be selected using a: </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                <xsl:when test="parent::cui_vocal:selected_label/ancestor::cui_vocal:single_choice[@id='color']">
                    <xsl:text>The currently selected color is: </xsl:text>
                    <xsl:value-of select="text()"/>
                </xsl:when>
                
                
                <xsl:when test="parent::cui_vocal:insert_keyword/parent::cui_vocal:grouping_start">
                    <!-- grouping titles -->
                    <xsl:variable name="group">
                        <xsl:copy-of select="parent::cui_vocal:insert_keyword/parent::cui_vocal:grouping_start/parent::cui_vocal:grouping"/>
                    </xsl:variable>
                    <xsl:choose>
                        <xsl:when test="$group/node()/@id = 'login_navigation'or 
                            $group/node()/@id = 'registration_navigation' or 
                            $group/node()/@id = 'preferences_navigation' or 
                            $group/node()/@id = 'userInfo_navigation' or 
                            $group/node()/@id = 'searchInfo_navigation' or 
                            $group/node()/@id = 'resultList_navigation' or 
                            $group/node()/@id = 'agencyList_navigation'  or 
                            $group/node()/@id = 'carDetail_navigation'">
                            <xsl:text>Navigation menu. Please, choose one of the following options:</xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'login_group'">
                            <xsl:text>Please, enter your credentials. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'registration_address'or
                            $group/node()/@id = 'userInfo_address'">
                            <xsl:text>Please, enter your address through the following fields. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'register_main'">
                            <xsl:text>Please, enter your personal data. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'home_main'">
                            <xsl:text>Main Menu. Please, choose one of the following options. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'serenoa_preferences'">
                            <xsl:text>The following are preferences shared by all Serenoa applications. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'application_preferences'">
                            <xsl:text>The following preferences are valid only for the Car Rental application. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'preferences_main'">
                            <xsl:text>Please, edit your application preferences. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'userInfo_main'">
                            <xsl:text>Please, edit your personal data. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'searchInfo_main'">
                            <xsl:text>Please, enter a car search query. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'agencyList_main'">
                            <xsl:text>The following is the list of agencies that have cars that match the search criteria. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'resultList_main'">
                            <xsl:text>The following is the list of cars that match your search criteria. </xsl:text>
                        </xsl:when>
                        <xsl:when test="$group/node()/@id = 'carDetail_main'">
                            <xsl:text>The following are the details of the car you selected </xsl:text>
                        </xsl:when>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="text()"/>
                </xsl:otherwise>
            </xsl:choose>
            
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="cui_vocal:grammar" priority="3">
        <xsl:choose>
            <xsl:when test="ancestor::*/@id = 'registration_poBox' or 
                ancestor::*/@id = 'registration_zip_code' or
                ancestor::*/@id = 'userInfo_poBox' or
                ancestor::*/@id = 'userInfo_zip_code' or
                ancestor::*/@id = 'accepted_distance' or
                ancestor::*/@id = 'userInfo_birth_date' or
                ancestor::*/@id = 'registration_birth_date'">
                
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="copyAll"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="cui_vocal:external_grammar" priority="3">
        <xsl:element name="external_grammar">
            <xsl:attribute name="type">
                <xsl:value-of select="'google-api'"/>
            </xsl:attribute>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="*" priority="2">
        <xsl:call-template name="copyAll"/>
    </xsl:template>
    
    <xsl:template name="createVocalType">
        <xsl:param name="elementName" />
        <xsl:param name="content" />
        <xsl:element name="{$elementName}">
            <xsl:attribute name="counter">
                <xsl:text>1</xsl:text>
            </xsl:attribute>
            <xsl:element name="content">
                <xsl:value-of select="$content"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template name="copyAll">
        <xsl:variable name="elName">
            <xsl:value-of select="name(.)"/>
        </xsl:variable>
        <xsl:element name="{$elName}">
            <xsl:for-each select="@*">
                <xsl:variable name="attrName" select="name(.)"/>
                <xsl:attribute name="{$attrName}">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:value-of select="text()"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>
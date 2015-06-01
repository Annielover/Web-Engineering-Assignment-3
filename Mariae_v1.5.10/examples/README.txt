The [MARIAEhome] is the folder you created unzipping the MARIAE 
package downloaded from the HIIS lab web site.

HOW TO RUN A SCENARIO
The scenarios demostrates the tool capability to generate applications from an 
annotated WSDL definition. The annotation file and the address of the WSDL 
definition is contained into the sample project.
The selected scenario (homeScenario or weatherScenario) will be 
referenced as [scenario]

1-	Open the [scenario].meprj project file in the [MARIAEhome]/Examples 
	folder from the menu Projects->Open Project...
2-	Generate the task model for the WSDL of the [scenario] web service from the
	menu Tools->CTT->Generate Task Model from WSDL. Select the HomeScenarioWSversion2 
	for the home scenario or GlobalWeather for the weather scenario from the 
	drop down list. 
	The generated CTT is automatically opened in the environment and saved into 
	the current project.
	(You can browse the Web service definition through the WS panel on the right. 
	 It is possible to open other WSDL definition using the Web Services menu).
3-	Generate the abstract user interface (AUI) for the CTT generated at step 2 by 
	selecting Tools->CTT->Generate AUI.
	The generated AUI is automatically opened in the environment and saved into the
	current project
4-	Generate the desktop concrete user interface (desktop CUI) for the AUI generated 
	at the step 3 by selecting Tools->AUI->Generate CUI
5-	Generate the final web application (Java Servlet + JSP) for the desktop CUI 
	generated at step 4 by selecting Tools->CUI Desktop->Generate JSP with Web 
	Service Support. It will create a NetBeans 6.9 web project that can be 
	compiled and deployed on a Java Servlet and JSP server (e.g. Apache Tomcat).
	The project is located into the [MARIAEhome]/Output/generated folder. 
	Open it from NetBeans and, after having configurated the server, you can
	run the application directly from the Netbeans IDE by right-clicking the 
	project icon in the project panel and selecting Run.
6-  The home scenario application can be accessed with username guest and 
    password user.
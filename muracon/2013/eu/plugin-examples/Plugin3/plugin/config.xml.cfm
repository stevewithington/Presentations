<cfoutput>
	<plugin>
		<name>Plugin3</name>
		<package>Plugin3</package>
		<directoryFormat>packageOnly</directoryFormat>
		<loadPriority>5</loadPriority>
		<version>3.0.0</version>
		<provider>Blue River Interactive</provider>
		<providerURL>http://blueriver.com</providerURL>
		<category>Application</category>
		<settings></settings>
		<eventHandlers></eventHandlers>

		<displayObjects location="global">

			<displayObject 	name="Say Hello from .CFM"
							displayobjectfile="extensions/dspHello.cfm" />

			<displayObject	name="Say Hello from .CFC"
							component="extensions.displayObjects"
							displaymethod="dspHello"
							persist="false" />

		</displayObjects>

		<extensions></extensions>
	</plugin>
</cfoutput>
<cfinclude template="plugin/config.cfm" />

<cfsavecontent variable="pluginBody">
	<cfoutput>
		<h1>#HTMLEditFormat(pluginConfig.getName())#</h1>
		<p>This is my first Mura CMS plugin.</p>
	</cfoutput>
</cfsavecontent>

<cfoutput>
	#$.getBean('pluginManager').renderAdminTemplate(
		body = pluginBody
		, pageTitle = ''
	)#
</cfoutput>
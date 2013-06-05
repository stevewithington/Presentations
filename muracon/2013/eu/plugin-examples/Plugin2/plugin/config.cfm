<cfscript>

	if ( !IsDefined('$') ) {
		$ = StructKeyExists(session, 'siteid') ?
			application.serviceFactory.getBean('$').init(session.siteid) :
			application.serviceFactory.getBean('$').init('default');
	}

	if ( !IsDefined('pluginConfig') ) {
		pluginConfig = $.getBean('pluginManager').getConfig('Plugin2');
	}

</cfscript>


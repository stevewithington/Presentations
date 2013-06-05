component accessors=true extends='mura.plugin.pluginGenericEventHandler' output=false {

	property name='$' hint='mura scope';

	public any function onApplicationLoad(required struct $) {
		// Register all event handlers/listeners of this .cfc with Mura CMS
		variables.pluginConfig.addEventHandler(this);
		set$(arguments.$);
	}

	public any function onPageDefaultBodyRender(required struct $) {
		// Dynamically alter the 'Title' of the page
		$.content('title', 'Hijacked!');
		// Override the output of the main body area of Page / Default
		return '<h3>#$.content('title')#</h3>' & $.content('body');
	}

	// You could place any other event handlers/listeners here

}


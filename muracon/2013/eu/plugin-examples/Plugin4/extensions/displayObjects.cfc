component accessors=true extends='mura.cfobject' output=false {

	property name='$';

	public any function init(required struct $) {
		set$(arguments.$);
		return this;
	}

	public string function dspHello() {
		return '<h3>Hello from displayObjects.dspHello()</h3>';
	}

}


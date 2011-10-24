package com.embraceinteractive.gingerbread.examples.context 
{
	import com.embraceinteractive.gingerbread.core.context.Context;
	import com.embraceinteractive.gingerbread.examples.modules.model.ExampleModel;
	import com.embraceinteractive.gingerbread.examples.modules.view.ExampleViewModule;
	import com.embraceinteractive.gingerbread.utils.modules.StatsModule;
	
	/**
	 * ...
	 * @author Ian Benschop
	 */
	public class ExampleContext extends Context 
	{
		
		private var _statsModule:StatsModule;
		private var _exampleModel:ExampleModel;
		private var _exampleViewModule:ExampleViewModule
	
		public function ExampleContext() 
		{
			
		}
		
		override public function init():void {
			
			super.init();
			
			config.peopleURL = "../xml/people.xml";
			
			_statsModule = new StatsModule();
			_exampleModel = new ExampleModel();
			_exampleViewModule = new ExampleViewModule();
		}
		
		override public function registerModules():void {
			
			_statsModule.register(this);
			_exampleViewModule.register(this);
			_exampleModel.register(this);
			
		}
	}
}


package com.embraceinteractive.gingerbread.examples 
{
	import com.embraceinteractive.gingerbread.core.interfaces.IContext;
	import com.embraceinteractive.gingerbread.examples.context.ExampleContext;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Ian Benschop
	 */
	public class Package extends Sprite
	{
		
		private var app:ExampleContext;
		
		public function Package() 
		{
			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		}
		
		private function addedToStageHandler(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			app = new ExampleContext();
			app.startup(stage);
		}
		
	}
}
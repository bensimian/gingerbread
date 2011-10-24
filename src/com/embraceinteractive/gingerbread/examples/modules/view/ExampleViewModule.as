package com.embraceinteractive.gingerbread.examples.modules.view
{
	import com.embraceinteractive.gingerbread.core.constants.ModuleEvent;
	import com.embraceinteractive.gingerbread.core.context.Context;
	import com.embraceinteractive.gingerbread.core.modules.SimpleVisualModule;
	import com.embraceinteractive.gingerbread.examples.modules.model.ExampleModel;
	import com.embraceinteractive.gingerbread.examples.modules.model.valueobjects.VOPeople;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Ian Benschop
	 */
	public class ExampleViewModule extends SimpleVisualModule
	{
		
		private var model:ExampleModel;
		
		public function ExampleViewModule()
		{
			super();
			moduleName = "ExampleViewModule";
		}
		
		override public function startup():void
		{
			
			view = new Sprite();
			view.x = 100;
			view.y = 100;
			viewport.addChild(view);

			model = context.moduleManager.getModule("ExampleModel") as ExampleModel;			
			super.startup();
		}
		
		
		override public function register(__context:Context):void
		{
			super.register(__context);			
			contextEventDispatcher.addEventListener(ModuleEvent.UPDATE, updateHandler);
		}
		
		private function updateHandler(e:Event):void
		{
			var i:int;
			var index:VOPeople;
			var data:* = model.data;
			var l:int = data.length;
			var item:PersonComponent;
			
			for (i; i < l; ++i)
			{
				index = data[i];
				item = new PersonComponent();
				item.y = item.height * i;
				item.label.text = index.name;
				view.addChild(item);
			}
			
			i = 0;
			index = null;
			data = null;
			l = 0;
			item = null;
		}
	}
}
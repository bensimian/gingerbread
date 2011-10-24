package com.embraceinteractive.gingerbread.core.context 
{


	import com.embraceinteractive.gingerbread.core.constants.ContextEvents;
	import com.embraceinteractive.gingerbread.core.dispatcher.ContextEventDispatcher;
	import com.embraceinteractive.gingerbread.core.interfaces.IContext;
	import com.embraceinteractive.gingerbread.core.manager.ModuleManager;
	import flash.display.*;
	import flash.events.*;
	
	public class Context implements IContext
	{
		
		public var contextEventDispatcher:ContextEventDispatcher;
		public var moduleManager:ModuleManager;
		public var viewport:DisplayObjectContainer;
		public var stage:Stage;
		public var config:Object;
		
		
		public function Context() {
		
		}
	
		public function startup(__stage:Stage):void {
			
			stage = __stage;
			config = new Object();
			stage.stageFocusRect = false;
			init();
			registerModules();
			contextEventDispatcher.dispatchEvent(new Event(ContextEvents.STARTUP));
		}
		
		public function init():void {
			
			contextEventDispatcher = new ContextEventDispatcher();
			moduleManager = new ModuleManager();
			moduleManager.init();
			viewport = new Sprite();
			stage.addChild(viewport);
		}

		public function registerModules():void {

		}		
	}	
}
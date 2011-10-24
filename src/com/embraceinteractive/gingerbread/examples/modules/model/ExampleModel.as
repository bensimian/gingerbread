package com.embraceinteractive.gingerbread.examples.modules.model 
{
	import com.embraceinteractive.gingerbread.core.constants.ModuleEvent;
	import com.embraceinteractive.gingerbread.core.modules.AbstractModule;
	import com.embraceinteractive.gingerbread.examples.modules.model.parsers.PeopleParser;
	import com.embraceinteractive.gingerbread.examples.modules.model.valueobjects.VOPeople;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author Ian Benschop
	 */
	
	public class ExampleModel extends AbstractModule 
	{
		
		private var _parser:PeopleParser
		public var data:Vector.<VOPeople>;
		public var rawData:XMLList;
		
		private var _XMLLoader:URLLoader = new URLLoader();
			
		public function ExampleModel()
		{
			
			moduleName = "ExampleModel";
		}
		
		override public function startup():void {
			
			data = new Vector.<VOPeople>();
			_parser = new PeopleParser();
			_XMLLoader = new URLLoader();
			
			load();
			
			super.startup();
		}
		
		private function load():void {
			
			_XMLLoader.addEventListener(Event.COMPLETE, XMLLoaderCompleteHandler);
			_XMLLoader.load(new URLRequest(context.config.peopleURL));
		}
		
		private function XMLLoaderCompleteHandler(e:Event):void 
		{
			_XMLLoader.removeEventListener(Event.COMPLETE, XMLLoaderCompleteHandler);
			
			rawData = XMLList(_XMLLoader.data);
			
			_parser.parse(rawData.person, data);
			
			contextEventDispatcher.dispatchEvent(new Event(ModuleEvent.UPDATE));
		}
	}
}
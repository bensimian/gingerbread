package com.embraceinteractive.gingerbread.examples.modules.model.parsers 
{
	import com.embraceinteractive.gingerbread.examples.modules.model.valueobjects.VOPeople;
	import com.embraceinteractive.gingerbread.utils.interfaces.IParser;
	
	/**
	 * ...
	 * @author Ian Benschop
	 */
	
	public class PeopleParser implements IParser 
	{
		
		
		public function PeopleParser() 
		{
			
		}
		
		public function parse(__input:Object,__output:Object):void
		{
			
			var i:int = 0;
			var l:int = __input.length();
			var item:VOPeople;
			var index:Object
			
			for (i; i < l;++i) {
				
				index = __input[i];
				
				item = new VOPeople();
				item.name = index.name;
				item.group = index.group;
				item.position = index.position;
				__output[__output.length] = item;
			}
			
			i = 0;
			l = 0;
			item = null;
			index = null;
			
		}
	}
}
package simple.events
{
	import flash.events.Event;
	
	public class FileResultEvent extends Event
	{
		public static const FILE_RESULT:String = "fileResult";
		
		public function FileResultEvent(type:String, fileName:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			_fileName = fileName;
		}
		
		private var _fileName:String;
		public function get fileName():String
		{
			return _fileName;
		}
	
	}
}
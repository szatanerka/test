package simple.model
{
	import org.robotlegs.mvcs.Actor;
	
	import simple.events.SimpleAppEvent;
	import simple.events.SimpleModelEvent;
	
	public class SimpleModel extends Actor
	{
		private var _fileName:String;
		public function get fileName():String
		{
			return _fileName;
		}
		public function set fileName(value:String):void
		{
			_fileName = value;
			dispatch(new SimpleModelEvent(SimpleModelEvent.FILE_NAME_CHANGE, _fileName));
		}

	}
}
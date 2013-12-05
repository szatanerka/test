package simple.service
{
	import flash.events.Event;
	import flash.net.FileReference;
	
	import org.robotlegs.mvcs.Actor;
	
	import simple.events.FileResultEvent;
	
	public class FileService extends Actor implements IFileService
	{
		private var _file:FileReference;
		
		public function promptToChooseFile():void
		{
			_file = new FileReference();
			_file.addEventListener(Event.SELECT, onFileSelect);
			_file.browse();

		}
		
		public function testSuit():Boolean{
			dispatch(new FileResultEvent(FileResultEvent.FILE_RESULT, "robotlegs.jpg"));
			return true;

		}
		private function onFileSelect(event:Event):void
		{
			dispatch(new FileResultEvent(FileResultEvent.FILE_RESULT, _file.name));

		}
	}
}
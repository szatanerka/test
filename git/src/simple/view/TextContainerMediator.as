package simple.view
{
	import org.robotlegs.mvcs.Mediator;
	
	import simple.events.SimpleModelEvent;
	
	public class TextContainerMediator extends Mediator
	{
		[Inject]
		public var view:TextContainer;
		
		
		override public function onRegister():void
		{
			addContextListener(SimpleModelEvent.FILE_NAME_CHANGE, onFileNameChange, SimpleModelEvent);
		}
		
		
		private function onFileNameChange(event:SimpleModelEvent):void
		{
			view.setFileName(event.value);
		}
		
		
	}
}
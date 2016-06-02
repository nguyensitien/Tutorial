package 
{
	
	import feathers.controls.Alert;
	import feathers.controls.Button;
	import feathers.controls.ButtonGroup;
	import feathers.controls.Callout;
	import feathers.controls.Label;
	import feathers.controls.TextInput;
	import feathers.controls.text.TextBlockTextRenderer;
	import feathers.core.ITextRenderer;
	import feathers.data.ListCollection;
	import feathers.themes.MetalWorksMobileTheme;
	import flash.display3D.textures.Texture;
	import flash.text.engine.ElementFormat;
	import flash.text.engine.FontDescription;
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	/**
	 * ...
	 * @author tien
	 */
	public class MenuScreen extends Sprite
	{
		
		public function MenuScreen() 
		{	
			addEventListener(Event.ADDED_TO_STAGE,onAdd);
		}
		
		private function onAdd(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAdd);
			
			new MetalWorksMobileTheme();
			
			
			SetGUI();
			
			
		}
		private function SetGUI():void{
			var btnMenu:Button = new Button();
			btnMenu.label =  "Menu";
			btnMenu.width = Startup.WIDTH/2*Startup.SCALE;
			btnMenu.height = 70*Startup.SCALE;
			btnMenu.horizontalAlign = Button.HORIZONTAL_ALIGN_CENTER;
			btnMenu.x = Math.round((Startup.WIDTH - btnMenu.width) / 2);
			btnMenu.y = Math.round((Startup.HEIGHT - btnMenu.height - 100*Startup.SCALE) / 2);
			addChild(btnMenu);
			btnMenu.addEventListener(Event.TRIGGERED, onTriggeredMenu);
			btnMenu.labelFactory = function():ITextRenderer
			{
				var textRenderer:TextBlockTextRenderer = new TextBlockTextRenderer();
				textRenderer.styleProvider = null;
				var font:FontDescription = new FontDescription( "_sans" );
				textRenderer.elementFormat = new ElementFormat( font, 30*Startup.SCALE, 0x444444 );
				return textRenderer;
			}
			
			var btnOptions:Button = new Button();
			btnOptions.label =  "Options";
			btnOptions.width = Startup.WIDTH/2*Startup.SCALE;
			btnOptions.height = 70*Startup.SCALE;
			btnOptions.x = Math.round((Startup.WIDTH - btnOptions.width) / 2);
			btnOptions.y = Math.round((Startup.HEIGHT - btnMenu.height + 100*Startup.SCALE) / 2);
			addChild(btnOptions);
			btnOptions.addEventListener(Event.TRIGGERED, onTriggeredOptions);
			btnOptions.labelFactory = function():ITextRenderer{
				var textRenderer:TextBlockTextRenderer = new TextBlockTextRenderer();
				textRenderer.styleProvider = null;
				var font:FontDescription = new FontDescription( "_sans" );
				textRenderer.elementFormat = new ElementFormat( font, 30*Startup.SCALE, 0x444444 );
				return textRenderer;
			}
		}
		
		
		private function onTriggeredMenu(e:Event):void 
		{
			trace("menu");
		}
		
		private function onTriggeredOptions(e:Event):void 
		{
			trace("Options");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
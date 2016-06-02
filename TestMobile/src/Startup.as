package 
{
	import flash.display.Sprite;
	import starling.core.Starling;
	import starling.utils.ScaleMode;
	/**
	 * ...
	 * @author tien
	 */
	[SWF(width = "640",height = "960")]
	public class Startup extends Sprite
	{
		
		public static var WIDTH:int ;
		public static var HEIGHT:int;
		
		public static var SCALE:Number;
		
		
		private var mStarling:Starling;
		
		public function Startup() 
		{
			mStarling = new Starling(MenuScreen, stage);
			mStarling.antiAliasing = 1;
			mStarling.start();
			
			WIDTH = stage.fullScreenWidth;
			HEIGHT = stage.fullScreenHeight;
			SCALE = WIDTH / mStarling.stage.stageWidth;
			trace(WIDTH + ":" + HEIGHT);
			trace(mStarling.stage.stageWidth + ":" + mStarling.stage.stageHeight);
			trace(SCALE);
		}
		
	}

}
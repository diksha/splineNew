package 
{
		import mx.containers.*;
		import flash.events.*;
	public class Main extends Panel
	{
		private var x1:int;
		private var y1:int;
		private var x2:int;
		private var y2:int;
		private var isDrawing:Boolean=false;
		private var drawColor:uint=0x000000;

		public function Main(){
				var cnvs:Canvas=new Canvas();
				cnvs.percentHeight=20;
				cnvs.percentWidth=20;
				cnvs.setStyle("borderThickness", "5");
				cnvs.setStyle("borderColor", "0x000000");
				cnvs.setStyle("borderStyle", "strong");
				addChild(cnvs);
				 cnvs.addEventListener(MouseEvent.MOUSE_DOWN, function(event:MouseEvent):void {
            x1 = cnvs.mouseX;
            y1 = cnvs.mouseY;
            isDrawing = true;
            });
      
            cnvs.addEventListener(MouseEvent.MOUSE_MOVE, function(event:MouseEvent):void {
            if (!event.buttonDown)
            {
               isDrawing = false;
            }
        
                x2 = cnvs.mouseX;
        		y2 = cnvs.mouseY;
        	if (isDrawing)
        	{
          		cnvs.graphics.lineStyle(2, drawColor);
          		cnvs.graphics.moveTo(x1, y1);
          		cnvs.graphics.lineTo(x2, y2);
          		x1 = x2;
          		y1 = y2;
        	}
      		});
      		cnvs.addEventListener(MouseEvent.MOUSE_UP, function(event:MouseEvent):void {
        	isDrawing = false;
      		});
				  		}
		
	}
}
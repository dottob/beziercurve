package beziercurves.display {	import beziercurves.events.PointEvent;	import flash.display.Sprite;	import flash.events.Event;	import flash.events.MouseEvent;	import flash.geom.Point;	import flash.geom.Rectangle;		/**	 * Copyright (c) 2008 nicolas levavasseur	 * nicolas.levavasseur@gmail.com	 * 	 * @author nicolas levavasseur	 */	public class DragablePoint extends Sprite {		/**		 * index of the point		 */		public var num:int;				/**		 * create a dragable point		 * 		 * @param p:Object is a AnchorPoint or a ControlPoint 		 */		public function DragablePoint(p:Object){			var color:Number = 0xDDDDDD;			if( p.constructor === AnchorPoint ) color = 0xFFFFFF;						graphics.beginFill(0xFFFFFF, 0.7);			graphics.drawCircle(0, 0, 6);			graphics.endFill();						graphics.beginFill(0x000000, 1);			graphics.drawCircle(0, 0, 4);			graphics.endFill();						graphics.beginFill(color, 1);			graphics.drawCircle(0, 0, 3);			graphics.endFill();			this.x = Point(p).x;			this.y = Point(p).y;			buttonMode = true;			addEventListener(MouseEvent.MOUSE_DOWN, moveDownHandler);		}				private function moveDownHandler(e:MouseEvent):void {			startDrag(false, new Rectangle(-10000, -10000, 30000, 30000));						dispatchEvent(new MouseEvent(MouseEvent.CLICK));			addEventListener(Event.ENTER_FRAME, mouseMoveHandler);			removeEventListener(MouseEvent.MOUSE_DOWN, moveDownHandler);			addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);		}				private function mouseUpHandler(e:MouseEvent):void {			stopDrag();						removeEventListener(Event.ENTER_FRAME, mouseMoveHandler);			addEventListener(MouseEvent.MOUSE_DOWN, moveDownHandler);			removeEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);		}				private function mouseMoveHandler(e:Event):void {			dispatchEvent(new PointEvent(PointEvent.MOVE));		}	}}
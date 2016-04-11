Lets you create and on the fly edit **bezier curves** with an **easy syntax**.
You can add as many anchor and control points as you want.

### How to use ###

```
import beziercurve.BezierCurve;
import beziercurve.display.AnchorPoint;
import beziercurve.display.ControlPoint;
import beziercurves.events.BezierEvent;

...

BezierCurve.verbose = true;

var b:BezierCurve = new BezierCurve(0, 0xFF0000, 1);
addChild(b);

b.addAnchor(x, y);
b.addControl(x, y);
b.addAnchor(x, y);
b.addControl(x, y);
b.addControl(x, y);
b.addControl(x, y);
b.addAnchor(x, y);
b.addAnchor(x, y);

var a0:AnchorPoint = new AnchorPoint(x, y);
var a1:AnchorPoint = new AnchorPoint(x, y);
var c0:ControlPoint = new ControlPoint(x, y);
b.addPath(a0, c0, a1);

b.editable = true;
b.showEditor = true;

b.addEventListener(BezierEvent.START_EDITING, startEditCurve);
b.addEventListener(BezierEvent.END_EDITING, endEditCurve);
```

### Documentation ###
online [http://www.nicolaslevavasseur.com/beziercurves/](http://www.nicolaslevavasseur.com/beziercurves/)
or [download here](http://beziercurve.googlecode.com/files/doc.zip)

### Contact ###
http://www.nicolaslevavasseur.com
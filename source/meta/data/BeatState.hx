package meta.data;

import flixel.FlxG;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import flixel.addons.ui.FlxUIState;
import flixel.graphics.FlxGraphic;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.util.FlxColor;

class BeatState extends FlxUIState
{
	public static var bpm:Float = 100;
	public static var crochet:Float = 60 / bpm * 1000;
	public static var stepCrochet:Float = crochet / 4;
	public static var songTime:Float; 
    public static var beats:Int = 0;
    public static var steps:Int = 0;

    override public function create() {
        var diamond:FlxGraphic = FlxGraphic.fromClass(GraphicTransTileDiamond);
		diamond.persist = true;
		diamond.destroyOnNoUse = false;

		FlxTransitionableState.defaultTransIn = new TransitionData(TILES, 0x690000, 1, new FlxPoint(0, -1), {asset: diamond, width: 32, height: 32},
			new FlxRect(-200, -200, FlxG.width * 1.4, FlxG.height * 1.4));
		FlxTransitionableState.defaultTransOut = new TransitionData(TILES, 0x690000, 0.7, new FlxPoint(0, 1), {asset: diamond, width: 32, height: 32},
			new FlxRect(-200, -200, FlxG.width * 1.4, FlxG.height * 1.4));

		transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;
        
        super.create();
    }

    override public function update(elapsed:Float) {
        updateSteps();
        updateBeats();

        if (steps % 4 == 0) {
            everyBeat();
        }

        everyStep();

        super.update(elapsed);
    }

    function updateSteps() {
        steps = Math.floor(songTime / stepCrochet);
    }

    function updateBeats() {
        beats = Math.floor(steps / 4);
    }

    public function everyBeat() {
        //handle in game
    }

    public function everyStep() {
        //handle in game
    }
}

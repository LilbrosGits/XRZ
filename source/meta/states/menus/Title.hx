package meta.states.menus;

import flixel.FlxG;
import meta.data.AssetPaths;
import meta.data.BeatState;

class Title extends BeatState {
    override public function create() {
        FlxG.sound.playMusic(AssetPaths.music('menus/mainmenu'));
        super.create();
    }

    override public function update(elapsed:Float) {
        BeatState.songTime = FlxG.sound.music.time;
        super.update(elapsed);
    }

    override public function everyBeat() {
        trace('BEAT HIT');
    }
}
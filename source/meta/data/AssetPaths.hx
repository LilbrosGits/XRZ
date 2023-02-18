package meta.data;

import flixel.FlxG;
import lime.utils.Assets;
import openfl.Assets as OpenFlAssets;

class AssetPaths {
    public static var curMod:String = '';

    function clearCache() {}

    public static function getAsset(swag:String) {
        return 'assets/$swag';
    }

    public static function image(swag:String) {
        if (OpenFlAssets.cache.hasBitmapData(getAsset('images/$swag.png')))
            OpenFlAssets.cache.getBitmapData(getAsset('images/$swag.png'));
        
        return getAsset('images/$swag.png');
    }

    public static function music(swag:String) {
        if (OpenFlAssets.cache.hasSound(getAsset('music/$swag.ogg')))
            FlxG.sound.cache(getAsset('music/$swag.ogg'));
        return getAsset('music/$swag.ogg');
    }

    public static function sound(swag:String) {
        if (OpenFlAssets.cache.hasSound(getAsset('sounds/$swag.ogg')))
            FlxG.sound.cache(getAsset('sounds/$swag.ogg'));
        return getAsset('sounds/$swag.ogg');
    }

    public static function exists(swag:String) {
        if (OpenFlAssets.exists(getAsset(swag)))
            return true;
        else
            return false;
    }

    public static function file(swag:String) {
        return getAsset(swag);
    }
}

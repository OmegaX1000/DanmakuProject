#region //CreateDanmaku_Bullet
/// @function CreateDanmaku_Bullet_Basic(BarrageGroup, Sprite, AnimSpeed, X, Y)
/// @description Creates a bullet for a barrage group with only the minimal amount of arguments needed.
/// @param {string} BarrageGroup
/// @param {asset} Sprite
/// @param {real} AnimSpeed
/// @param {real} X
/// @param {real} Y
function CreateDanmaku_Bullet_Basic(_barrage_group, _sprite, _anim_speed, _x, _y)
{	
	var _barrage_index = ds_map_find_value(global.master_barrage_group, _barrage_group); //Holds a barrage group index.
	var _bullet = {
		BarrageGroup: _barrage_index, //The Barrage Group this Bullet belong to.
		Sprite: _sprite,              //The Current Sprite of the Bullet.
		Sprite_Index: 0,              //The Current Sprite index.
		AnimSpeed: _anim_speed,       //The rate at which the Bullet sprite animates.
		X: _x,                        //The Current X Position of the Bullet.
		Y: _y                         //The Current Y Position of the Bullet.
	};
	
	ds_list_add(_bullet.BarrageGroup, _bullet); //Adds the Bullet to the Barrage Group.
	return _bullet;
}
#endregion
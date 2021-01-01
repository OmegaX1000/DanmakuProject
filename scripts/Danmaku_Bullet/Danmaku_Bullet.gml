#region //CreateDanmaku_Bullet
/// @function CreateDanmaku_Bullet(BarrageGroup, Sprite, X, Y)
/// @description Creates a bullet for a barrage group.
/// @param {string} BarrageGroup
/// @param {asset} Sprite
/// @param {real} X
/// @param {real} Y
function CreateDanmaku_Bullet(_barrage_group, _sprite, _x, _y)
{	
	var _barrage_index = ds_map_find_value(global.master_barrage_group, _barrage_group); //Holds a barrage group index.
	var _bullet = {
		BarrageGroup: _barrage_index, //The Barrage Group this bullet belonds to.
		Sprite: _sprite,              //The Sprite of the Bullet.
		X: _x,                        //The X Position of the Bullet.
		Y: _y                         //The Y Position of the Bullet.
	};
	
	ds_list_add(_bullet.BarrageGroup, _bullet); //Adds the Bullet to the Barrage Group.
	return _bullet;
}
#endregion
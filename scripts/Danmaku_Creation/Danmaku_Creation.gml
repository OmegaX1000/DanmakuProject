function CreateDanmaku_Barrage(_name)
{
	var _barrage_group = {
		Id: _name,
		Barrage: ds_list_create()
	};
	
	ds_list_add(global.master_barrage_group, _barrage_group);
}

function CreateDanmaku_Bullet(_sprite, _x, _y, _barrage_group)
{	
	var _bullet = {
		Sprite: _sprite,
		Bullet_X: _x,
		Bullet_Y: _y
	};
	
	ds_list_add(_barrage_group, _bullet);
}
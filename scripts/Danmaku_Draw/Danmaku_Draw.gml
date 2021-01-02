function Danmaku_Draw()
{
	#region //Manages all of the VFX of the Bullets.
	for (var i = 0; i < ds_list_size(global.barrage_key_list); i++) //Looks through the list full of keys.
	{
		var _barrage_group_key = ds_list_find_value(global.barrage_key_list, i); //A key for a barrage.
		var _barrage_group_name = ds_map_find_value(global.master_barrage_group, _barrage_group_key); //Holds a barrage group name.
		
		#region //Go through all of the bullets in a single barrage group.
		for (var k = 0; k < ds_list_size(_barrage_group_name); k++)
		{
			var _bullet = ds_list_find_value(_barrage_group_name, k); //Bullet Structs.
			var _sprite = _bullet.Sprite;
			var _spr_index = _bullet.Sprite_Index;
			var _bullet_x = _bullet.X;
			var _bullet_y = _bullet.Y;
			
			draw_sprite(_sprite, _spr_index, _bullet_x, _bullet_y); //Drawing the bullets to the screen.
		}
		#endregion
	}
	#endregion
}
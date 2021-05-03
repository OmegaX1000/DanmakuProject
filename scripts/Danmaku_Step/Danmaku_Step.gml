function Danmaku_Step()
{
	#region //Managing the Barrage's and Bullets Behavior.
	for (var i = 0; i < ds_list_size(global.barrage_key_list); i++) //Looks through the list full of keys.
	{
		var _barrage_group_key = ds_list_find_value(global.barrage_key_list, i); //A key for a barrage.
		var _barrage_group_name = ds_map_find_value(global.master_barrage_group, _barrage_group_key); //Holds a barrage group name.
		
		#region //Managing the Behavior of all of the Bullets in a single Barrage.
		for (var k = 0; k < ds_list_size(_barrage_group_name); k++)
		{
			var _bullet = ds_list_find_value(_barrage_group_name, k); //Bullet Structs.
			
			#region //Animating Bullets.
			if (_bullet.AnimSpeed > 0)
			{
				var _spr_frames = sprite_get_number(_bullet.Sprite); //Number of frames in the current Bullet Sprite.
				var _spr_animSpeed = sprite_get_speed(_bullet.Sprite) * (_bullet.AnimSpeed);
				var _spr_gameframe = spritespeed_framespergameframe;
				var _spr_conditional_1 = (sprite_get_speed_type(_bullet.Sprite) == _spr_gameframe);
				var _spr_conditional_2 = _spr_animSpeed / game_get_speed(gamespeed_fps);
				var _spr_spriteIndex = (_spr_conditional_1 ? _spr_animSpeed : _spr_conditional_2);
				
				_bullet.Sprite_Index += (_spr_spriteIndex mod _spr_frames);
			}
			#endregion
		}
		#endregion
	}
	#endregion
}
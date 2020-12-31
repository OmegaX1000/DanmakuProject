function Danmaku_Draw()
{
	for (var i = 0; i < ds_list_size(global.master_barrage_group); i++)
	{
		var _barrage_group_index = ds_list_find_value(global.master_barrage_group, i);
		var _barrage_group_name = variable_struct_get(_barrage_group_index, "Barrage");
		
		for (var k = 0; k < ds_list_size(_barrage_group_name); k++)
		{
			var _bullet = ds_list_find_value(_barrage_group_name, k);
			
			draw_sprite(_bullet.Sprite, 0, _bullet.Bullet_X, _bullet.Bullet_Y);
		}
	}
}
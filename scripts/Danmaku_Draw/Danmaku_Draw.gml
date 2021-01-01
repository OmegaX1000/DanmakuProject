function Danmaku_Draw()
{
	#region //Draws all of the Bullets from all Barrages created.
	for (var i = 0; i < ds_list_size(global.barrage_key_list); i++) //Looks through the list full of keys.
	{
		var _barrage_group_key = ds_list_find_value(global.barrage_key_list, i); //A key for a barrage.
		var _barrage_group_name = ds_map_find_value(global.master_barrage_group, _barrage_group_key); //Holds a barrage group name.
		
		for (var k = 0; k < ds_list_size(_barrage_group_name); k++)
		{
			var _bullet = ds_list_find_value(_barrage_group_name, k); //Bullet Structs.
			draw_sprite(_bullet.Sprite, 0, _bullet.X, _bullet.Y); //Drawing the bullets to the screen.
		}
	}
	#endregion
}
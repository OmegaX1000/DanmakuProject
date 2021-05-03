#region //CreateDanmaku_Barrage
/// @function CreateDanmaku_Barrage(name)
/// @description Creates a barrage for you to populate with bullets.
/// @param {string} name
function CreateDanmaku_Barrage(_name) constructor
{
	 
	var _barrage_list = ds_list_create(); //Create the Barrage List.
	ds_map_add_list(global.master_barrage_group, _name, _barrage_list); //Add the barrage group to the ds map.
	ds_list_add(global.barrage_key_list, _name); //Add the barrage's key to this list.
}
#endregion
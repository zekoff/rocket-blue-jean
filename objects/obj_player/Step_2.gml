/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 78B36997
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 022667D6
	/// @DnDParent : 78B36997
	instance_destroy();

	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 0831FCBB
	/// @DnDParent : 78B36997
	game_end();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 684DF5D3
/// @DnDArgument : "var" "ammo"
/// @DnDArgument : "op" "3"
if(ammo <= 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7FBF9093
	/// @DnDParent : 684DF5D3
	/// @DnDArgument : "script" "scr_change_weapon"
	/// @DnDArgument : "arg" ""None""
	/// @DnDSaveInfo : "script" "05a55963-77d0-494c-92f9-8f71b3686267"
	script_execute(scr_change_weapon, "None");
}
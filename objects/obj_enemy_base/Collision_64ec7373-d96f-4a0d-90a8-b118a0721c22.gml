/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D5CCAF9
/// @DnDArgument : "var" "_contact_dmg"
/// @DnDArgument : "value" "contact_dmg"
var _contact_dmg = contact_dmg;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4FBD1D04
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 1281C193
	/// @DnDParent : 4FBD1D04
	/// @DnDArgument : "health" "-_contact_dmg"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-_contact_dmg);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2AC29356
	/// @DnDParent : 4FBD1D04
	/// @DnDArgument : "script" "scr_recoil"
	/// @DnDSaveInfo : "script" "9b4af4bd-f638-4712-b2d5-9c50f5b6cf7b"
	script_execute(scr_recoil);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0C388EBB
	/// @DnDParent : 4FBD1D04
	/// @DnDArgument : "soundid" "hurt"
	/// @DnDSaveInfo : "soundid" "91925098-678b-4b68-ab2f-6732f0bfcdbc"
	audio_play_sound(hurt, 0, 0);
}
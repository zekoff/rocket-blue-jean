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

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07EFD52E
	/// @DnDInput : 2
	/// @DnDParent : 4FBD1D04
	/// @DnDArgument : "expr" "max_movement_speed * -sign(hsp)"
	/// @DnDArgument : "expr_1" "-3"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "vsp"
	hsp = max_movement_speed * -sign(hsp);
	vsp = -3;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0C388EBB
	/// @DnDParent : 4FBD1D04
	/// @DnDArgument : "soundid" "hurt"
	/// @DnDSaveInfo : "soundid" "91925098-678b-4b68-ab2f-6732f0bfcdbc"
	audio_play_sound(hurt, 0, 0);
}
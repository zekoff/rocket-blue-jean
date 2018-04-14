/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 25E2095D
/// @DnDArgument : "soundid" "pickup"
/// @DnDSaveInfo : "soundid" "b1937997-e87a-4247-bc6a-240e8ccae3e2"
audio_play_sound(pickup, 0, 0);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 70A1093F
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "pickup_type"
with(other) var l70A1093F_0 = pickup_type;
switch(l70A1093F_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 413D6F6E
	/// @DnDParent : 70A1093F
	/// @DnDArgument : "const" ""Pistol""
	case "Pistol":
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 14E97681
		/// @DnDParent : 413D6F6E
		/// @DnDArgument : "script" "scr_change_weapon"
		/// @DnDArgument : "arg" ""Pistol""
		/// @DnDSaveInfo : "script" "05a55963-77d0-494c-92f9-8f71b3686267"
		script_execute(scr_change_weapon, "Pistol");
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 53BBF746
	/// @DnDParent : 70A1093F
	/// @DnDArgument : "const" ""Rifle""
	case "Rifle":
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 30CCAAEB
		/// @DnDParent : 53BBF746
		/// @DnDArgument : "script" "scr_change_weapon"
		/// @DnDArgument : "arg" ""Rifle""
		/// @DnDSaveInfo : "script" "05a55963-77d0-494c-92f9-8f71b3686267"
		script_execute(scr_change_weapon, "Rifle");
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 02553A6D
	/// @DnDParent : 70A1093F
	/// @DnDArgument : "const" ""Rocket""
	case "Rocket":
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4AB07DCF
		/// @DnDParent : 02553A6D
		/// @DnDArgument : "script" "scr_change_weapon"
		/// @DnDArgument : "arg" ""Rocket""
		/// @DnDSaveInfo : "script" "05a55963-77d0-494c-92f9-8f71b3686267"
		script_execute(scr_change_weapon, "Rocket");
		break;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 67BB8870
/// @DnDApplyTo : other
with(other) instance_destroy();
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
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 74AAB74C
		/// @DnDParent : 413D6F6E
		/// @DnDArgument : "spriteind" "spr_player_pistol"
		/// @DnDSaveInfo : "spriteind" "cd721c6d-2723-46dc-89aa-35bf727184cd"
		sprite_index = spr_player_pistol;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A71E3E6
		/// @DnDParent : 413D6F6E
		/// @DnDArgument : "expr" ""Pistol""
		/// @DnDArgument : "var" "equipment"
		equipment = "Pistol";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 53BBF746
	/// @DnDParent : 70A1093F
	/// @DnDArgument : "const" ""Rifle""
	case "Rifle":
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7883EA42
		/// @DnDParent : 53BBF746
		/// @DnDArgument : "spriteind" "spr_player_rifle"
		/// @DnDSaveInfo : "spriteind" "e8c7b2cf-dd77-4d29-a10e-bcfd80a8334a"
		sprite_index = spr_player_rifle;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 690FEA11
		/// @DnDParent : 53BBF746
		/// @DnDArgument : "expr" ""Rifle""
		/// @DnDArgument : "var" "equipment"
		equipment = "Rifle";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 02553A6D
	/// @DnDParent : 70A1093F
	/// @DnDArgument : "const" ""Rocket""
	case "Rocket":
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2092FAD6
		/// @DnDParent : 02553A6D
		/// @DnDArgument : "spriteind" "spr_player_rocket"
		/// @DnDSaveInfo : "spriteind" "16059548-3bf9-47eb-b0b8-55188ce6f272"
		sprite_index = spr_player_rocket;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39047AE0
		/// @DnDParent : 02553A6D
		/// @DnDArgument : "expr" ""Rocket""
		/// @DnDArgument : "var" "equipment"
		equipment = "Rocket";
		break;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 67BB8870
/// @DnDApplyTo : other
with(other) instance_destroy();
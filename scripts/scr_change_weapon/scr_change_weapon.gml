/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 528071A8
/// @DnDApplyTo : 94206336-2ce3-4922-ae23-e64c1adeff7d
with(obj_player) {
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 7C53C361
	/// @DnDApplyTo : other
	/// @DnDParent : 528071A8
	/// @DnDArgument : "expr" "argument0"
	with(other) var l7C53C361_0 = argument0;
	switch(l7C53C361_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 68B64305
		/// @DnDParent : 7C53C361
		/// @DnDArgument : "const" ""None""
		case "None":
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 69C056D2
			/// @DnDParent : 68B64305
			/// @DnDArgument : "spriteind" "spr_player_none"
			/// @DnDSaveInfo : "spriteind" "c3f16f04-76f2-4928-864e-1732d0c2857c"
			sprite_index = spr_player_none;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5A218A07
			/// @DnDParent : 68B64305
			/// @DnDArgument : "expr" ""None""
			/// @DnDArgument : "var" "equipment"
			equipment = "None";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1BC1A994
		/// @DnDParent : 7C53C361
		/// @DnDArgument : "const" ""Pistol""
		case "Pistol":
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 59608D97
			/// @DnDParent : 1BC1A994
			/// @DnDArgument : "spriteind" "spr_player_pistol"
			/// @DnDSaveInfo : "spriteind" "cd721c6d-2723-46dc-89aa-35bf727184cd"
			sprite_index = spr_player_pistol;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 26079D9A
			/// @DnDInput : 2
			/// @DnDParent : 1BC1A994
			/// @DnDArgument : "expr" ""Pistol""
			/// @DnDArgument : "expr_1" "6"
			/// @DnDArgument : "var" "equipment"
			/// @DnDArgument : "var_1" "ammo"
			equipment = "Pistol";
			ammo = 6;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1654B7C8
		/// @DnDParent : 7C53C361
		/// @DnDArgument : "const" ""Rifle""
		case "Rifle":
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6F07725A
			/// @DnDParent : 1654B7C8
			/// @DnDArgument : "spriteind" "spr_player_rifle"
			/// @DnDSaveInfo : "spriteind" "e8c7b2cf-dd77-4d29-a10e-bcfd80a8334a"
			sprite_index = spr_player_rifle;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 06A4A14F
			/// @DnDInput : 2
			/// @DnDParent : 1654B7C8
			/// @DnDArgument : "expr" ""Rifle""
			/// @DnDArgument : "expr_1" "30"
			/// @DnDArgument : "var" "equipment"
			/// @DnDArgument : "var_1" "ammo"
			equipment = "Rifle";
			ammo = 30;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 04978206
		/// @DnDParent : 7C53C361
		/// @DnDArgument : "const" ""Rocket""
		case "Rocket":
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4E3B7242
			/// @DnDParent : 04978206
			/// @DnDArgument : "spriteind" "spr_player_rocket"
			/// @DnDSaveInfo : "spriteind" "16059548-3bf9-47eb-b0b8-55188ce6f272"
			sprite_index = spr_player_rocket;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5FD5D309
			/// @DnDInput : 2
			/// @DnDParent : 04978206
			/// @DnDArgument : "expr" ""Rocket""
			/// @DnDArgument : "expr_1" "2"
			/// @DnDArgument : "var" "equipment"
			/// @DnDArgument : "var_1" "ammo"
			equipment = "Rocket";
			ammo = 2;
			break;
	}
}
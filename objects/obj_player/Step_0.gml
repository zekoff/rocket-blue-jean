/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 1B86D05B
/// @DnDArgument : "force" "gravity_power"
gravity = gravity_power;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CF44BD7
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "rifle_current"
rifle_current += -1;

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 300FEE19
/// @DnDArgument : "btn" "gp_padr"
var l300FEE19_0 = 0;
var l300FEE19_1 = gp_padr;
if(gamepad_is_connected(l300FEE19_0) && (gamepad_button_check(l300FEE19_0, l300FEE19_1) || gamepad_button_check_released(l300FEE19_0, l300FEE19_1)))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 429696B7
	/// @DnDParent : 300FEE19
	/// @DnDArgument : "expr" "acceleration"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hspeed"
	hspeed += acceleration;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4775CD53
/// @DnDArgument : "btn" "gp_padl"
var l4775CD53_0 = 0;
var l4775CD53_1 = gp_padl;
if(gamepad_is_connected(l4775CD53_0) && (gamepad_button_check(l4775CD53_0, l4775CD53_1) || gamepad_button_check_released(l4775CD53_0, l4775CD53_1)))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0894EDCA
	/// @DnDParent : 4775CD53
	/// @DnDArgument : "expr" "-acceleration"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hspeed"
	hspeed += -acceleration;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2BFFE892
/// @DnDInput : 3
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "function" "clamp"
/// @DnDArgument : "arg" "hspeed"
/// @DnDArgument : "arg_1" "-max_movement_speed"
/// @DnDArgument : "arg_2" "max_movement_speed"
hspeed = clamp(hspeed, -max_movement_speed, max_movement_speed);

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 2E87DA7E
var l2E87DA7E_0 = 0;
var l2E87DA7E_1 = gp_face4;
if(gamepad_is_connected(l2E87DA7E_0) && gamepad_button_check_pressed(l2E87DA7E_0, l2E87DA7E_1))
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 7EDC91A6
	/// @DnDParent : 2E87DA7E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_computer"
	/// @DnDSaveInfo : "object" "a65994a1-fa7e-48b1-869a-a441019eaadd"
	var l7EDC91A6_0 = instance_place(x + 0, y + 0, obj_computer);
	if ((l7EDC91A6_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 59DCBF03
		/// @DnDApplyTo : a65994a1-fa7e-48b1-869a-a441019eaadd
		/// @DnDParent : 7EDC91A6
		/// @DnDArgument : "spriteind" "spr_computer_active"
		/// @DnDSaveInfo : "spriteind" "ca0f9311-ff0f-47ea-b7e3-7521bc02bb2f"
		with(obj_computer) {
		sprite_index = spr_computer_active;
		image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 40045516
		/// @DnDApplyTo : 42f0e345-4317-4967-a435-95779013f175
		/// @DnDParent : 7EDC91A6
		/// @DnDArgument : "objind" "obj_door_open"
		/// @DnDSaveInfo : "objind" "58ae09be-f3d2-4aa7-8254-123facc2c718"
		with(obj_door_closed) instance_change(obj_door_open, true);
	
		/// @DnDAction : YoYo Games.Tiles.Tile_Set_In_Cell
		/// @DnDVersion : 1
		/// @DnDHash : 22AE97A1
		/// @DnDParent : 7EDC91A6
		/// @DnDArgument : "layername" ""CollisionTiles""
		/// @DnDArgument : "x" "40"
		/// @DnDArgument : "y" "28"
		var l22AE97A1_0 = layer_tilemap_get_id("CollisionTiles");
		if(l22AE97A1_0 > -1) {
			var l22AE97A1_1 = tilemap_get(l22AE97A1_0, 40, 28);
			if(l22AE97A1_1 > -1) {
				l22AE97A1_1 = tile_set_index(l22AE97A1_1, 0);
				if(l22AE97A1_1 > -1) tilemap_set(l22AE97A1_0, l22AE97A1_1, 40, 28);
			}
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5BE20DF8
		/// @DnDParent : 7EDC91A6
		/// @DnDArgument : "soundid" "pickup"
		/// @DnDSaveInfo : "soundid" "b1937997-e87a-4247-bc6a-240e8ccae3e2"
		audio_play_sound(pickup, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 24F0BAEE
/// @DnDArgument : "btn" "gp_face1"
var l24F0BAEE_0 = 0;
var l24F0BAEE_1 = gp_face1;
if(gamepad_is_connected(l24F0BAEE_0) && gamepad_button_check_pressed(l24F0BAEE_0, l24F0BAEE_1))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32FD55E2
	/// @DnDParent : 24F0BAEE
	/// @DnDArgument : "var" "jumps_remaining"
	/// @DnDArgument : "op" "2"
	if(jumps_remaining > 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 545E2C40
		/// @DnDParent : 32FD55E2
		/// @DnDArgument : "soundid" "jump"
		/// @DnDSaveInfo : "soundid" "41163a72-9c41-4b56-86cb-9755d69b3f37"
		audio_play_sound(jump, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17BABDD9
		/// @DnDInput : 2
		/// @DnDParent : 32FD55E2
		/// @DnDArgument : "expr" "-jump_power"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "vspeed"
		/// @DnDArgument : "var_1" "jumps_remaining"
		vspeed = -jump_power;
		jumps_remaining += -1;
	}
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 485A7804
/// @DnDArgument : "btn" "gp_face2"
var l485A7804_0 = 0;
var l485A7804_1 = gp_face2;
if(gamepad_is_connected(l485A7804_0) && gamepad_button_check_pressed(l485A7804_0, l485A7804_1))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6A3B29AD
	/// @DnDParent : 485A7804
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_bullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet_sword_slash"
	/// @DnDSaveInfo : "objectid" "2fc1e884-d1d9-4d71-bdf9-5867635e1a0b"
	var _bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet_sword_slash);

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 1D7F72A1
	/// @DnDApplyTo : _bullet
	/// @DnDParent : 485A7804
	/// @DnDArgument : "xscale" "obj_player.image_xscale"
	with(_bullet) {
	image_xscale = obj_player.image_xscale;
	image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7212C9A0
/// @DnDArgument : "script" "scr_collide_test"
/// @DnDSaveInfo : "script" "710b4975-97fa-4e66-a74b-f9c8914ab8b8"
script_execute(scr_collide_test);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 493103AE
/// @DnDArgument : "expr" "on_ground"
if(on_ground)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A41B015
	/// @DnDParent : 493103AE
	/// @DnDArgument : "expr" "number_jumps"
	/// @DnDArgument : "var" "jumps_remaining"
	jumps_remaining = number_jumps;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3E580A7C
/// @DnDArgument : "expr" "hspeed != 0"
if(hspeed != 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3ACC2EE9
	/// @DnDParent : 3E580A7C
	/// @DnDArgument : "xscale" "sign(hspeed)"
	image_xscale = sign(hspeed);
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1C20D95F
/// @DnDArgument : "expr" "equipment"
var l1C20D95F_0 = equipment;
switch(l1C20D95F_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 585B87B2
	/// @DnDParent : 1C20D95F
	/// @DnDArgument : "const" ""None""
	case "None":
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 76EEA4A1
		/// @DnDParent : 585B87B2
		/// @DnDArgument : "btn" "gp_face3"
		var l76EEA4A1_0 = 0;
		var l76EEA4A1_1 = gp_face3;
		if(gamepad_is_connected(l76EEA4A1_0) && gamepad_button_check_pressed(l76EEA4A1_0, l76EEA4A1_1))
		{
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 4BED52EA
			/// @DnDParent : 76EEA4A1
			/// @DnDArgument : "msg" ""No weapon...""
			show_debug_message(string("No weapon..."));
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6685B8CE
	/// @DnDParent : 1C20D95F
	/// @DnDArgument : "const" ""Pistol""
	case "Pistol":
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 4CEA0BB5
		/// @DnDParent : 6685B8CE
		/// @DnDArgument : "btn" "gp_face3"
		var l4CEA0BB5_0 = 0;
		var l4CEA0BB5_1 = gp_face3;
		if(gamepad_is_connected(l4CEA0BB5_0) && gamepad_button_check_pressed(l4CEA0BB5_0, l4CEA0BB5_1))
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4CA10293
			/// @DnDParent : 4CEA0BB5
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "2"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "_bullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet_pistol"
			/// @DnDSaveInfo : "objectid" "fde7673f-8ba4-4c3e-adc4-770065630a0b"
			var _bullet = instance_create_layer(x + 0, y + 2, "Instances", obj_bullet_pistol);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 018081F7
			/// @DnDParent : 4CEA0BB5
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "ammo"
			ammo += -1;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 3A32D522
			/// @DnDParent : 4CEA0BB5
			/// @DnDArgument : "code" "// Set bullet direction$(13_10)var _bullet_direction = 0;$(13_10)if (sign(image_xscale) > 0) _bullet_direction = 0;$(13_10)else _bullet_direction = 180;"
			// Set bullet direction
			var _bullet_direction = 0;
			if (sign(image_xscale) > 0) _bullet_direction = 0;
			else _bullet_direction = 180;
		
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
			/// @DnDVersion : 1
			/// @DnDHash : 3A88D2C2
			/// @DnDApplyTo : _bullet
			/// @DnDParent : 4CEA0BB5
			/// @DnDArgument : "direction" "_bullet_direction"
			with(_bullet) direction = _bullet_direction;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 530FFF26
			/// @DnDApplyTo : _bullet
			/// @DnDParent : 4CEA0BB5
			/// @DnDArgument : "speed" "6"
			with(_bullet) speed = 6;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 67836E71
			/// @DnDParent : 4CEA0BB5
			/// @DnDArgument : "soundid" "pistol"
			/// @DnDSaveInfo : "soundid" "edef91f5-bba7-4886-a9ee-991199d65b5e"
			audio_play_sound(pistol, 0, 0);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 30A81B75
	/// @DnDParent : 1C20D95F
	/// @DnDArgument : "const" ""Rifle""
	case "Rifle":
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
		/// @DnDVersion : 1.1
		/// @DnDHash : 101AA2A6
		/// @DnDParent : 30A81B75
		/// @DnDArgument : "btn" "gp_face3"
		var l101AA2A6_0 = 0;
		var l101AA2A6_1 = gp_face3;
		if(gamepad_is_connected(l101AA2A6_0) && (gamepad_button_check(l101AA2A6_0, l101AA2A6_1) || gamepad_button_check_released(l101AA2A6_0, l101AA2A6_1)))
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 29E77A0B
			/// @DnDParent : 101AA2A6
			/// @DnDArgument : "expr" "rifle_current <= 0"
			if(rifle_current <= 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7904B8B1
				/// @DnDParent : 29E77A0B
				/// @DnDArgument : "expr" "rifle_cooldown"
				/// @DnDArgument : "var" "rifle_current"
				rifle_current = rifle_cooldown;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 175C5453
				/// @DnDParent : 29E77A0B
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "2"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "_bullet"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_bullet_rifle"
				/// @DnDSaveInfo : "objectid" "e944a209-53d5-4120-b2ed-7cc759eab9fc"
				var _bullet = instance_create_layer(x + 0, y + 2, "Instances", obj_bullet_rifle);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6012F6C6
				/// @DnDParent : 29E77A0B
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "ammo"
				ammo += -1;
			
				/// @DnDAction : YoYo Games.Common.Execute_Code
				/// @DnDVersion : 1
				/// @DnDHash : 0E4AFFA4
				/// @DnDParent : 29E77A0B
				/// @DnDArgument : "code" "// Set bullet direction$(13_10)var _bullet_direction = 0;$(13_10)if (sign(image_xscale) > 0) _bullet_direction = 0;$(13_10)else _bullet_direction = 180;"
				// Set bullet direction
				var _bullet_direction = 0;
				if (sign(image_xscale) > 0) _bullet_direction = 0;
				else _bullet_direction = 180;
			
				/// @DnDAction : YoYo Games.Random.Get_Random_Number
				/// @DnDVersion : 1
				/// @DnDHash : 4B8872CC
				/// @DnDParent : 29E77A0B
				/// @DnDArgument : "var" "_rnd"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "min" "-4"
				/// @DnDArgument : "max" "4"
				var _rnd = (random_range(-4, 4));
			
				/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
				/// @DnDVersion : 1
				/// @DnDHash : 3A031DC3
				/// @DnDApplyTo : _bullet
				/// @DnDParent : 29E77A0B
				/// @DnDArgument : "direction" "_bullet_direction + _rnd"
				with(_bullet) direction = _bullet_direction + _rnd;
			
				/// @DnDAction : YoYo Games.Movement.Set_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 3A5D4E0D
				/// @DnDApplyTo : _bullet
				/// @DnDParent : 29E77A0B
				/// @DnDArgument : "speed" "8"
				with(_bullet) speed = 8;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 5BCED262
				/// @DnDParent : 29E77A0B
				/// @DnDArgument : "soundid" "rifle"
				/// @DnDSaveInfo : "soundid" "33eddb99-5e22-4ced-9000-ca1a454c8daa"
				audio_play_sound(rifle, 0, 0);
			}
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4621779C
	/// @DnDParent : 1C20D95F
	/// @DnDArgument : "const" ""Rocket""
	case "Rocket":
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 26A39B0B
		/// @DnDParent : 4621779C
		/// @DnDArgument : "btn" "gp_face3"
		var l26A39B0B_0 = 0;
		var l26A39B0B_1 = gp_face3;
		if(gamepad_is_connected(l26A39B0B_0) && gamepad_button_check_pressed(l26A39B0B_0, l26A39B0B_1))
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 48AF3ED8
			/// @DnDParent : 26A39B0B
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "2"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "_bullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet_rocket"
			/// @DnDSaveInfo : "objectid" "125a58e0-f696-4d5c-84eb-b00edae3ec1e"
			var _bullet = instance_create_layer(x + 0, y + 2, "Instances", obj_bullet_rocket);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 045DBB8F
			/// @DnDParent : 26A39B0B
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "ammo"
			ammo += -1;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 303642FC
			/// @DnDParent : 26A39B0B
			/// @DnDArgument : "code" "// Set bullet direction$(13_10)var _bullet_direction = 0;$(13_10)if (sign(image_xscale) > 0) _bullet_direction = 0;$(13_10)else _bullet_direction = 180;"
			// Set bullet direction
			var _bullet_direction = 0;
			if (sign(image_xscale) > 0) _bullet_direction = 0;
			else _bullet_direction = 180;
		
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
			/// @DnDVersion : 1
			/// @DnDHash : 7B4B0895
			/// @DnDApplyTo : _bullet
			/// @DnDParent : 26A39B0B
			/// @DnDArgument : "direction" "_bullet_direction"
			with(_bullet) direction = _bullet_direction;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 62E71D40
			/// @DnDApplyTo : _bullet
			/// @DnDParent : 26A39B0B
			/// @DnDArgument : "speed" "4"
			with(_bullet) speed = 4;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 63158F93
			/// @DnDParent : 26A39B0B
			/// @DnDArgument : "soundid" "rocket"
			/// @DnDSaveInfo : "soundid" "f7faa3bf-e130-4ad3-82ce-e1273ff6185c"
			audio_play_sound(rocket, 0, 0);
		}
		break;
}
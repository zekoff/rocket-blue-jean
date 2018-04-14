/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CF44BD7
/// @DnDInput : 2
/// @DnDArgument : "expr" "gravity_power"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "vsp"
/// @DnDArgument : "var_1" "rifle_current"
vsp += gravity_power;
rifle_current += -1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 160A1242
/// @DnDArgument : "code" "// Apply movement friction$(13_10)if (on_ground && hsp != 0) {$(13_10)	var dir = sign(hsp);$(13_10)	hsp = max(0, abs(hsp) - friction_power);$(13_10)	hsp *= dir;$(13_10)}"
// Apply movement friction
if (on_ground && hsp != 0) {
	var dir = sign(hsp);
	hsp = max(0, abs(hsp) - friction_power);
	hsp *= dir;
}

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
	/// @DnDArgument : "var" "hsp"
	hsp += acceleration;
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
	/// @DnDArgument : "var" "hsp"
	hsp += -acceleration;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2BFFE892
/// @DnDInput : 3
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "function" "clamp"
/// @DnDArgument : "arg" "hsp"
/// @DnDArgument : "arg_1" "-max_movement_speed"
/// @DnDArgument : "arg_2" "max_movement_speed"
hsp = clamp(hsp, -max_movement_speed, max_movement_speed);

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
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17BABDD9
		/// @DnDInput : 2
		/// @DnDParent : 32FD55E2
		/// @DnDArgument : "expr" "-jump_power"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "var_1" "jumps_remaining"
		vsp = -jump_power;
		jumps_remaining += -1;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7212C9A0
/// @DnDArgument : "script" "scr_collide"
/// @DnDSaveInfo : "script" "0421c019-b45a-49cc-af37-8b29ff592cfe"
script_execute(scr_collide);

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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28DD174D
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp;
y += vsp;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3E580A7C
/// @DnDArgument : "expr" "hsp != 0"
if(hsp != 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3ACC2EE9
	/// @DnDParent : 3E580A7C
	/// @DnDArgument : "xscale" "sign(hsp)"
	image_xscale = sign(hsp);
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
		}
		break;
}
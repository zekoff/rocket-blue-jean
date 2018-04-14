/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 01AA2E55
/// @DnDArgument : "steps" "60/animation_speed*6"
alarm_set(0, 60/animation_speed*6);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 014EB46D
/// @DnDArgument : "code" "sprite_set_speed(sprite_index,animation_speed,spritespeed_framespersecond);"
sprite_set_speed(sprite_index,animation_speed,spritespeed_framespersecond);
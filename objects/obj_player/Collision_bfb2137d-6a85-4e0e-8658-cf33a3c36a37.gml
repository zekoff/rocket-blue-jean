/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 360A8021
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 7896162F
/// @DnDArgument : "health" "35"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(35);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 290122B7
/// @DnDArgument : "health" "min(health,100)"

__dnd_health = real(min(health,100));

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 040414F8
/// @DnDArgument : "soundid" "pickup"
/// @DnDSaveInfo : "soundid" "b1937997-e87a-4247-bc6a-240e8ccae3e2"
audio_play_sound(pickup, 0, 0);
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7F443CDB
instance_destroy();

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 43B96FD8
/// @DnDArgument : "var" "_dmg_inflicted"
/// @DnDArgument : "value" "dmg_inflicted"
var _dmg_inflicted = dmg_inflicted;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 5CE4531A
/// @DnDApplyTo : other
/// @DnDArgument : "health" "-_dmg_inflicted"
/// @DnDArgument : "health_relative" "1"
with(other) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-_dmg_inflicted);
}
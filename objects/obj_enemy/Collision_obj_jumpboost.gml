/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 174A404B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF07D5FF"
effect_create_above(8, x + 0, y + 0, 1, $FF07D5FF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 43619E0C
/// @DnDApplyTo : {obj_jumpboost}
with(obj_jumpboost) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68F87178
/// @DnDArgument : "expr" "32"
/// @DnDArgument : "var" "jump_speed"
jump_speed = 32;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 696622FE
/// @DnDArgument : "soundid" "sound_powerup"
/// @DnDSaveInfo : "soundid" "sound_powerup"
audio_play_sound(sound_powerup, 0, 0, 1.0, undefined, 1.0);
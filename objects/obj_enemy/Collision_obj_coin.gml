/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 754D1FAB
/// @DnDComment : spawn visual FX
/// @DnDApplyTo : other
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF0FFFFB"
with(other) effect_create_above(8, x + 0, y + 0, 0, $FF0FFFFB & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 73EE1EB7
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5201133F
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coins"
coins += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 08C56401
/// @DnDArgument : "soundid" "sound_coin"
/// @DnDSaveInfo : "soundid" "sound_coin"
audio_play_sound(sound_coin, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 44FE4CB7
/// @DnDArgument : "msg" "coins"
show_debug_message(string(coins));
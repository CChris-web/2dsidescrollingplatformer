/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 195F2C46
/// @DnDComment : 1 would be pressing right$(13_10)-1 would be pressing left$(13_10)0 would be no input.
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 649C3A8B
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7CB07212
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l7CB07212_0 = instance_place(x + 0, y + 2, [obj_floor]);
if ((l7CB07212_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D105F12
	/// @DnDComment : reset the falling speed $(13_10)on movement Y$(13_10)when you landed on ground
	/// @DnDParent : 7CB07212
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 13242EBB
	/// @DnDParent : 7CB07212
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l13242EBB_0 = instance_place(x + (25 * sign(move_x)), y + 0, [obj_floor]);
	if ((l13242EBB_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 096F2C7D
		/// @DnDComment : Jump
		/// @DnDParent : 13242EBB
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 394542EC
	/// @DnDComment : gaps
	/// @DnDParent : 7CB07212
	/// @DnDArgument : "x" "x + (50 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l394542EC_0 = instance_place(x + (50 * sign(move_x)), y + 50, [obj_floor]);
	if (!(l394542EC_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BAFE116
		/// @DnDParent : 394542EC
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_x"
		move_x += move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B729641
		/// @DnDComment : Jump
		/// @DnDParent : 394542EC
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 003A769A
/// @DnDComment : if your not$(13_10) on the ground
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7428BF69
	/// @DnDComment : if we are$(13_10)falling after$(13_10)a jump
	/// @DnDParent : 003A769A
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3320B2C3
		/// @DnDComment : add gravity
		/// @DnDParent : 7428BF69
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 2BCE442D
/// @DnDComment : 1st object is$(13_10)the object to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
move_and_collide(move_x, move_y, obj_floor,4,0,0,walk_speed,jump_speed);
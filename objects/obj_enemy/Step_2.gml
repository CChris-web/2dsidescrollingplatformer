/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5933183B
/// @DnDComment : if jumping or falling$(13_10)move_y < 0
/// @DnDArgument : "expr" "move_y > 0||move_y < 0 "
if(move_y > 0||move_y < 0 )
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 763488B5
	/// @DnDParent : 5933183B
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_snake_jump"
	/// @DnDSaveInfo : "spriteind" "spr_snake_jump"
	sprite_index = spr_snake_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 378FCD02
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_floor"
var l378FCD02_0 = instance_place(x + 0, y + 2, [obj_floor]);
if (!(l378FCD02_0 > 0))
{

}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 46D58EAD
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DBECD92
	/// @DnDComment : if moving left face left
	/// @DnDParent : 46D58EAD
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6D4B2660
		/// @DnDParent : 6DBECD92
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_snake_walk"
		/// @DnDSaveInfo : "spriteind" "spr_snake_walk"
		sprite_index = spr_snake_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 251E47FF
		/// @DnDParent : 6DBECD92
		/// @DnDArgument : "xscale" "1*abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = 1*abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10AA25D2
	/// @DnDComment : if move right face left
	/// @DnDParent : 46D58EAD
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6BAE83DA
		/// @DnDParent : 10AA25D2
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_snake_walk"
		/// @DnDSaveInfo : "spriteind" "spr_snake_walk"
		sprite_index = spr_snake_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 5D7A422F
		/// @DnDParent : 10AA25D2
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 087A0B12
	/// @DnDParent : 46D58EAD
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 427A52A4
		/// @DnDParent : 087A0B12
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_snake_walk"
		/// @DnDSaveInfo : "spriteind" "spr_snake_walk"
		sprite_index = spr_snake_walk;
		image_index = 1;
	}
}
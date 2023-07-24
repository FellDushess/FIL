#region Verficiar Caída.
	
if (vspeed > 0)
{
	vFallCheck = true;
}
else
{
	vFallCheck = false;
}
#endregion

#region Movimiento Horizontal.

// Detección de Dirección.

var MovRight =  keyboard_check(ord ("D"))
var MovLeft =  keyboard_check(ord ("A"))

// Movimiento del jugador.

if (MovRight) and place_free(x+H_Vel, y)
{
	x += H_Vel;
}

if (MovLeft) and place_free(x-H_Vel, y)
{
	x -= H_Vel;
}
#endregion

#region Salto Vertical.

var vJump = keyboard_check_pressed(vk_space);

if (vJump) and !place_free(x,y+1)
{
	vspeed = -vJumpPow;
}
#endregion

#region Sprint.

	var SprintCheck = false
	
	if keyboard_check(vk_shift)
	{
		SprintCheck = true
		H_Vel += 2;					//Velocidad de Sprint.
	}
	
	if (SprintCheck = true) and keyboard_check(vk_shift) and (H_Vel >= 3)
	{
		H_Vel = 4;
	}
	
	if !keyboard_check(vk_shift)
	{
		SprintCheck = false;
	}
	
	if (SprintCheck = false)
	{
		H_Vel = 2;
	}

#endregion

#region Disparo.
	
	var xBullet = x;
	var yBullet = y -17;
	
	if mouse_check_button(mb_left)
	{
		var inst = instance_create_layer(xBullet, yBullet, "Objects", BulletObject);
	with (inst)
	{
		speed =	10							// Propiedades de la bala.
		direction = other.image_angle;		// Propiedades de la bala.
	}
}

#endregion
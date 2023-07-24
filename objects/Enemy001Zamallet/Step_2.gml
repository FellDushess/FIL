#region Caida y Gravedad

var VMaxSpd = 14;

if place_free(x, y+1)
{
	gravity = 0.3;
}
	else
{
	gravity = 0;
}

if (vspeed >= VMaxSpd)
{
	gravity = 0;
	vspeed = VMaxSpd
}
#endregion













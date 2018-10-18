/// @description Shows what items the player has

if(hasGun && canShoot)
{
	draw_sprite(spr_gun, 0, 50, 20)
}

if(hasCoat && canShoot == true)
{
	draw_sprite(spr_coat, 0, 50 + sprite_get_width(spr_gun), 20)
}

if(hasProjector == true && canProjector == true)
{
	draw_sprite(spr_projector, 0, 50 + sprite_get_width(spr_gun) + sprite_get_width(spr_coat), 20)
}

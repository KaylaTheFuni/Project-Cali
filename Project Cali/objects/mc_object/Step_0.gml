// the variables in blue are the key presses lol
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// increasing the x and y shit so walking works
xspeed = (right_key - left_key) * movespd;
yspeed = (down_key - up_key) * movespd;


// collisions and shit
if place_meeting(x + xspeed, y, wall_object) == true

{
	xspeed = 0;
}

if place_meeting(x, y + yspeed, wall_object) == true

{
	yspeed = 0;
}

if place_meeting(x + xspeed, y, half_wall_object) == true

{
	xspeed = 0;
}

if place_meeting(x, y + yspeed, half_wall_object) == true

{
	yspeed = 0;
}


// the thing that makes the walking do the game maker shit for walking
x += xspeed;
y += yspeed;

// what dir mc is facing

if xspeed > 0 {mcface = RIGHT};
if xspeed < 0 {mcface = LEFT};

if yspeed < 0 {mcface = UP};
if yspeed > 0 {mcface = DOWN};

sprite_index = sprite[mcface];

//animation bullshit
if xspeed == 0 && yspeed == 0
{
image_index = 0;
}
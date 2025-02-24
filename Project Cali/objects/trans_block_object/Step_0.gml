if place_meeting(x, y, mc_object) && !instance_exists(trans_object)
{
var inst = instance_create_depth(0, 0, -9999, trans_object);
inst.target_x = target_x;
inst.target_y = target_y;
inst.target_room = target_room;
}
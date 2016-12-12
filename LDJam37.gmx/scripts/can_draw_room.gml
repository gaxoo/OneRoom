//can_draw_room(x, y, width, height)

colliding_room = position_meeting(argument[0], argument[1], obj_room);
if (!colliding_room && argument[0] >= 0 && argument[1] >= 0 && argument[0] + argument[2] < room_width && argument[1] + argument[3] < room_height) {
  return true;
} else {
  return false;
}


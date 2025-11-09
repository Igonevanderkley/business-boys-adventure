/// Step Event
visible = obj_controller.upgrade1_purchased;
// Move in current direction up to the point of collision
move_contact_solid(direction, speed);

// If we are touching a wall, pick a new bounce direction
if (place_meeting(x, y, obj_wall))
{
    // Back off slightly to avoid sticking
    move_contact_solid(direction + 180, speed);

    // Bounce away with a random angle
    direction += irandom_range(120, 240);

    // Keep direction in 0-360 range
    if (direction >= 360) direction -= 360;
}

// Optional: also bounce off room edges
if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    direction += 180;
    if (direction >= 360) direction -= 360;
}

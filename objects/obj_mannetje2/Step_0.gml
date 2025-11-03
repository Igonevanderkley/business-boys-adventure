if direction = 0 && place_meeting(x,y,obj_wall)

{

direction = 180;

}

else

{

if direction = 180 && place_meeting(x,y,obj_wall)

{

direction = 0;

}

else

{

if direction = 90 && place_meeting(x,y,obj_wall)

{

direction = 270;

}

else

{

if direction = 270 && place_meeting(x,y,obj_wall)

{

direction = 90;

}

}

}

}


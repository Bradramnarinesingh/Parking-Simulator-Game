/// desc movement

var w	= keyboard_check(ord("W"));
var a	= keyboard_check(ord("A"));
var s	= keyboard_check(ord("S"));
var d	= keyboard_check(ord("D"));

if (w)
{
	speed += acc;
	if !audio_is_playing(snd_acceleration)
{
  audio_play_sound(snd_acceleration, 0, false);
}
}

if (s)
{
	speed -= acc;
	  audio_stop_sound(snd_acceleration)
		if !audio_is_playing(snd_break)
{
  audio_play_sound(snd_break, 0, false);
}
}



if (d)
{
	direction -= speed*turnradius;
}

if (a)
{
	direction += speed*turnradius;
}

//brakes
if !w and !s
{
	audio_stop_sound(snd_acceleration)
	audio_stop_sound(snd_break)
	if friction <1 friction += 0.001;

}

else friction =0;

//max speed, forward and reverse
if speed > forwardspd speed = forwardspd;
if speed < reversespd speed = reversespd;

image_angle = direction;

move_wrap(true, true, 0)
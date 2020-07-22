/// @description

angle += 90;

if (!scr_can_move(figurePosX))
{
  angle -= 90;
}

angle %= 360;

scr_update_figure();
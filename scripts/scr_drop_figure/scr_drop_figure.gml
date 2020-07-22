for (var row = figurePosY; row < 20; row++)
{
  if (scr_can_fall())
  {
    figurePosY++;
    scr_update_figure();
  }
  else
  {
    scr_place_figure();
    break;
  }
}

global.OldMcs = global.McsAcc;
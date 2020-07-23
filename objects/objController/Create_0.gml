/// @description

randomise();

#macro KeyInitialDelayMs 100
#macro KeyDelayMs        50
#macro FallDelayStepMs   5
#macro FallMinDelayMs    100
#macro LeftmostSquare    32
#macro RightmostSquare   176
#macro UpmostSquare      32
#macro DownmostSquare    336
#macro BlockSize         16
#macro CupWidth          10
#macro CupHeight         20

enum Figures
{
  FigBlock = 0,
  FigT,
  FigStepLR,
  FigStepRL,
  FigBootL,
  FigBootR,
  FigLine
}

score = 0;

global.IsGameOver = false;

global.CurrentTit = irandom(sprite_get_number(tits) - 1);

global.CurrentFigure = noone;
global.NextFigure = irandom(Figures.FigLine);

global.FallDelayMs = 1000;

global.KeyMcs = 0;
global.KeyMsDelay = KeyInitialDelayMs;

global.McsAcc = 0;
global.OldMcs = 0;
global.TickCount = 0;

global.MapGrid = ds_list_create();

for (var i = 0; i < 20; i++)
{
  var row = ds_list_create();
  for (var j = 0; j < 10; j++)
  {
    ds_list_add(row, 0);
  }
  
  ds_list_add(global.MapGrid, row);
}

global.BlocksRef[0, 0] = 0;
for (var rows = 0; rows < 20; rows++)
{
  for (var cols = 0; cols < 10; cols++)
  {
    global.BlocksRef[rows, cols] = 0;
  }
}

scr_create_figure();

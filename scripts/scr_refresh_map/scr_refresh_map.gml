for (var rows = 0; rows < 20; rows++)
{
  for (var cols = 0; cols < 10; cols++)
  {
    if (scr_grid_get_value(rows, cols) == 1)
    {
      scr_create_block(rows, cols);
    }
  }  
}
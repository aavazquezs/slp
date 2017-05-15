function y = funcionAct(Y_in,theta=0)
if (Y_in > theta)
  y = 1;
 elseif (-theta < Y_in < theta)
  y = 0;
  else 
  y = -1;
 endif;
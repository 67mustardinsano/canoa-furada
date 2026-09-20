if (instance_exists(obj_batalha))
{if (obj_batalha.turno == 1)
    {visible = true;
   }else{
       visible = false}}
	   if (obj_batalha.turno == 1)
	   {if (keyboard_check(vk_left))
		   {x -= 3;}
		   
		   if (keyboard_check(vk_right))
	    {x += 3;}
		   
		    {if (keyboard_check(vk_up))
		   {y -= 3;}
		   
		   if (keyboard_check(vk_down))
			
		   {y += 3;}
		   }
		   }
		   
if (instance_exists(obj_arena))
var esquerda = 490;
var direita = 808.50;
var cima = 234.70;
var baixo = 500;

if (x < esquerda)
{x = esquerda;}

if (x > direita)
{x = direita;}

if (y < cima)
{y = cima;}

if (y > baixo)
{y = baixo;}

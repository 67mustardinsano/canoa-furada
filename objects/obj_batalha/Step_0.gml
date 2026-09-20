if (turno == 0)
{
    if (keyboard_check_pressed(vk_right))
    {personagem_atual += 1;}

    if (keyboard_check_pressed(vk_left))
    {personagem_atual -= 1;}}
	
	if (personagem_atual >=quantidade_personagens)
	{personagem_atual = 0;}
	
    if (personagem_atual < 0)
	{personagem_atual = quantidade_personagens - 1;}
	
	if (keyboard_check_pressed(ord("T")))
	{ if (turno == 0)
		{turno = 1 - turno;}
		else
		{turno = 0;}}
		
	
	
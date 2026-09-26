if (instance_exists(obj_batalha))
{if (obj_batalha.turno == 1)
    {visible = true;
}else{
visible = false;}}
if (instance_exists(obj_batalha) && obj_batalha.turno == 1)
{
    if (keyboard_check(vk_left))
    {x -= velocidade;}

    if (keyboard_check(vk_right))
    {x += velocidade;}

    if (keyboard_check(vk_up))
    {y -= velocidade;}

    if (keyboard_check(vk_down))
    {y += velocidade;}}

if (instance_exists(obj_arena))
{
var margem_x = 10;
var margem_y = 10;
    var esquerda = obj_arena.x - obj_arena.largura / 2 + margem_x;
    var direita = obj_arena.x + obj_arena.largura / 2 - margem_x;
    var cima = obj_arena.y - obj_arena.altura / 2 + margem_y;
    var baixo = obj_arena.y + obj_arena.altura / 2 - margem_y;

    if (x < esquerda)
    {x = esquerda;}

    if (x > direita)
    {x = direita;}

    if (y < cima)
    {y = cima;}

    if (y > baixo)
    {y = baixo;}}
if (vida < 0)
{vida = 0;}
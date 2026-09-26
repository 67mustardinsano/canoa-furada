y += velocidade;
if (instance_exists(obj_uniao) && !ja_acertou)
{
    var ataque_esquerda = x - largura_hitbox / 2;
    var ataque_direita = x + largura_hitbox / 2;
    var ataque_cima = y - altura_hitbox / 2;
    var ataque_baixo = y + altura_hitbox / 2;

    var coracao_esquerda = obj_uniao.x - obj_uniao.hitbox_largura / 2;
    var coracao_direita = obj_uniao.x + obj_uniao.hitbox_largura / 2;
    var coracao_cima = obj_uniao.y - obj_uniao.hitbox_altura / 2;
    var coracao_baixo = obj_uniao.y + obj_uniao.hitbox_altura / 2;

    if (ataque_direita >= coracao_esquerda &&
        ataque_esquerda <= coracao_direita &&
        ataque_baixo >= coracao_cima &&
        ataque_cima <= coracao_baixo)
    {
        obj_uniao.vida -= dano;
        ja_acertou = true;
    }
}
show_debug_message("ALARM 0 ATIVOU!");
show_debug_message("OPCAO = " + string(opcao));

switch (opcao)
{
    case 0:
        show_debug_message("INDO PARA JOGO");
        room_goto(rm_capitulo1);
    break;

    case 1:
        show_debug_message("INDO PARA CONFIGURACOES");
        room_goto(rm_configuracoes);
    break;

    case 2:
        show_debug_message("INDO PARA MULTIPLAYER");
        room_goto(rm_multiplayer);
    break;

    case 3:
        show_debug_message("INDO PARA EXTRAS");
        room_goto(rm_extras);
    break;

    case 4:
        show_debug_message("SAINDO DO JOGO");
        game_end();
    break;
}
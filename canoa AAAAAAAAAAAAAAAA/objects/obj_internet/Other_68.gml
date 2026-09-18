var tipo = async_load[? "type"];
var socket = async_load[? "id"];

if (tipo == network_type_connect)
{
    if (sou_host)
    {
        array_push(sockets, socket);
        array_push(nomes, "");

        show_debug_message("JOGADOR CONECTOU");
    }
    else
    {
        conectado = true;

        enviar(
            cliente,
            1,
            obj_multiplayer.nickname,
            obj_multiplayer.codigo_entrada
        );

        show_debug_message("CONECTADO AO HOST");
    }
}


if (tipo == network_type_data)
{
    var b = async_load[? "buffer"];

    buffer_seek(b, buffer_seek_start, 0);

    var pacote = buffer_read(b, buffer_u8);

    if (sou_host)
    {
        if (pacote == 1)
        {
            var nome = buffer_read(b, buffer_string);
            var codigo = buffer_read(b, buffer_string);

            if (codigo == obj_multiplayer.codigo_sala)
            {
                var pos = array_index_of(sockets, socket);

                nomes[pos] = nome;

                obj_multiplayer.jogadores[pos + 1] = nome;

                mandar_lobby();

                show_debug_message("ENTROU: " + nome);
            }
        }
    }
    else
    {
        if (pacote == 2)
        {
            obj_multiplayer.jogadores[0] = buffer_read(b, buffer_string);
            obj_multiplayer.jogadores[1] = buffer_read(b, buffer_string);
            obj_multiplayer.jogadores[2] = buffer_read(b, buffer_string);
        }
    }

    buffer_delete(b);
}


if (tipo == network_type_disconnect)
{
    var pos = array_index_of(sockets, socket);

    if (sou_host && pos >= 0)
    {
        array_delete(sockets, pos, 1);
        array_delete(nomes, pos, 1);

        for (var i = pos; i < 2; i++)
        {
            obj_multiplayer.jogadores[i + 1] = obj_multiplayer.jogadores[i + 2];
        }

        obj_multiplayer.jogadores[2] = "";

        mandar_lobby();
    }

    if (!sou_host)
    {
        conectado = false;
    }
}
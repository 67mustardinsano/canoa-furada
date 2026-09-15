

musica = audio_play_sound(snd_lingua, 10, true);

persistent = true;




audio_sound_gain(
    musica,
    global.config_musica / 100,
    0
);

audio_master_gain(
    global.config_audio / 100
);
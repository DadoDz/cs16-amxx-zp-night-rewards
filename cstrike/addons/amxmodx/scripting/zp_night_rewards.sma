#include <amxmodx>
//#include <zombie_plague_x/zp_packs_system>

#define PLUGIN "[ZP] Night Rewards"
#define VERSION "1.0"
#define AUTHOR "DadoDz"

native zp_get_user_packs(index);
native zp_set_user_packs(index, packs);

#define REWARD_INTERVAL 60.0
#define MIN_PACKS 10
#define MAX_PACKS 35

new g_playername[33][32];

public plugin_init()
{
    register_plugin(PLUGIN, VERSION, AUTHOR);

    set_task(REWARD_INTERVAL, "FreePacks", _, _, _, "b");
}

public client_putinserver(id) get_user_name(id, g_playername[id], charsmax(g_playername[]));

bool:isNight()
{
    new hour;
    time(hour);

    return (23 <= hour || hour < 9);
}

public FreePacks()
{
    if (!isNight())
        return;

    new players[32], count;
    get_players(players, count, "ach");

    if (!count)
        return;

    new player = players[random(count)];
    new random_packs = random_num(MIN_PACKS, MAX_PACKS);

    zp_set_user_packs(player, zp_get_user_packs(player) + random_packs);

    client_print_color(0, print_team_default, "^x04[^x01ZP^x04]^x01 Player^x03 %s^x01 received^x04 %d^x01 Packs^x03!", g_playername[player], random_packs);
}

# [ZP] Night Rewards

A night reward plugin for **Zombie Plague** servers, designed for **Counter-Strike 1.6**.
During configured late-night hours, the plugin periodically rewards random active players with free Ammo Packs.

## Plugin Information

  - **Name**: [ZP] Night Rewards
  - **Version**: 1.0
  - **Author**: DadoDz
  - **Game**: Counter-Strike 1.6
  - **Mod**: Zombie Plague

## Requirements

- AMX Mod X **1.9+**
- Zombie Plague Mod

## Installation
1. Place ```zp_night_rewards.sma``` in: **addons/amxmodx/scripting/**
2. Compile it with your AMXX compiler.
3. Place the compiled .amxx file in: **addons/amxmodx/plugins/**
4. Add this line to your plugins.ini: ```zp_night_rewards.amxx```
5. Restart your server.

## Required Natives
This plugin uses custom natives to get and set ammo packs, you must change these natives based on your zombie plague version.
- ```native zp_get_user_packs(index)```
- ```native zp_set_user_packs(index, packs)```

## Notice
> This plugin was originally created for my own server.
The concept already exists, this is simply my own lightweight implementation adapted for **Zombie Plague** servers.

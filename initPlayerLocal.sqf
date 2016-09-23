// Derp_revive setup
if ("derp_revive" in (getMissionConfigValue "respawnTemplates")) then {
    if (getMissionConfigValue "derp_revive_everyoneCanRevive" == 0) then {
        if (player getUnitTrait "medic") then {
            call derp_revive_fnc_drawDowned;
        };
    } else {
        call derp_revive_fnc_drawDowned;
    };
    call derp_revive_fnc_handleDamage;
    call derp_revive_fnc_diaryEntries;
    if (getMissionConfigValue "respawnOnStart" == -1) then {[player] call derp_revive_fnc_reviveActions};
};

/* // un-comment to be able to save loadouts and have them attributed back after respawn, tied in to derp_revive
_someArsenalBox addAction [
    "<t color='#006bb3'>Save gear</t>",
    {
        player setVariable ["derp_savedGear", (getUnitLoadout player)];
        systemChat "gear saved";
    }
];
*/

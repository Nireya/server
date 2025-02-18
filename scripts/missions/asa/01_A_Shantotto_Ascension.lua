-----------------------------------
-- A Shantotto Ascension
-- A Shantotto Ascension M1
-----------------------------------
-- !addmission 11 0
-----------------------------------

local mission = Mission:new(xi.mission.log_id.ASA, xi.mission.id.asa.A_SHANTOTTO_ASCENSION)

mission.reward =
{
    nextMission = { xi.mission.log_id.ASA, xi.mission.id.asa.BURGEONING_DREAD },
}

mission.sections =
{
    {
        check = function(player, currentMission, missionStatus, vars)
            return currentMission == mission.missionId and
                xi.settings.main.ENABLE_ASA == 1 and
                player:getMainLvl() >= 10
        end,

        [xi.zone.WINDURST_WALLS] =
        {
            onZoneIn = function(player, prevZone)
                if
                    prevZone == xi.zone.WINDURST_WATERS or
                    prevZone == xi.zone.WINDURST_WOODS
                then
                    return 510
                end
            end,

            onEventFinish =
            {
                [510] = function(player, csid, option, npc)
                    -- TODO: This is most likely a pos change, followed by onZoneIn event
                    player:startEvent(514)
                end,

                [514] = function(player, csid, option, npc)
                    mission:complete(player)
                end,
            },
        },
    },
}

return mission

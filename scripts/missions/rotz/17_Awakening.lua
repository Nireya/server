-----------------------------------
-- Awakening
-- Zilart M17
-----------------------------------
-- !addmission 3 30
-- Gilgamesh   : !pos 122.452 -9.009 -12.052 252
-- Lower Jeuno : !zone 245
-- Norg        : !zone 252
-----------------------------------

local mission = Mission:new(xi.mission.log_id.ZILART, xi.mission.id.zilart.AWAKENING)

mission.reward =
{
    nextMission = { xi.mission.log_id.ZILART, xi.mission.id.zilart.THE_LAST_VERSE },
}

local missionOnEventFinish = function(player, csid, option, npc)
    if
        option >= 1 and
        option <= 4 and
        player:getMissionStatus(mission.areaId) == 3
    then
        mission:complete(player)
    end
end

mission.sections =
{
    {
        check = function(player, currentMission, missionStatus, vars)
            return currentMission == mission.missionId
        end,

        [xi.zone.NORG] =
        {
            ['Gilgamesh'] = mission:event(177),
        }
    },

    -- Optional cutscenes that should be displayed only once onZone.  In this
    -- case, missionStatus is handled as a bitfield.
    {
        check = function(player, currentMission, missionStatus, vars)
            return currentMission == mission.missionId
        end,

        [xi.zone.LOWER_JEUNO] =
        {
            ['_6tc'] =
            {
                onTrigger = function(player, npc)
                    if not utils.mask.getBit(player:getMissionStatus(mission.areaId), 1) then
                        return mission:event(20)
                    end
                end,
            },

            onEventFinish =
            {
                [20] = function(player, csid, option, npc)
                    -- Set bit 1 of missionStatus
                    player:setMissionStatus(mission.areaId, player:getMissionStatus(mission.areaId) + 2)
                end,
            },
        },

        [xi.zone.NORG] =
        {
            onZoneIn = function(player, prevZone)
                if not utils.mask.getBit(player:getMissionStatus(mission.areaId), 0) then
                    return 176
                end
            end,

            onEventFinish =
            {
                [176] = function(player, csid, option, npc)
                    -- Set bit 0 of missionStatus
                    player:setMissionStatus(mission.areaId, player:getMissionStatus(mission.areaId) + 1)
                end,

                [232] = missionOnEventFinish,
                [234] = missionOnEventFinish,
            },
        }
    },
}

return mission

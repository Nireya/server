-----------------------------------
-- Area: Middle Delkfutt's Tower
--  Mob: Goblin Pathfinder
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
    xi.regime.checkRegime(player, mob, 782, 1, xi.regime.type.GROUNDS)
    xi.regime.checkRegime(player, mob, 784, 1, xi.regime.type.GROUNDS)
end

return entity

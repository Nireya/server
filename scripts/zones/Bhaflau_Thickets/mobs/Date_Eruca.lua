-----------------------------------
-- Area: Bhaflau Thickets
--  Mob: Date Eruca
-----------------------------------
mixins = { require('scripts/mixins/families/eruca') }
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobDeath = function(mob, player, optParams)
end

return entity

-----------------------------------
-- Mix: Antidote - Removes Poison Monberaux will not remove the effects
-- of Poison Potion or other consumables like it.
-----------------------------------
---@type TMobSkill
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

-- TODO: verify no effect messaging
mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    if target:hasStatusEffect(xi.effect.POISON) then
        skill:setMsg(xi.msg.basic.SKILL_ERASE)
        target:delStatusEffect(xi.effect.POISON)
        return xi.effect.POISON
    else
        skill:setMsg(xi.msg.basic.SKILL_NO_EFFECT) -- NO_EFFECT also works.
    end
end

return mobskillObject

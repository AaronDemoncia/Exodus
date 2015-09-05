-----------------------------------------
-- ID: 18033
-- Item: Adder Jambiya
-- Additional Effect: Impairs evasion
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 15;

    if (math.random(0,99) >= chance or applyResistanceAddEffect(player,target,ELE_ICE,0) <= 0.5) then
        return 0,0,0;
    else
        target:delStatusEffect(EFFECT_EVASION_BOOST);
        target:addStatusEffect(EFFECT_EVASION_DOWN, 10, 0, 60);
        return SUBEFFECT_DEFENSE_DOWN, MSGBASIC_ADD_EFFECT_STATUS, EFFECT_EVASION_DOWN;
    end
end;
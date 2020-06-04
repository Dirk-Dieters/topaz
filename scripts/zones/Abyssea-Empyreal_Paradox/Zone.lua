-----------------------------------
--
-- Zone: Abyssea - Empyreal_Paradox
--
-----------------------------------
local ID = require("scripts/zones/Abyssea-Empyreal_Paradox/IDs")
require("scripts/globals/abyssea")
-----------------------------------

function onInitialize(zone)
end

function onZoneIn(player,prevZone)
    local cs = -1

    if player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0 then
        player:setPos(540,-500,-565,64)
    end

    ResetPlayerLights(player)

    return cs
end

function onRegionEnter(player,region)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end

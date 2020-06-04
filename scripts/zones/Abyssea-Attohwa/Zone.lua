-----------------------------------
--
-- Zone: Abyssea - Attohwa
--
-----------------------------------
local ID = require("scripts/zones/Abyssea-Attohwa/IDs")
require("scripts/globals/quests")
require("scripts/globals/abyssea")
-----------------------------------

function onInitialize(zone)
end

function onZoneIn(player,prevZone)
    local cs = -1

    if player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0 then
        player:setPos(-134,-20,-182,108)
    end

    ResetPlayerLights(player)

    if player:getQuestStatus(ABYSSEA, tpz.quest.id.abyssea.THE_TRUTH_BECKONS) == QUEST_ACCEPTED and player:getCharVar("1stTimeAbyssea") == 0 then
        player:setCharVar("1stTimeAbyssea",1)
    end

    return cs
end

function onRegionEnter(player,region)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end

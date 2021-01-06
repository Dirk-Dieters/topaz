-----------------------------------
-- Area: Davoi
--  Mob: Deloknok
-- Involved in Quest: The First Meeting
-----------------------------------
require("scripts/globals/keyitems")
require("scripts/globals/quests")
-----------------------------------
local entity = {}

function onMobDeath(mob, player, isKiller)
    local theFirstMeeting = player:getQuestStatus(tpz.quest.log_id.BASTOK, tpz.quest.id.bastok.THE_FIRST_MEETING)
    local martialArtsScroll = player:hasKeyItem(tpz.ki.SANDORIAN_MARTIAL_ARTS_SCROLL)

    if (theFirstMeeting == QUEST_ACCEPTED and martialArtsScroll == false) then
        player:addCharVar("theFirstMeetingKilledNM", 1)
    end
end

return entity

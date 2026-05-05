local VERSION = "20260505";
local ChatFilterQueueAnnouncer_Frame = CreateFrame("Frame");
ChatFilterQueueAnnouncer_Frame:RegisterEvent("PLAYER_LOGIN");
ChatFilterQueueAnnouncer_Frame:SetScript("OnEvent",function()
  if (IsAddOnLoaded("ChatFilterQueueAnnouncer")) then
    ChatFilterQueueAnnouncer_Frame:UnregisterEvent("PLAYER_LOGIN");
    ChatFilterQueueAnnouncer_Frame:SetParent(nil);
    ChatFilterQueueAnnouncer_Frame = nil;
    DEFAULT_CHAT_FRAME:AddMessage("|cff00bbffChatFilterQueueAnnouncer |cff808080(version "..VERSION..")|cff00bbff loaded: Filters \"|cffffff00Queue Announcer|cff00bbff\" messages.");
  else
    UIErrorsFrame:AddMessage("|cffff0000ChatFilterQueueAnnouncer |cff808080(version "..VERSION..")|cffff0000 did not load correctly!");
    DEFAULT_CHAT_FRAME:AddMessage("|cffff0000ChatFilterQueueAnnouncer |cff808080(version "..VERSION..")|cffff0000 did not load correctly!");
  end
end);

local ChatFrame_OnEvent_Saved = ChatFrame_OnEvent;

-- Filtered message examples:
-- [Arena Queue Announcer]
-- [BG Queue Announcer]
ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", function(_, _, msg)
  if string.find(msg, "%[%w+ Queue Announcer%]:") then
    return true;
  end
end);

--[[
	2.3雪山活动 堆雪人 教学弹出

]]
--[[
local defs = {
	guide_regionID = [configID],
}
]]

local extraTriggers={

  { config_id = 8000001, name = "Enter_Tutorial_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_TutorialRegion", trigger_count = 0}
}

function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end

end


function action_enter_TutorialRegion(context, evt)

	if defs.guide_regionID == nil then 
		return 0
	elseif evt.param1 == defs.guide_regionID then 
		LF_Try_StartTutorial(context)
	end
	return 0
end

function LF_Try_StartTutorial(context)

    local UidList = ScriptLib.GetSceneUidList(context)
    local ownerUid = UidList[1]
    local havePlayed  = ScriptLib.GetExhibitionAccumulableData(context, ownerUid, 10901101)

    if 0 == havePlayed then
        ScriptLib.ShowClientTutorial(context, 833, {ownerUid})
        ScriptLib.AddExhibitionAccumulableData(context,ownerUid, "WinterCamp_Snowman_HavePlayed", 1)
    end

    return 0
end


LF_Initialize_Group(triggers, suites)

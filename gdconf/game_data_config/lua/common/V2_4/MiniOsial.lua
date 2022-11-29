local watcher_2_condition = defs.round
local watcher4time = defs.interval_time_1
local watcher5time = defs.interval_time_2
local watcher6time = defs.interval_time_3
local temp_Variables = {
	{ config_id=50000001,name = "Finish_Game_Play", value = 0, no_refresh = false },
}

local temp_Tirgger = {
	{event = EventType.EVENT_VARIABLE_CHANGE, source = "Finish_Game_Play", condition = "", action = "action_EVENT_VARIABLE_CHANGE",trigger_count = 0},
	{event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE",trigger_count = 0},
	{event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS",trigger_count = 0},
	{event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION",trigger_count = 0},
}
function action_EVENT_SELECT_OPTION(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_SELECT_OPTION")
    --各种temp变量初始化
    ScriptLib.SetGroupTempValue(context,"watcher_4_countdown", 0,{})
    ScriptLib.SetGroupTempValue(context,"watcher_5_countdown", 0,{})
    ScriptLib.SetGroupTempValue(context,"watcher_6_countdown", 0,{})
    ScriptLib.SetGroupTempValue(context,"watcher_4_complete",0,{})
    ScriptLib.SetGroupTempValue(context,"watcher_5_complete",0,{})
    ScriptLib.SetGroupTempValue(context,"watcher_6_complete",0,{})
    ScriptLib.SetGroupTempValue(context,"round",0,{})
    local uid_list = ScriptLib.GetSceneUidList(context)
    for i = 1 , #uid_list do
        ScriptLib.SetGroupTempValue(context,"watcher_3_attacked_"..uid_list[i],0,{})
    end
    return 0
end
function action_EVENT_TIME_AXIS_PASS(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_TIME_AXIS_PASS")
    if evt.source_name == "watcher_4_countdown" then ScriptLib.SetGroupTempValue(context,"watcher_4_countdown", 0,{}) end
    if evt.source_name == "watcher_5_countdown" then ScriptLib.SetGroupTempValue(context,"watcher_5_countdown", 0,{}) end
    if evt.source_name == "watcher_6_countdown" then ScriptLib.SetGroupTempValue(context,"watcher_6_countdown", 0,{}) end
    return 0
end
function action_EVENT_ANY_MONSTER_LIVE(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_ANY_MONSTER_LIVE".. "[evt.source_eid] = " .. evt.source_eid)
    if ScriptLib.GetMonsterIdByEntityId(context, evt.source_eid) == 26080101 then
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, evt.param1, "SGV_Mini_Osial", 1)
    end
    return 0
end
function action_EVENT_VARIABLE_CHANGE(context,evt)
    ScriptLib.PrintContextLog(context,"action_EVENT_VARIABLE_CHANGE".. "[evt.source_name] = " .. evt.source_name)

    if evt.source_name == "Finish_Game_Play" then
        local uid_list = ScriptLib.GetSceneUidList(context)
        for i = 1 , #uid_list do
            ScriptLib.AddExhibitionAccumulableData(context,uid_list[i],"Activity_MiniOsial_Watcher_1",1)    --[[watcher1]]
            ScriptLib.PrintContextLog(context,uid_list[i].. ":watcher1")
            ScriptLib.AddExhibitionReplaceableData(context,uid_list[i],"Activity_MiniOsial_CARD_5",1)       --[[card5]]
            ScriptLib.PrintContextLog(context,uid_list[i].. ":card5")
        end
        LF_cal_watcher_2(context)
        LF_cal_watcher_3(context)
        LF_cal_watcher_456(context)
    end
    return 0
end
--ScriptLib.GetMonsterIdByEntityId(context, entity_id)：根据实体ID获取怪物ID（monster_id)。
--========================以下为LF
function LF_cal_watcher_2(context)
    local _round = ScriptLib.GetGroupTempValue(context,"round",{})
    ScriptLib.PrintContextLog(context,"LF_cal_watcher_2[round]=".._round)
    if _round < watcher_2_condition then
        local uid_list = ScriptLib.GetSceneUidList(context)
        for i = 1 , #uid_list do
            ScriptLib.AddExhibitionAccumulableData(context,uid_list[i],"Activity_MiniOsial_Watcher_2",1)    --[[watcher2]]
            ScriptLib.PrintContextLog(context,uid_list[i].. ":watcher2")
        end
    end
    return 0
end
function LF_cal_watcher_3(context)
    ScriptLib.PrintContextLog(context,"LF_cal_watcher_3")
    local uid_list = ScriptLib.GetSceneUidList(context)
    for i = 1 , #uid_list do
        if ScriptLib.GetGroupTempValue(context,"watcher_3_attacked_"..uid_list[i],{}) ~= 1 then
            ScriptLib.AddExhibitionAccumulableData(context,uid_list[i],"Activity_MiniOsial_Watcher_3",1)    --[[watcher3]]
            ScriptLib.PrintContextLog(context,uid_list[i].. ":watcher3")
            ScriptLib.AddExhibitionReplaceableData(context,uid_list[i],"Activity_MiniOsial_CARD_4",1)       --[[card4]]
            ScriptLib.PrintContextLog(context,uid_list[i].. ":card4")
        end
    end
    return 0
end
function LF_cal_watcher_456(context)
    ScriptLib.PrintContextLog(context,"LF_cal_watcher_456")
    for key = 4,6 do
        if ScriptLib.GetGroupTempValue(context,"watcher_".. key .. "_complete",{}) == 1 then
            local uid_list = ScriptLib.GetSceneUidList(context)
            for i = 1 , #uid_list do
                ScriptLib.AddExhibitionAccumulableData(context,uid_list[i],"Activity_MiniOsial_Watcher_"..key,1)    --[[watcher456]]
                ScriptLib.PrintContextLog(context,uid_list[i].. ":watcher"..key)
            end
        end
    end
    return 0
end
--========================以下为SLC
function SLC_MiniOsial_Watcher_2(context)
    ScriptLib.PrintContextLog(context,"SLC_MiniOsial_watcher_2[context.uid] = " .. context.uid)
    ScriptLib.ChangeGroupTempValue(context,"round",1,{})
    return 0
end
function SLC_MiniOsial_Water_Attack(context)--需要lua处理，局终判断未被击中的uid
    ScriptLib.PrintContextLog(context,"SLC_MiniOsial_Water_Attack[context.uid] = " .. context.uid)
    ScriptLib.SetGroupTempValue(context,"watcher_3_attacked_".. context.uid,1,{})
    return 0
end
function SLC_MiniOsial_Injury(context)
    ScriptLib.PrintContextLog(context,"SLC_MiniOsial_Injury[context.uid] = " .. context.uid)
    --watcher 4
    if ScriptLib.GetGroupTempValue(context,"watcher_4_countdown",{}) == 1 then
        ScriptLib.SetGroupTempValue(context,"watcher_4_complete",1,{})
    else
        ScriptLib.InitTimeAxis(context, "watcher_4_countdown", {watcher4time}, false)
        ScriptLib.SetGroupTempValue(context,"watcher_4_countdown",1,{})
    end
    --watcher 5
    if ScriptLib.GetGroupTempValue(context,"watcher_5_countdown",{}) == 1 then
        ScriptLib.SetGroupTempValue(context,"watcher_5_complete",1,{})
    else
        ScriptLib.InitTimeAxis(context, "watcher_5_countdown", {watcher5time}, false)
        ScriptLib.SetGroupTempValue(context,"watcher_5_countdown",1,{})
    end
    --watcher 6
    if ScriptLib.GetGroupTempValue(context,"watcher_6_countdown",{}) == 1 then
        ScriptLib.SetGroupTempValue(context,"watcher_6_complete",1,{})
    else
        ScriptLib.InitTimeAxis(context, "watcher_6_countdown", {watcher6time}, false)
        ScriptLib.SetGroupTempValue(context,"watcher_6_countdown",1,{})
    end
    return 0
end
function SLC_MiniOsial_CARD_3(context)
    ScriptLib.PrintContextLog(context,"SLC_MiniOsial_CARD_3[context.uid] = " .. context.uid)
    ScriptLib.AddExhibitionReplaceableData(context,context.uid,"Activity_MiniOsial_CARD_3",1)           --[[card3]]
    ScriptLib.PrintContextLog(context,context.uid.. ":card3")
    return 0
end
--[[ function SLC_MiniOsial_CARD_4(context)
    ScriptLib.PrintContextLog(context,"SLC_MiniOsial_CARD_4[context.uid] = " .. context.uid)
    ScriptLib.AddExhibitionReplaceableData(context,context.uid,"Activity_MiniOsial_CARD_4",1)
    return 0
end ]]
--==========================================通用初始化：
function Initialize()
	--加触发器
	for k,v in pairs(temp_Tirgger) do
        v.name = k..""
        v.config_id = 9000000 + k
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	--加变量
	for k,v in pairs(temp_Variables) do
		table.insert(variables,v)
	end

	return 0
end
Initialize()

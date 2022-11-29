--ServerUploadTool Save to [/root/env/data/lua/common/V2_7]
--[[
=====================================================================================================================
||	Filename 	  ||	Activity_GachaSync
||	RelVersion    ||	2.7
||	Owner         ||	chao.jin
||	Description   ||	2.7 家具扭蛋活动进入Region时修改玩家SGV
||	LogName       ||    ##[GachaSync]
||	Protection    ||	
=====================================================================================================================
--[[misc
defs = {
	region_sync = 1001, --活动划定的同步SGV的Region
	sync_element = 1, --同步元素类型 1火，2水，3冰，4雷
}
=====================================================================================================================]]

local GachaSync_Triggers = {
    [1] = { name = "enter_region", config_id = 8002001, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false},
    [2] = { name = "leave_region", config_id = 8002002, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0, forbid_guest = false },
    [3] = { name = "group_load", config_id = 8002003, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},

}


function action_enter_region(context,evt)
	if evt.param1 == defs.region_sync then
		ScriptLib.PrintContextLog(context,"##[GachaSync]:玩家进入活动Group范围")
		ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_ActivityGacha_ElemSyncRegion", defs.sync_element)
	end
	return 0 
end

function action_leave_region(context,evt)
	if evt.param1 == defs.region_sync then
		ScriptLib.PrintContextLog(context,"##[GachaSync]:玩家离开活动Group范围")
		ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_ActivityGacha_ElemSyncRegion", 0)
	end
	return 0 
end


function action_group_load(context,evt)
	if base_info.group_id == 133001079 then
		ScriptLib.PrintContextLog(context,"##[GachaSync]:修改Group天气")
		ScriptLib.SetWeatherAreaState(context, 1009, 1)
	end
	return 0 
end

function GachaSync_Initialize()
	for k,v in pairs(GachaSync_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

GachaSync_Initialize()
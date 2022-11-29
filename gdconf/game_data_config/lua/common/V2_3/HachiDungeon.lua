--[[
	2.3狗子活动 救小动物潜行关
]]

--[[

local defs = {
	group_id = 246101001,
	--Boss目标点
	target_points = {1004,1005,1006,1007,1008,1009,1010,1011,1012}
}

]]

local extraTriggers={
	{ config_id = 8000001, name = "TimeAxis_Event", event= EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
	{ config_id = 8000002, name = "Battle_Start", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_ResetGroupTempVar", trigger_count = 0 },
	--{ config_id = 8000000, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
}


function LF_Initialize_Group(triggers, suites)
	for i=1,#extraTriggers do
		table.insert(triggers, extraTriggers[i])
		table.insert(suites[init_config.suite].triggers,extraTriggers[i].name)
	end
end

--随机激活一个目标点 排除上一个
function SLC_ActiveRandomPoint(context)

	if ScriptLib.GetGroupTempValue(context, "deny_call",{}) == 1 then
		ScriptLib.PrintContextLog(context, "[HachiDungeon] #WARN# Get SLC During Cool Down Time! Do nothing.")
		return 0
	end

	local last_index = ScriptLib.GetGroupTempValue(context, "last_index",{})
	local list = {table.unpack(defs.target_points)}
	ScriptLib.PrintContextLog(context, "[HachiDungeon] Get Random Result: ListCount@"..#list.." Last Index@"..last_index)
	--如果不是第一次随机
	if last_index ~= 0 then 		
		table.remove(list, last_index)
		ScriptLib.PrintContextLog(context, "[HachiDungeon] Remove from Pool @"..list[rand_index])
	end
	
	math.randomseed(ScriptLib.GetServerTime(context))

	rand_index = math.random(#list)
	ScriptLib.PrintContextLog(context, "[HachiDungeon] Get Random Result: configID@"..list[rand_index])

	last_index = LF_GetKeyByValue(context, list[rand_index], defs.target_points)

	ScriptLib.SetGroupTempValue(context, "last_index", last_index, {})
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, list[rand_index], 201)

	--CD时间轴 时间到了将刚才的物件切回0
	ScriptLib.SetGroupTempValue(context, "deny_call", 1, {})
	ScriptLib.InitTimeAxis(context, "cool_down", {10}, false)
	
	return 0
end

function action_time_axis_pass(context, evt)

	local last_index = ScriptLib.GetGroupTempValue(context, "last_index",{})
	ScriptLib.PrintContextLog(context, "[HachiDungeon] Cool down finished, Reset Point State: configID@"..defs.target_points[last_index])
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.target_points[last_index], 0)

	ScriptLib.SetGroupTempValue(context, "deny_call", 0, {})

	return 0
end
function action_ResetGroupTempVar(context)

	ScriptLib.SetGroupTempValue(context, "buff_num",0,{})

	return 0
end

function SLC_HachiDungeonBuff_Mark(context)
	ScriptLib.ChangeGroupTempValue(context, "buff_num", 1, {})
	return 0
end
--上报运营日志数据 需求单s1286672 
function UpLoadActionLog(context)

	local log = {
		["buff_num"] = 0,--本次地城挑战获得的buff个数，若没有获得buff则记0
	}

	log["buff_num"] =  ScriptLib.GetGroupTempValue(context, "buff_num" ,{})

	ScriptLib.MarkGroupLuaAction(context, "ActivityHachi_2", "", log)

	ScriptLib.PrintContextLog(context, "[HachiSneak] UpLoadActionLog: buff_num@"..log["buff_num"])
	return 0
end

function LF_GetKeyByValue(context, value, table)
	for k,v in pairs(table) do
		if value == v then 
			return k
		end
	end
	return 0
end
LF_Initialize_Group(triggers, suites)
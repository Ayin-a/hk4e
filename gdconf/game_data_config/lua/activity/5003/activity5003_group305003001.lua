-- 基础信息
local base_info = {
	group_id = 305003001
}

-- Trigger变量
local defs = {
	schedule_id = 5003001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 1001, npc_id = 30001, pos = { x = 2255.541, y = 209.990, z = -937.167 }, rot = { x = 0.000, y = 345.828, z = 0.000 }, area_id = 1 },
	{ config_id = 1003, npc_id = 30001, pos = { x = 1918.746, y = 223.826, z = -942.049 }, rot = { x = 0.000, y = 26.744, z = 0.000 }, area_id = 3 },
	{ config_id = 1005, npc_id = 30001, pos = { x = 1786.332, y = 221.863, z = -390.292 }, rot = { x = 0.000, y = 210.030, z = 0.000 }, area_id = 3 },
	{ config_id = 1007, npc_id = 30001, pos = { x = 1569.791, y = 218.756, z = 253.453 }, rot = { x = 0.000, y = 217.351, z = 0.000 }, area_id = 5 },
	{ config_id = 1009, npc_id = 30001, pos = { x = 921.590, y = 212.780, z = 338.179 }, rot = { x = 0.000, y = 210.837, z = 0.000 }, area_id = 5 },
	{ config_id = 1011, npc_id = 30001, pos = { x = -62.850, y = 276.570, z = 243.505 }, rot = { x = 0.000, y = 51.803, z = 0.000 }, area_id = 7 },
	{ config_id = 1013, npc_id = 30001, pos = { x = -495.302, y = 210.022, z = 354.714 }, rot = { x = 0.000, y = 135.208, z = 0.000 }, area_id = 7 }
}

-- 装置
gadgets = {
	{ config_id = 1002, gadget_id = 70360001, pos = { x = 2254.520, y = 209.990, z = -936.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 1004, gadget_id = 70360001, pos = { x = 1918.969, y = 223.826, z = -941.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 1006, gadget_id = 70360001, pos = { x = 1785.885, y = 221.863, z = -391.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 1008, gadget_id = 70360001, pos = { x = 1569.482, y = 218.756, z = 252.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 1010, gadget_id = 70360001, pos = { x = 920.870, y = 212.780, z = 337.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	{ config_id = 1012, gadget_id = 70360001, pos = { x = -62.182, y = 276.398, z = 244.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 1014, gadget_id = 70360001, pos = { x = -494.650, y = 210.022, z = 354.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 1017, shape = RegionShape.SPHERE, radius = 12, pos = { x = 2255.327, y = 209.990, z = -937.995 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1001015, name = "GROUP_REFRESH_1015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_1015", trigger_count = 0 },
	{ config_id = 1001016, name = "GROUP_LOAD_1016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1016", trigger_count = 0 },
	{ config_id = 1001017, name = "ENTER_REGION_1017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1017", action = "action_EVENT_ENTER_REGION_1017" }
}

-- 变量
variables = {
	{ config_id = 1, name = "PaimonCheck", value = 1, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 8,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 1002, 1004, 1006, 1008, 1010, 1012, 1014 },
		regions = { 1017 },
		triggers = { "GROUP_LOAD_1016", "ENTER_REGION_1017" },
		npcs = { 1001 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1002, 1004, 1006, 1008, 1010, 1012, 1014 },
		regions = { },
		triggers = { "GROUP_LOAD_1016" },
		npcs = { 1003 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 1002, 1004, 1006, 1008, 1010, 1012, 1014 },
		regions = { },
		triggers = { "GROUP_LOAD_1016" },
		npcs = { 1005 },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 1002, 1004, 1006, 1008, 1010, 1012, 1014 },
		regions = { },
		triggers = { "GROUP_LOAD_1016" },
		npcs = { 1007 },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 1002, 1004, 1006, 1008, 1010, 1012, 1014 },
		regions = { },
		triggers = { "GROUP_LOAD_1016" },
		npcs = { 1009 },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 1002, 1004, 1006, 1008, 1010, 1012, 1014 },
		regions = { },
		triggers = { "GROUP_LOAD_1016" },
		npcs = { 1011 },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 1002, 1004, 1006, 1008, 1010, 1012, 1014 },
		regions = { },
		triggers = { "GROUP_LOAD_1016" },
		npcs = { 1013 },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 1002, 1004, 1006, 1008, 1010, 1012, 1014 },
		regions = { },
		triggers = { "GROUP_REFRESH_1015", "GROUP_LOAD_1016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_1015(context, evt)
	local cur_time = ScriptLib.GetServerTime(context)
	local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, defs.schedule_id)
	if #act_time == 0 then
		return -1
	end        
	local s = math.ceil((cur_time - act_time[1])/86400)
	if s > 7 then
		return -1
	end
	ScriptLib.RefreshGroup(context, {group_id = 305003001, suite = s})   
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1016(context, evt)
	local cur_time = ScriptLib.GetServerTime(context)
	local act_time = ScriptLib.GetActivityOpenAndCloseTimeByScheduleId(context, defs.schedule_id)
	if #act_time == 0 then
		return -1
	end        
	local s = math.ceil((cur_time - act_time[1])/86400)
	if s > 7 then
		return -1
	end
	local index = ScriptLib.GetGroupSuite(context, 305003001)
	if index ~= s then
		ScriptLib.RefreshGroup(context, {group_id = 305003001, suite = s}) 
	end  
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1017(context, evt)
	if evt.param1 ~= 1017 then return false end
	
	-- 判断变量"PaimonCheck"为1
	if ScriptLib.GetGroupVariableValue(context, "PaimonCheck") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1017(context, evt)
	-- 调用提示id为 1110159 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110159) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "PaimonCheck" 的变量设置为 99
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "PaimonCheck", 99) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
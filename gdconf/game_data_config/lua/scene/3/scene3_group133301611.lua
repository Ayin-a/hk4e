-- 基础信息
local base_info = {
	group_id = 133301611
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
}

-- 装置
gadgets = {
	{ config_id = 611001, gadget_id = 70500000, pos = { x = -746.174, y = 220.772, z = 3030.378 }, rot = { x = 0.000, y = 34.915, z = 0.000 }, level = 27, point_type = 2052, area_id = 23 },
	{ config_id = 611002, gadget_id = 70500000, pos = { x = -734.278, y = 220.732, z = 3027.930 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 22 },
	{ config_id = 611003, gadget_id = 70500000, pos = { x = -736.124, y = 220.740, z = 3020.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 23 },
	{ config_id = 611004, gadget_id = 70500000, pos = { x = -743.235, y = 220.716, z = 3022.456 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 27, point_type = 2052, area_id = 23 },
	{ config_id = 611005, gadget_id = 70500000, pos = { x = -729.713, y = 220.763, z = 3023.186 }, rot = { x = 0.000, y = 38.905, z = 0.000 }, level = 27, point_type = 2052, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1611006, name = "QUEST_FINISH_611006", event = EventType.EVENT_QUEST_FINISH, source = "7310613", condition = "", action = "action_EVENT_QUEST_FINISH_611006", trigger_count = 0 },
	{ config_id = 1611007, name = "GROUP_LOAD_611007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_611007", action = "action_EVENT_GROUP_LOAD_611007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_611006", "GROUP_LOAD_611007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 611001, 611002, 611003, 611004, 611005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_611006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_611007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_611007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301611, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133301513
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
	{ config_id = 513001, gadget_id = 70500000, pos = { x = -915.740, y = 196.197, z = 3624.522 }, rot = { x = 0.000, y = 27.320, z = 0.000 }, level = 33, point_type = 2052, area_id = 23 },
	{ config_id = 513002, gadget_id = 70500000, pos = { x = -907.872, y = 196.158, z = 3620.509 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 23 },
	{ config_id = 513003, gadget_id = 70500000, pos = { x = -903.784, y = 196.166, z = 3614.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 23 },
	{ config_id = 513004, gadget_id = 70500000, pos = { x = -914.129, y = 196.142, z = 3614.924 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 33, point_type = 2052, area_id = 23 },
	{ config_id = 513005, gadget_id = 70500000, pos = { x = -904.652, y = 196.053, z = 3626.697 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 33, point_type = 2052, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1513006, name = "QUEST_FINISH_513006", event = EventType.EVENT_QUEST_FINISH, source = "7310603", condition = "", action = "action_EVENT_QUEST_FINISH_513006", trigger_count = 0 },
	{ config_id = 1513007, name = "GROUP_LOAD_513007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_513007", action = "action_EVENT_GROUP_LOAD_513007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_513006", "GROUP_LOAD_513007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 513001, 513002, 513003, 513004, 513005 },
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
function action_EVENT_QUEST_FINISH_513006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_513007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_513007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301513, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end
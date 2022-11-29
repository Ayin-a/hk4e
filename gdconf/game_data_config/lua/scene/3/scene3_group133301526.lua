-- 基础信息
local base_info = {
	group_id = 133301526
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
	{ config_id = 526001, gadget_id = 70500000, pos = { x = -307.709, y = 292.018, z = 3318.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 22 },
	{ config_id = 526002, gadget_id = 70500000, pos = { x = -294.993, y = 292.018, z = 3314.038 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 22 },
	{ config_id = 526003, gadget_id = 70500000, pos = { x = -301.350, y = 292.018, z = 3312.341 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 22 },
	{ config_id = 526004, gadget_id = 70500000, pos = { x = -305.432, y = 292.009, z = 3307.101 }, rot = { x = 0.000, y = 94.056, z = 0.000 }, level = 27, point_type = 2052, area_id = 22 },
	{ config_id = 526005, gadget_id = 70500000, pos = { x = -300.357, y = 291.940, z = 3319.915 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 27, point_type = 2052, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1526006, name = "QUEST_FINISH_526006", event = EventType.EVENT_QUEST_FINISH, source = "7310604", condition = "", action = "action_EVENT_QUEST_FINISH_526006", trigger_count = 0 },
	{ config_id = 1526007, name = "GROUP_LOAD_526007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_526007", action = "action_EVENT_GROUP_LOAD_526007", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_526006", "GROUP_LOAD_526007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 526001, 526002, 526003, 526004, 526005 },
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
function action_EVENT_QUEST_FINISH_526006(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_526007(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_526007(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133301526, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end
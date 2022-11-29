-- 基础信息
local base_info = {
	group_id = 220000058
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
	{ config_id = 269, gadget_id = 70900236, pos = { x = -68.988, y = 13.891, z = 290.325 }, rot = { x = 0.000, y = 82.808, z = 0.000 }, level = 1 },
	{ config_id = 270, gadget_id = 70900236, pos = { x = -74.767, y = 11.887, z = 290.729 }, rot = { x = 0.000, y = 37.867, z = 0.000 }, level = 1 },
	{ config_id = 271, gadget_id = 70900236, pos = { x = -78.546, y = 9.740, z = 290.328 }, rot = { x = 0.000, y = 77.422, z = 0.000 }, level = 1 },
	{ config_id = 272, gadget_id = 70900236, pos = { x = -87.187, y = 2.182, z = 285.778 }, rot = { x = 0.000, y = 229.784, z = 0.000 }, level = 1 },
	{ config_id = 273, gadget_id = 70900236, pos = { x = -86.561, y = 2.217, z = 281.665 }, rot = { x = 0.000, y = 48.293, z = 0.000 }, level = 1 },
	{ config_id = 274, gadget_id = 70900236, pos = { x = -86.634, y = 12.175, z = 281.484 }, rot = { x = 0.000, y = 180.279, z = 0.000 }, level = 1 },
	{ config_id = 275, gadget_id = 70900236, pos = { x = -86.666, y = 15.442, z = 281.606 }, rot = { x = 0.000, y = 83.813, z = 0.000 }, level = 1 },
	{ config_id = 276, gadget_id = 70900236, pos = { x = -86.714, y = 13.280, z = 281.456 }, rot = { x = 0.000, y = 300.623, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000086, name = "GADGET_STATE_CHANGE_86", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_86", trigger_count = 0 },
	{ config_id = 1000105, name = "ANY_GADGET_DIE_105", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_105", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 269, 270, 271, 272, 273, 274, 275, 276 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_86", "ANY_GADGET_DIE_105" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_86(context, evt)
	local c_num_1 = ScriptLib.GetGroupVariableValue(context, "count")
	local c_num = c_num_1 + 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", c_num) then
	ScriptLib.PrintLog("c_num="..c_num)
	    return -1
	end
	
	if c_num == 8 then
	 if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220000059, suite = 2 }) then
			return -1
		end
	end
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_105(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "count", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
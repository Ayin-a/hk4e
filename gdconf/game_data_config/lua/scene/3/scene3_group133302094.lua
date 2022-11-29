-- 基础信息
local base_info = {
	group_id = 133302094
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94001, monster_id = 20011001, pos = { x = -673.932, y = 200.000, z = 2802.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 94002, monster_id = 20011001, pos = { x = -674.392, y = 200.000, z = 2808.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 },
	{ config_id = 94003, monster_id = 20011001, pos = { x = -669.094, y = 200.000, z = 2800.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94004, gadget_id = 71700388, pos = { x = -671.652, y = 200.022, z = 2797.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094005, name = "GADGET_STATE_CHANGE_94005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94005", action = "action_EVENT_GADGET_STATE_CHANGE_94005" }
}

-- 变量
variables = {
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
		monsters = { 94001, 94002, 94003 },
		gadgets = { 94004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_94005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 94001, 94002, 94003 },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_94005(context, evt)
	-- 检测config_id为94004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 94004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302094, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
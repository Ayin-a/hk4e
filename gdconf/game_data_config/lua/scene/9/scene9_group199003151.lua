-- 基础信息
local base_info = {
	group_id = 199003151
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
	{ config_id = 151001, gadget_id = 70310234, pos = { x = -721.966, y = 120.620, z = -3.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, area_id = 403 },
	{ config_id = 151002, gadget_id = 70380306, pos = { x = -721.971, y = 120.267, z = -3.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151003, name = "GROUP_LOAD_151003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_151003", trigger_count = 0 }
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
	suite = 2,
	end_suite = 1,
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
		gadgets = { 151001, 151002 },
		regions = { },
		triggers = { "GROUP_LOAD_151003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_151003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_151003(context, evt)
		  if ScriptLib.GetGroupVariableValueByGroup(context, "weather", 199003100) == 4 then
	
	ScriptLib.RefreshGroup(context, { group_id = 199003151, suite = 1 }) 
	
	else
	
	ScriptLib.RefreshGroup(context, { group_id = 199003151, suite = 2 }) 
	end
	return 0
end
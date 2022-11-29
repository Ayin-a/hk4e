-- 基础信息
local base_info = {
	group_id = 133302617
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
	{ config_id = 617001, gadget_id = 70330219, pos = { x = -208.510, y = 222.649, z = 2537.384 }, rot = { x = 5.267, y = 31.119, z = 359.248 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 617002, gadget_id = 70310198, pos = { x = -224.181, y = 221.314, z = 2537.657 }, rot = { x = 0.000, y = 194.018, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 617003, gadget_id = 70330197, pos = { x = -273.623, y = 224.020, z = 2579.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1617004, name = "ANY_GADGET_DIE_617004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_617004", action = "action_EVENT_ANY_GADGET_DIE_617004" }
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
		monsters = { },
		gadgets = { 617001, 617002, 617003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_617004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_617004(context, evt)
	if 617001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_617004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302593, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
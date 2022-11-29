-- 基础信息
local base_info = {
	group_id = 133304461
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
	{ config_id = 461001, gadget_id = 70330219, pos = { x = -1237.552, y = 209.428, z = 2141.919 }, rot = { x = 0.000, y = 97.067, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 461004, gadget_id = 70310198, pos = { x = -1216.684, y = 208.584, z = 2151.715 }, rot = { x = 0.000, y = 291.084, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 461005, gadget_id = 70217020, pos = { x = -1236.768, y = 209.739, z = 2141.714 }, rot = { x = 0.000, y = 122.910, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1461003, name = "ANY_GADGET_DIE_461003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_461003", action = "action_EVENT_ANY_GADGET_DIE_461003" }
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
		gadgets = { 461001, 461004 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_461003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_461003(context, evt)
	if 461001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_461003(context, evt)
	-- 创建id为461005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 461005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
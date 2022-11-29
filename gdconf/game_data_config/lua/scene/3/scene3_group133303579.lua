-- 基础信息
local base_info = {
	group_id = 133303579
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
	{ config_id = 579001, gadget_id = 70310198, pos = { x = -1581.879, y = 220.221, z = 3290.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 579002, gadget_id = 70330219, pos = { x = -1571.907, y = 207.530, z = 3289.731 }, rot = { x = 0.000, y = 66.577, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 579003, gadget_id = 70217020, pos = { x = -1571.789, y = 207.496, z = 3289.698 }, rot = { x = 0.000, y = 68.963, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1579004, name = "ANY_GADGET_DIE_579004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_579004", action = "action_EVENT_ANY_GADGET_DIE_579004" }
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
		gadgets = { 579001, 579002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_579004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_579004(context, evt)
	if 579002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_579004(context, evt)
	-- 创建id为579003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 579003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
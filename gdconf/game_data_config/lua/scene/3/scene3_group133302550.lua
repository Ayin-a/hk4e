-- 基础信息
local base_info = {
	group_id = 133302550
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
	{ config_id = 550001, gadget_id = 70500000, pos = { x = -712.722, y = 242.450, z = 2332.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2050, isOneoff = true, area_id = 24 },
	{ config_id = 550002, gadget_id = 70290472, pos = { x = -712.722, y = 242.450, z = 2332.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1550003, name = "ANY_GADGET_DIE_550003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_550003", action = "action_EVENT_ANY_GADGET_DIE_550003" }
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
		gadgets = { 550002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_550003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_550003(context, evt)
	if 550002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_550003(context, evt)
	-- 创建id为550001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 550001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
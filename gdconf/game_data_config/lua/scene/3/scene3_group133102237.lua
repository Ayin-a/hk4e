-- 基础信息
local base_info = {
	group_id = 133102237
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
	{ config_id = 866, gadget_id = 70220001, pos = { x = 1764.922, y = 228.473, z = 823.279 }, rot = { x = 340.594, y = 127.906, z = 6.553 }, level = 18, area_id = 5 },
	{ config_id = 867, gadget_id = 70210101, pos = { x = 1765.009, y = 228.526, z = 823.166 }, rot = { x = 355.334, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜通用璃月", area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000472, name = "ANY_GADGET_DIE_472", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_472", action = "action_EVENT_ANY_GADGET_DIE_472" }
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
		gadgets = { 866 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_472" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_472(context, evt)
	if 866 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_472(context, evt)
	-- 创建id为867的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 867 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
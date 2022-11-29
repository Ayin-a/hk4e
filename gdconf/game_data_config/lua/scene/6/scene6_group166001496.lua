-- 基础信息
local base_info = {
	group_id = 166001496
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 496003, monster_id = 24020301, pos = { x = 612.608, y = 401.352, z = 659.217 }, rot = { x = 0.000, y = 22.903, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 496001, gadget_id = 70290342, pos = { x = 613.310, y = 405.540, z = 664.650 }, rot = { x = 5.818, y = 32.599, z = 7.579 }, level = 36, isOneoff = true, area_id = 300 },
	{ config_id = 496002, gadget_id = 70211121, pos = { x = 624.834, y = 402.416, z = 654.697 }, rot = { x = 359.900, y = 254.388, z = 352.208 }, level = 26, drop_tag = "解谜高级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1496004, name = "ANY_GADGET_DIE_496004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_496004", action = "action_EVENT_ANY_GADGET_DIE_496004" }
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
		gadgets = { 496001, 496002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_496004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_496004(context, evt)
	if 496001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_496004(context, evt)
	-- 创建id为496002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 496002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133102253
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 253001, monster_id = 21010401, pos = { x = 1041.532, y = 199.822, z = 328.491 }, rot = { x = 0.000, y = 198.267, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 947, gadget_id = 70300088, pos = { x = 1039.601, y = 200.813, z = 321.964 }, rot = { x = 0.000, y = 283.979, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 948, gadget_id = 70211001, pos = { x = 1040.315, y = 200.337, z = 323.884 }, rot = { x = 352.820, y = 359.217, z = 12.426 }, level = 16, drop_tag = "战斗低级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000496, name = "ANY_GADGET_DIE_496", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_496", action = "action_EVENT_ANY_GADGET_DIE_496" }
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
		monsters = { 253001 },
		gadgets = { 947 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_496" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_496(context, evt)
	if 947 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_496(context, evt)
	-- 创建id为948的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 948 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
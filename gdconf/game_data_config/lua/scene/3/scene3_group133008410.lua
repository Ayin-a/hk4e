-- 基础信息
local base_info = {
	group_id = 133008410
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
	{ config_id = 410001, gadget_id = 70220055, pos = { x = 820.838, y = 383.150, z = -593.967 }, rot = { x = 42.253, y = 7.494, z = 19.240 }, level = 30, area_id = 10 },
	{ config_id = 410002, gadget_id = 70220055, pos = { x = 818.798, y = 388.409, z = -599.993 }, rot = { x = 42.644, y = 10.689, z = 26.955 }, level = 30, area_id = 10 },
	{ config_id = 410003, gadget_id = 70220055, pos = { x = 825.192, y = 393.232, z = -601.918 }, rot = { x = 41.951, y = 4.607, z = 11.980 }, level = 30, area_id = 10 },
	{ config_id = 410004, gadget_id = 70220055, pos = { x = 823.821, y = 395.633, z = -604.487 }, rot = { x = 45.864, y = 9.520, z = 22.269 }, level = 30, area_id = 10 },
	{ config_id = 410005, gadget_id = 70220055, pos = { x = 813.505, y = 382.284, z = -593.280 }, rot = { x = 5.023, y = 359.718, z = 353.569 }, level = 30, area_id = 10 },
	{ config_id = 410006, gadget_id = 70211101, pos = { x = 817.126, y = 380.867, z = -592.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1410007, name = "ANY_GADGET_DIE_410007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_410007", action = "action_EVENT_ANY_GADGET_DIE_410007" }
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
		gadgets = { 410001, 410002, 410003, 410004, 410005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_410007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_410007(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133008410}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_410007(context, evt)
	-- 创建id为410006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 410006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
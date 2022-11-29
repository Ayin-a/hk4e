-- 基础信息
local base_info = {
	group_id = 133301193
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
	{ config_id = 193001, gadget_id = 70220065, pos = { x = -229.289, y = 247.652, z = 3342.625 }, rot = { x = 10.569, y = 335.252, z = 3.872 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193003, gadget_id = 70360001, pos = { x = -229.480, y = 237.569, z = 3342.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 29 },
	{ config_id = 193004, gadget_id = 70220065, pos = { x = -246.657, y = 246.118, z = 3353.626 }, rot = { x = 356.035, y = 247.489, z = 348.273 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193005, gadget_id = 70220065, pos = { x = -234.885, y = 247.680, z = 3341.894 }, rot = { x = 19.127, y = 329.823, z = 345.488 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193006, gadget_id = 70220065, pos = { x = -231.474, y = 247.541, z = 3351.055 }, rot = { x = 355.938, y = 2.241, z = 12.167 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193007, gadget_id = 70220065, pos = { x = -228.187, y = 249.175, z = 3336.953 }, rot = { x = 9.041, y = 321.467, z = 347.386 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193008, gadget_id = 70220067, pos = { x = -247.316, y = 246.147, z = 3355.102 }, rot = { x = 7.316, y = 219.918, z = 349.998 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193009, gadget_id = 70220065, pos = { x = -236.616, y = 246.036, z = 3349.329 }, rot = { x = 0.046, y = 92.917, z = 359.106 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193010, gadget_id = 70220065, pos = { x = -226.757, y = 248.278, z = 3340.831 }, rot = { x = 7.170, y = 359.520, z = 5.255 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193011, gadget_id = 70220065, pos = { x = -254.062, y = 246.054, z = 3356.914 }, rot = { x = 18.167, y = 26.493, z = 347.257 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193012, gadget_id = 70220065, pos = { x = -238.204, y = 245.955, z = 3350.627 }, rot = { x = 354.582, y = 38.998, z = 356.770 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 },
	{ config_id = 193013, gadget_id = 70220067, pos = { x = -236.449, y = 247.806, z = 3341.894 }, rot = { x = 351.505, y = 263.782, z = 340.353 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1193002, name = "ANY_GADGET_DIE_193002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_193002", action = "action_EVENT_ANY_GADGET_DIE_193002", trigger_count = 0 }
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
		gadgets = { 193001, 193003, 193004, 193005, 193006, 193007, 193008, 193009, 193010, 193011, 193012, 193013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_193002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_193002(context, evt)
	if 193001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_193002(context, evt)
	-- 将configid为 193003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 193003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
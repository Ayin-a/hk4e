-- 基础信息
local base_info = {
	group_id = 133305007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 21020301, pos = { x = -2400.478, y = 215.343, z = 4032.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 26 },
	{ config_id = 7002, monster_id = 21010101, pos = { x = -2401.682, y = 215.302, z = 4036.044 }, rot = { x = 0.000, y = 140.395, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 26 },
	{ config_id = 7003, monster_id = 21010201, pos = { x = -2395.225, y = 215.591, z = 4039.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 402, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7004, gadget_id = 70310004, pos = { x = -2400.335, y = 215.284, z = 4034.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 7005, gadget_id = 70300086, pos = { x = -2391.526, y = 215.500, z = 4022.892 }, rot = { x = 341.503, y = 66.584, z = 358.619 }, level = 32, area_id = 26 },
	{ config_id = 7006, gadget_id = 70300081, pos = { x = -2395.961, y = 215.209, z = 4043.144 }, rot = { x = 10.761, y = 271.192, z = 353.217 }, level = 32, area_id = 26 },
	{ config_id = 7007, gadget_id = 70300081, pos = { x = -2412.823, y = 218.944, z = 4037.208 }, rot = { x = 353.058, y = 190.087, z = 26.478 }, level = 32, area_id = 26 },
	{ config_id = 7008, gadget_id = 70300086, pos = { x = -2399.430, y = 215.724, z = 4018.290 }, rot = { x = 13.457, y = 65.590, z = 357.775 }, level = 32, area_id = 26 },
	{ config_id = 7009, gadget_id = 70220065, pos = { x = -2405.124, y = 216.397, z = 4026.005 }, rot = { x = 4.283, y = 359.377, z = 343.464 }, level = 32, area_id = 26 },
	{ config_id = 7010, gadget_id = 70220065, pos = { x = -2407.862, y = 217.315, z = 4028.039 }, rot = { x = 351.695, y = 329.621, z = 338.235 }, level = 32, area_id = 26 },
	{ config_id = 7011, gadget_id = 70220013, pos = { x = -2405.996, y = 216.528, z = 4028.043 }, rot = { x = 0.264, y = 346.117, z = 342.936 }, level = 32, area_id = 26 },
	{ config_id = 7012, gadget_id = 70220065, pos = { x = -2406.904, y = 217.320, z = 4025.424 }, rot = { x = 0.473, y = 17.897, z = 6.226 }, level = 32, area_id = 26 },
	{ config_id = 7013, gadget_id = 70300086, pos = { x = -2402.435, y = 215.265, z = 4040.624 }, rot = { x = 7.940, y = 36.265, z = 353.733 }, level = 32, area_id = 26 },
	{ config_id = 7014, gadget_id = 70300086, pos = { x = -2390.499, y = 216.958, z = 4039.952 }, rot = { x = 356.829, y = 34.850, z = 20.795 }, level = 32, area_id = 26 },
	{ config_id = 7015, gadget_id = 70211012, pos = { x = -2397.604, y = 215.425, z = 4036.369 }, rot = { x = 357.759, y = 161.756, z = 353.233 }, level = 26, chest_drop_id = 2004800, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007016, name = "ANY_MONSTER_DIE_7016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7016", action = "action_EVENT_ANY_MONSTER_DIE_7016" }
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
		monsters = { 7001, 7002, 7003 },
		gadgets = { 7004, 7005, 7006, 7007, 7008, 7009, 7010, 7011, 7012, 7013, 7014, 7015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_7016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7016(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7016(context, evt)
	-- 将configid为 7015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 7015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
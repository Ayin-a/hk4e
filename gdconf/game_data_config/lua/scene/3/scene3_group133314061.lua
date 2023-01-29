-- 基础信息
local base_info = {
	group_id = 133314061
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 61002, monster_id = 21020201, pos = { x = -342.120, y = 10.559, z = 4573.003 }, rot = { x = 0.000, y = 192.015, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 32 },
	{ config_id = 61003, monster_id = 21010201, pos = { x = -347.290, y = 10.504, z = 4570.118 }, rot = { x = 0.000, y = 241.194, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 32 },
	{ config_id = 61004, monster_id = 21010501, pos = { x = -350.614, y = 10.658, z = 4571.613 }, rot = { x = 0.000, y = 135.978, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 9012, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 61001, gadget_id = 70211002, pos = { x = -341.554, y = 10.482, z = 4569.440 }, rot = { x = 3.077, y = 192.209, z = 359.948 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 61005, gadget_id = 70300086, pos = { x = -346.212, y = 10.838, z = 4575.721 }, rot = { x = 5.228, y = 331.005, z = 4.685 }, level = 32, area_id = 32 },
	{ config_id = 61006, gadget_id = 70300086, pos = { x = -350.633, y = 10.876, z = 4573.480 }, rot = { x = 349.246, y = 8.727, z = 340.286 }, level = 32, area_id = 32 },
	{ config_id = 61007, gadget_id = 70220026, pos = { x = -339.175, y = 10.485, z = 4571.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 61008, gadget_id = 70220014, pos = { x = -337.871, y = 10.608, z = 4575.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 61009, gadget_id = 70220014, pos = { x = -338.968, y = 10.862, z = 4573.562 }, rot = { x = 0.000, y = 0.000, z = 275.490 }, level = 32, area_id = 32 },
	{ config_id = 61010, gadget_id = 70310004, pos = { x = -334.859, y = 9.097, z = 4571.195 }, rot = { x = 339.993, y = 3.818, z = 357.537 }, level = 32, area_id = 32 },
	{ config_id = 61011, gadget_id = 70220013, pos = { x = -341.282, y = 10.644, z = 4574.487 }, rot = { x = 348.846, y = 10.995, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061012, name = "ANY_MONSTER_DIE_61012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_61012", action = "action_EVENT_ANY_MONSTER_DIE_61012" }
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
		monsters = { 61002, 61003, 61004 },
		gadgets = { 61001, 61005, 61006, 61007, 61008, 61009, 61010, 61011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_61012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_61012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_61012(context, evt)
	-- 将configid为 61001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
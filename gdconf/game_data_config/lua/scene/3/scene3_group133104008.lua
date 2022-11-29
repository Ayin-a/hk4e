-- 基础信息
local base_info = {
	group_id = 133104008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 396, monster_id = 21010101, pos = { x = 777.054, y = 200.371, z = 142.134 }, rot = { x = 2.820, y = 113.081, z = 0.229 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 9 },
	{ config_id = 397, monster_id = 21010501, pos = { x = 771.169, y = 200.441, z = 146.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 398, monster_id = 21010501, pos = { x = 771.860, y = 200.887, z = 139.503 }, rot = { x = 0.130, y = 153.319, z = 0.015 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 399, monster_id = 21010501, pos = { x = 769.389, y = 200.447, z = 152.144 }, rot = { x = 0.000, y = 4.991, z = 0.000 }, level = 16, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 568, gadget_id = 70220014, pos = { x = 771.789, y = 200.211, z = 149.183 }, rot = { x = 5.356, y = 0.042, z = 0.895 }, level = 19, area_id = 9 },
	{ config_id = 569, gadget_id = 70220014, pos = { x = 772.063, y = 200.362, z = 147.223 }, rot = { x = 2.684, y = 0.021, z = 0.895 }, level = 19, area_id = 9 },
	{ config_id = 570, gadget_id = 70220014, pos = { x = 769.998, y = 200.331, z = 147.605 }, rot = { x = 5.356, y = 359.958, z = 359.105 }, level = 19, area_id = 9 },
	{ config_id = 571, gadget_id = 70220013, pos = { x = 764.605, y = 200.867, z = 136.089 }, rot = { x = 356.451, y = 0.294, z = 354.636 }, level = 19, area_id = 9 },
	{ config_id = 572, gadget_id = 70220013, pos = { x = 761.406, y = 201.026, z = 136.252 }, rot = { x = 359.105, y = 0.007, z = 359.105 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000004, name = "ANY_MONSTER_DIE_4", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4", action = "action_EVENT_ANY_MONSTER_DIE_4" }
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
		monsters = { 396, 397, 398, 399 },
		gadgets = { 568, 569, 570, 571, 572 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4(context, evt)
	-- 将configid为 4 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
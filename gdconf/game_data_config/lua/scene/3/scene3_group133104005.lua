-- 基础信息
local base_info = {
	group_id = 133104005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21011201, pos = { x = 664.640, y = 201.894, z = 472.956 }, rot = { x = 23.533, y = 227.011, z = 9.993 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 5002, monster_id = 21011201, pos = { x = 657.750, y = 201.459, z = 469.582 }, rot = { x = 3.683, y = 168.407, z = 0.157 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 5003, monster_id = 21030401, pos = { x = 654.982, y = 204.722, z = 480.683 }, rot = { x = 3.403, y = 131.818, z = 4.234 }, level = 19, drop_tag = "丘丘萨满", area_id = 9 },
	{ config_id = 5004, monster_id = 21020301, pos = { x = 661.451, y = 204.695, z = 485.238 }, rot = { x = 8.030, y = 178.128, z = 0.625 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5005, gadget_id = 70211022, pos = { x = 661.760, y = 205.607, z = 491.046 }, rot = { x = 0.000, y = 148.874, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 5006, gadget_id = 70220013, pos = { x = 667.052, y = 205.165, z = 487.481 }, rot = { x = 4.579, y = 244.713, z = 9.593 }, level = 19, area_id = 9 },
	{ config_id = 5007, gadget_id = 70220013, pos = { x = 668.666, y = 204.924, z = 485.616 }, rot = { x = 6.456, y = 245.337, z = 9.675 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000001, name = "ANY_MONSTER_DIE_1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_1", action = "action_EVENT_ANY_MONSTER_DIE_1" }
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
		monsters = { 5001, 5002, 5003, 5004 },
		gadgets = { 5005, 5006, 5007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_1" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_1(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 240007003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5, monster_id = 21020101, pos = { x = -2.514, y = 1.027, z = -39.912 }, rot = { x = 0.000, y = 357.366, z = 0.000 }, level = 1, pose_id = 401 },
	{ config_id = 6, monster_id = 21020201, pos = { x = -2.507, y = 1.042, z = -32.101 }, rot = { x = 0.000, y = 178.243, z = 0.000 }, level = 1, pose_id = 401 },
	{ config_id = 3001, monster_id = 21010501, pos = { x = -0.913, y = 1.001, z = -24.907 }, rot = { x = 0.000, y = 168.347, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3002, monster_id = 21011001, pos = { x = 12.893, y = 1.001, z = -26.479 }, rot = { x = 0.000, y = 244.138, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3003, monster_id = 21011001, pos = { x = -1.635, y = 1.032, z = -49.398 }, rot = { x = 0.000, y = 34.619, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14, gadget_id = 70350005, pos = { x = 3.965, y = 0.952, z = -20.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 22, gadget_id = 70211001, pos = { x = 13.633, y = 12.003, z = -53.450 }, rot = { x = 0.000, y = 358.527, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true },
	{ config_id = 48, gadget_id = 70211022, pos = { x = -2.288, y = 0.945, z = -36.133 }, rot = { x = 0.000, y = 89.003, z = 0.000 }, level = 11, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 50, gadget_id = 70220001, pos = { x = -4.592, y = 1.008, z = -42.523 }, rot = { x = 0.000, y = 246.855, z = 0.000 }, level = 1 },
	{ config_id = 51, gadget_id = 70220001, pos = { x = -2.353, y = 1.045, z = -33.734 }, rot = { x = 0.000, y = 180.079, z = 0.000 }, level = 1 },
	{ config_id = 52, gadget_id = 70220004, pos = { x = 15.332, y = 0.999, z = -44.565 }, rot = { x = 0.000, y = 349.295, z = 0.000 }, level = 1 },
	{ config_id = 53, gadget_id = 70220004, pos = { x = 0.399, y = 1.053, z = -46.587 }, rot = { x = 0.000, y = 69.549, z = 0.000 }, level = 1 },
	{ config_id = 54, gadget_id = 70220004, pos = { x = 4.126, y = 1.001, z = -31.510 }, rot = { x = 0.000, y = 80.179, z = 0.000 }, level = 1 },
	{ config_id = 55, gadget_id = 70220004, pos = { x = -8.956, y = 0.974, z = -43.580 }, rot = { x = 0.000, y = 321.606, z = 0.000 }, level = 1 },
	{ config_id = 56, gadget_id = 70220004, pos = { x = -10.758, y = 1.001, z = -29.264 }, rot = { x = 0.000, y = 130.842, z = 0.000 }, level = 1 },
	{ config_id = 57, gadget_id = 70220004, pos = { x = 8.101, y = 1.002, z = -23.841 }, rot = { x = 0.000, y = 279.359, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70350033, pos = { x = 4.951, y = 1.019, z = -40.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000012, name = "ANY_MONSTER_DIE_12", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12", action = "action_EVENT_ANY_MONSTER_DIE_12" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Key", value = 0, no_refresh = false }
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
	rand_suite = true
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
		monsters = { 5, 6, 3001, 3002, 3003 },
		gadgets = { 14, 22, 48, 50, 51, 52, 53, 54, 55, 56, 57, 3004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240007003) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12(context, evt)
	-- 将configid为 3004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 48 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 48, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
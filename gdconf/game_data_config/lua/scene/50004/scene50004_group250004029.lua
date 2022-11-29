-- 基础信息
local base_info = {
	group_id = 250004029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8, monster_id = 20010601, pos = { x = 255.107, y = -10.970, z = 104.040 }, rot = { x = 0.000, y = 177.448, z = 0.000 }, level = 10 },
	{ config_id = 9, monster_id = 20010601, pos = { x = 252.084, y = -10.970, z = 103.375 }, rot = { x = 0.000, y = 108.344, z = 0.000 }, level = 10 },
	{ config_id = 10, monster_id = 20010701, pos = { x = 253.106, y = -10.970, z = 106.371 }, rot = { x = 0.000, y = 260.993, z = 0.000 }, level = 10 },
	{ config_id = 11, monster_id = 21010901, pos = { x = 246.536, y = -8.738, z = 104.134 }, rot = { x = 0.000, y = 132.502, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 12, monster_id = 21010501, pos = { x = 263.241, y = -8.738, z = 104.123 }, rot = { x = 0.000, y = 218.540, z = 0.000 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 286, gadget_id = 70350004, pos = { x = 255.029, y = -11.243, z = 109.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 287, gadget_id = 70900207, pos = { x = 248.960, y = -11.294, z = 112.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 288, gadget_id = 70900207, pos = { x = 261.099, y = -11.583, z = 112.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 289, gadget_id = 70900208, pos = { x = 251.820, y = -11.244, z = 112.712 }, rot = { x = 0.000, y = 128.988, z = 0.000 }, level = 1 },
	{ config_id = 290, gadget_id = 70900208, pos = { x = 252.582, y = -11.244, z = 111.332 }, rot = { x = 0.000, y = 128.988, z = 0.000 }, level = 1 },
	{ config_id = 291, gadget_id = 70900208, pos = { x = 257.461, y = -11.259, z = 111.427 }, rot = { x = 0.000, y = 128.988, z = 0.000 }, level = 1 },
	{ config_id = 292, gadget_id = 70900208, pos = { x = 258.627, y = -11.204, z = 112.736 }, rot = { x = 0.000, y = 128.988, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000058, name = "ANY_MONSTER_DIE_58", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58", action = "action_EVENT_ANY_MONSTER_DIE_58" }
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
		monsters = { 11, 12 },
		gadgets = { 286, 287, 288, 289, 290, 291, 292 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 50004029) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58(context, evt)
	-- 将configid为 286 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 286, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
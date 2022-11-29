-- 基础信息
local base_info = {
	group_id = 133102483
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 483001, monster_id = 21010201, pos = { x = 1481.342, y = 219.964, z = 457.845 }, rot = { x = 0.000, y = 135.441, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 },
	{ config_id = 483004, monster_id = 21010101, pos = { x = 1483.526, y = 220.148, z = 460.524 }, rot = { x = 345.793, y = 100.318, z = 0.736 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 },
	{ config_id = 483005, monster_id = 21010101, pos = { x = 1478.086, y = 220.163, z = 456.421 }, rot = { x = 0.000, y = 216.454, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 5 },
	{ config_id = 483006, monster_id = 21010101, pos = { x = 1477.532, y = 219.900, z = 464.108 }, rot = { x = 0.000, y = 245.801, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 483002, gadget_id = 70211012, pos = { x = 1481.477, y = 225.711, z = 453.334 }, rot = { x = 354.731, y = 357.790, z = 21.450 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1483003, name = "ANY_MONSTER_DIE_483003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_483003", action = "action_EVENT_ANY_MONSTER_DIE_483003" }
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
		monsters = { 483001, 483004, 483005, 483006 },
		gadgets = { 483002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_483003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_483003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_483003(context, evt)
	-- 将configid为 483002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 483002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
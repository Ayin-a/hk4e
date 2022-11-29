-- 基础信息
local base_info = {
	group_id = 133102497
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 497001, monster_id = 21010201, pos = { x = 1359.638, y = 200.000, z = 715.445 }, rot = { x = 0.000, y = 49.162, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 497004, monster_id = 21010901, pos = { x = 1362.462, y = 200.753, z = 725.139 }, rot = { x = 0.000, y = 188.222, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 497005, monster_id = 21010901, pos = { x = 1372.985, y = 200.848, z = 705.798 }, rot = { x = 0.000, y = 262.560, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 497006, monster_id = 21010301, pos = { x = 1363.730, y = 200.035, z = 715.237 }, rot = { x = 0.000, y = 288.427, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 497002, gadget_id = 70211012, pos = { x = 1364.573, y = 200.012, z = 718.679 }, rot = { x = 0.000, y = 221.130, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 497007, gadget_id = 70220013, pos = { x = 1357.325, y = 200.037, z = 719.792 }, rot = { x = 358.313, y = 19.578, z = 359.400 }, level = 19, area_id = 5 },
	{ config_id = 497008, gadget_id = 70220013, pos = { x = 1357.245, y = 200.000, z = 716.922 }, rot = { x = 0.000, y = 338.773, z = 0.000 }, level = 19, area_id = 5 },
	{ config_id = 497009, gadget_id = 70310001, pos = { x = 1365.766, y = 200.114, z = 716.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 497010, gadget_id = 70310006, pos = { x = 1361.720, y = 200.000, z = 716.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 497011, gadget_id = 70310001, pos = { x = 1360.636, y = 200.000, z = 712.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1497003, name = "ANY_MONSTER_DIE_497003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_497003", action = "action_EVENT_ANY_MONSTER_DIE_497003" }
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
		monsters = { 497001, 497004, 497005, 497006 },
		gadgets = { 497002, 497007, 497008, 497009, 497010, 497011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_497003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_497003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_497003(context, evt)
	-- 将configid为 497002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 497002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
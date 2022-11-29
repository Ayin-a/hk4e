-- 基础信息
local base_info = {
	group_id = 133102498
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 498001, monster_id = 21010201, pos = { x = 1404.053, y = 200.533, z = 745.413 }, rot = { x = 0.000, y = 321.015, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 498004, monster_id = 21020301, pos = { x = 1399.755, y = 200.170, z = 746.522 }, rot = { x = 0.000, y = 77.034, z = 0.000 }, level = 18, drop_tag = "丘丘暴徒", disableWander = true, area_id = 5 },
	{ config_id = 498005, monster_id = 21011201, pos = { x = 1403.670, y = 200.027, z = 749.654 }, rot = { x = 0.000, y = 310.370, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 498002, gadget_id = 70211012, pos = { x = 1400.577, y = 200.499, z = 752.729 }, rot = { x = 0.445, y = 177.989, z = 358.056 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 },
	{ config_id = 498006, gadget_id = 70310006, pos = { x = 1402.345, y = 200.193, z = 746.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 498009, gadget_id = 70310001, pos = { x = 1404.448, y = 199.947, z = 751.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 },
	{ config_id = 498010, gadget_id = 70310001, pos = { x = 1408.043, y = 200.029, z = 751.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, state = GadgetState.GearStart, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1498003, name = "ANY_MONSTER_DIE_498003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_498003", action = "action_EVENT_ANY_MONSTER_DIE_498003" }
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
		monsters = { 498001, 498004, 498005 },
		gadgets = { 498002, 498006, 498009, 498010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_498003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_498003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_498003(context, evt)
	-- 将configid为 498002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 498002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
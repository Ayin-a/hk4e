-- 基础信息
local base_info = {
	group_id = 133105109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78, monster_id = 21011201, pos = { x = 833.949, y = 258.869, z = -323.679 }, rot = { x = 0.000, y = 325.348, z = 0.000 }, level = 25, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 79, monster_id = 21010201, pos = { x = 841.796, y = 260.453, z = -331.426 }, rot = { x = 0.000, y = 212.216, z = 0.000 }, level = 26, drop_tag = "丘丘人", pose_id = 9016, area_id = 9 },
	{ config_id = 80, monster_id = 21011001, pos = { x = 834.322, y = 260.002, z = -331.509 }, rot = { x = 0.000, y = 99.899, z = 0.000 }, level = 25, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 267, gadget_id = 70211012, pos = { x = 832.829, y = 260.026, z = -333.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 339, gadget_id = 70310001, pos = { x = 845.595, y = 260.741, z = -333.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, state = GadgetState.GearStart, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000156, name = "ANY_MONSTER_DIE_156", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_156", action = "action_EVENT_ANY_MONSTER_DIE_156" }
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
		monsters = { 78, 79, 80 },
		gadgets = { 267, 339 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_156" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_156(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_156(context, evt)
	-- 将configid为 267 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 267, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
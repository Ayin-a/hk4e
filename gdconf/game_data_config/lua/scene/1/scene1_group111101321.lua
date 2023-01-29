-- 基础信息
local base_info = {
	group_id = 111101321
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 321005, monster_id = 21011202, pos = { x = 2352.309, y = 284.388, z = -1785.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 321006, monster_id = 21011202, pos = { x = 2350.208, y = 284.404, z = -1783.747 }, rot = { x = 0.000, y = 29.262, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 321007, monster_id = 21011202, pos = { x = 2354.410, y = 284.454, z = -1786.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 321008, monster_id = 21011202, pos = { x = 2347.597, y = 284.261, z = -1781.278 }, rot = { x = 0.000, y = 44.561, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 321010, monster_id = 21020401, pos = { x = 2351.701, y = 284.370, z = -1785.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘岩盔王" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 321001, gadget_id = 70900039, pos = { x = 2353.099, y = 284.497, z = -1789.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 321002, gadget_id = 70900039, pos = { x = 2348.591, y = 284.803, z = -1786.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 321003, gadget_id = 70900039, pos = { x = 2343.681, y = 284.616, z = -1782.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true },
	{ config_id = 321011, gadget_id = 70211002, pos = { x = 2356.621, y = 284.400, z = -1789.607 }, rot = { x = 0.000, y = 327.879, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1321004, name = "GADGET_STATE_CHANGE_321004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_321004", action = "action_EVENT_GADGET_STATE_CHANGE_321004" },
	{ config_id = 1321009, name = "ANY_MONSTER_DIE_321009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_321009", action = "action_EVENT_ANY_MONSTER_DIE_321009" },
	{ config_id = 1321012, name = "ANY_MONSTER_DIE_321012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_321012", action = "action_EVENT_ANY_MONSTER_DIE_321012" }
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
		monsters = { },
		gadgets = { 321001, 321002, 321003, 321011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_321004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 321005, 321006, 321007, 321008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_321009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 321010 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_321012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_321004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101321, 321001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101321, 321002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101321, 321003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_321004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101321, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_321009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_321009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101321, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_321012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_321012(context, evt)
	-- 将configid为 321011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 321011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
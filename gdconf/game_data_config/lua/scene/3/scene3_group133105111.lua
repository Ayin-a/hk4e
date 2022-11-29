-- 基础信息
local base_info = {
	group_id = 133105111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105, monster_id = 21020201, pos = { x = 926.674, y = 245.911, z = -127.469 }, rot = { x = 0.000, y = 86.438, z = 0.000 }, level = 23, drop_tag = "丘丘暴徒", disableWander = true, isElite = true, area_id = 9 },
	{ config_id = 106, monster_id = 21011001, pos = { x = 922.430, y = 245.753, z = -125.426 }, rot = { x = 0.000, y = 112.959, z = 0.000 }, level = 23, drop_tag = "远程丘丘人", pose_id = 32, area_id = 9 },
	{ config_id = 107, monster_id = 21010201, pos = { x = 925.633, y = 245.986, z = -130.654 }, rot = { x = 0.000, y = 76.260, z = 0.000 }, level = 23, drop_tag = "丘丘人", pose_id = 9003, area_id = 9 },
	{ config_id = 108, monster_id = 21010201, pos = { x = 920.467, y = 245.399, z = -129.754 }, rot = { x = 0.000, y = 81.832, z = 0.000 }, level = 23, drop_tag = "丘丘人", disableWander = true, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 269, gadget_id = 70211012, pos = { x = 919.295, y = 245.877, z = -132.333 }, rot = { x = 0.000, y = 0.000, z = 8.096 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 275, gadget_id = 70310001, pos = { x = 922.026, y = 245.784, z = -131.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 276, gadget_id = 70310001, pos = { x = 918.949, y = 245.608, z = -125.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, state = GadgetState.GearStart, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000158, name = "ANY_MONSTER_DIE_158", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_158", action = "action_EVENT_ANY_MONSTER_DIE_158" },
	{ config_id = 1111001, name = "MONSTER_BATTLE_111001", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_111001", action = "action_EVENT_MONSTER_BATTLE_111001" }
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
		monsters = { 105 },
		gadgets = { 269, 275, 276 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_158", "MONSTER_BATTLE_111001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 106, 107, 108 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_158(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_158(context, evt)
	-- 将configid为 269 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 269, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_111001(context, evt)
	if 105 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_111001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105111, 2)
	
	return 0
end
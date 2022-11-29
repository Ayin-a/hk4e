-- 基础信息
local base_info = {
	group_id = 133104651
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 651001, monster_id = 23010501, pos = { x = 425.283, y = 215.031, z = 966.075 }, rot = { x = 0.000, y = 73.147, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 6 },
	{ config_id = 651004, monster_id = 23010201, pos = { x = 431.917, y = 215.490, z = 966.375 }, rot = { x = 0.000, y = 279.482, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 6 },
	{ config_id = 651005, monster_id = 23010101, pos = { x = 428.210, y = 214.969, z = 964.180 }, rot = { x = 0.000, y = 4.633, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 651002, gadget_id = 70211022, pos = { x = 430.145, y = 215.810, z = 968.195 }, rot = { x = 17.020, y = 179.461, z = 358.221 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 651006, gadget_id = 70310009, pos = { x = 427.982, y = 215.643, z = 967.801 }, rot = { x = 0.000, y = 12.204, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1651003, name = "ANY_MONSTER_DIE_651003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_651003", action = "action_EVENT_ANY_MONSTER_DIE_651003" },
	{ config_id = 1651007, name = "MONSTER_BATTLE_651007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_651007", action = "action_EVENT_MONSTER_BATTLE_651007" }
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
		monsters = { 651001 },
		gadgets = { 651002, 651006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_651003", "MONSTER_BATTLE_651007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 651004, 651005 },
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
function condition_EVENT_ANY_MONSTER_DIE_651003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_651003(context, evt)
	-- 将configid为 651002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 651002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_651007(context, evt)
	if 651001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_651007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104651, 2)
	
	return 0
end
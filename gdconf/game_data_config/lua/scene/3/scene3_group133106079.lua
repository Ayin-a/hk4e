-- 基础信息
local base_info = {
	group_id = 133106079
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79001, monster_id = 23010301, pos = { x = -539.378, y = 182.883, z = 1145.858 }, rot = { x = 0.000, y = 334.642, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 8 },
	{ config_id = 79002, monster_id = 23010601, pos = { x = -550.105, y = 181.881, z = 1143.329 }, rot = { x = 0.000, y = 98.482, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 8 },
	{ config_id = 79004, monster_id = 23010201, pos = { x = -540.066, y = 181.765, z = 1140.450 }, rot = { x = 0.000, y = 95.627, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79005, gadget_id = 70211002, pos = { x = -538.031, y = 181.530, z = 1139.015 }, rot = { x = 358.824, y = 292.922, z = 1.070 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 79006, gadget_id = 70310006, pos = { x = -540.752, y = 182.724, z = 1148.229 }, rot = { x = 0.128, y = 92.190, z = 356.417 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1079007, name = "ANY_MONSTER_DIE_79007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_79007", action = "action_EVENT_ANY_MONSTER_DIE_79007" },
	{ config_id = 1079008, name = "MONSTER_BATTLE_79008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_79008", action = "action_EVENT_MONSTER_BATTLE_79008" }
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
		monsters = { 79001 },
		gadgets = { 79005, 79006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_79007", "MONSTER_BATTLE_79008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 79002, 79004 },
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
function condition_EVENT_ANY_MONSTER_DIE_79007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_79007(context, evt)
	-- 将configid为 79005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_79008(context, evt)
	if 79001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_79008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106079, 2)
	
	return 0
end
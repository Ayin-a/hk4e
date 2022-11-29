-- 基础信息
local base_info = {
	group_id = 133104650
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 650001, monster_id = 23010301, pos = { x = 497.017, y = 223.894, z = 861.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 6 },
	{ config_id = 650004, monster_id = 23010101, pos = { x = 496.277, y = 224.079, z = 870.258 }, rot = { x = 0.000, y = 165.494, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 6 },
	{ config_id = 650006, monster_id = 23010601, pos = { x = 500.261, y = 224.269, z = 869.141 }, rot = { x = 0.000, y = 234.475, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 650002, gadget_id = 70211022, pos = { x = 499.102, y = 224.204, z = 866.066 }, rot = { x = 0.000, y = 264.416, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 650005, gadget_id = 70310006, pos = { x = 496.503, y = 223.983, z = 866.487 }, rot = { x = 0.000, y = 250.841, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1650003, name = "ANY_MONSTER_DIE_650003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_650003", action = "action_EVENT_ANY_MONSTER_DIE_650003" },
	{ config_id = 1650007, name = "MONSTER_BATTLE_650007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_650007", action = "action_EVENT_MONSTER_BATTLE_650007" }
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
		monsters = { 650004 },
		gadgets = { 650002, 650005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_650003", "MONSTER_BATTLE_650007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 650001, 650006 },
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
function condition_EVENT_ANY_MONSTER_DIE_650003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_650003(context, evt)
	-- 将configid为 650002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 650002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_650007(context, evt)
	if 650004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_650007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104650, 2)
	
	return 0
end
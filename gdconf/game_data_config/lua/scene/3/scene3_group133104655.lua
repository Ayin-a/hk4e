-- 基础信息
local base_info = {
	group_id = 133104655
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 655001, monster_id = 21020301, pos = { x = 293.477, y = 195.669, z = 863.526 }, rot = { x = 0.000, y = 139.490, z = 0.000 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 655004, monster_id = 21030201, pos = { x = 300.531, y = 195.957, z = 858.934 }, rot = { x = 0.000, y = 238.646, z = 0.000 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 655005, monster_id = 21010401, pos = { x = 310.712, y = 203.003, z = 858.347 }, rot = { x = 0.000, y = 275.436, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, oneoff_reset_version = 2, area_id = 6 },
	{ config_id = 655006, monster_id = 21010201, pos = { x = 303.597, y = 195.996, z = 858.523 }, rot = { x = 0.000, y = 238.646, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, isOneoff = true, pose_id = 9012, area_id = 6 },
	{ config_id = 655007, monster_id = 21010201, pos = { x = 301.594, y = 195.470, z = 861.701 }, rot = { x = 0.000, y = 238.646, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, isOneoff = true, pose_id = 9012, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 655002, gadget_id = 70211022, pos = { x = 287.778, y = 195.803, z = 857.536 }, rot = { x = 0.000, y = 43.186, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 655009, gadget_id = 70220035, pos = { x = 296.008, y = 196.059, z = 859.642 }, rot = { x = 0.000, y = 106.687, z = 0.000 }, level = 19, isOneoff = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1655003, name = "ANY_MONSTER_DIE_655003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_655003", action = "action_EVENT_ANY_MONSTER_DIE_655003" },
	{ config_id = 1655011, name = "MONSTER_BATTLE_655011", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_655011", action = "action_EVENT_MONSTER_BATTLE_655011" }
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
		monsters = { 655004, 655006, 655007 },
		gadgets = { 655002, 655009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_655003", "MONSTER_BATTLE_655011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 655001, 655005 },
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
function condition_EVENT_ANY_MONSTER_DIE_655003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_655003(context, evt)
	-- 将configid为 655002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 655002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_655011(context, evt)
	if 655004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_655011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104655, 2)
	
	return 0
end
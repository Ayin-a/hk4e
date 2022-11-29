-- 基础信息
local base_info = {
	group_id = 133106035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 21020101, pos = { x = -839.814, y = 183.074, z = 916.979 }, rot = { x = 0.000, y = 58.891, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 8 },
	{ config_id = 35004, monster_id = 21020201, pos = { x = -838.233, y = 183.074, z = 920.694 }, rot = { x = 0.000, y = 182.951, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 8 },
	{ config_id = 35006, monster_id = 21010401, pos = { x = -837.476, y = 187.783, z = 931.211 }, rot = { x = 0.000, y = 181.250, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 402, area_id = 8 },
	{ config_id = 35007, monster_id = 21011001, pos = { x = -841.372, y = 188.029, z = 931.476 }, rot = { x = 0.000, y = 191.835, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 32, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35002, gadget_id = 70211022, pos = { x = -842.393, y = 182.989, z = 927.441 }, rot = { x = 0.000, y = 192.284, z = 0.000 }, level = 26, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 35005, gadget_id = 70310004, pos = { x = -838.444, y = 183.074, z = 918.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1035003, name = "ANY_MONSTER_DIE_35003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_35003", action = "action_EVENT_ANY_MONSTER_DIE_35003" },
	{ config_id = 1035008, name = "MONSTER_BATTLE_35008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_35008", action = "action_EVENT_MONSTER_BATTLE_35008" }
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
		-- description = suite_1,
		monsters = { 35001, 35004 },
		gadgets = { 35002, 35005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_35003", "MONSTER_BATTLE_35008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 35006, 35007 },
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
function condition_EVENT_ANY_MONSTER_DIE_35003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_35003(context, evt)
	-- 将configid为 35002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 35002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_35008(context, evt)
	if 35004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_35008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106035, 2)
	
	return 0
end
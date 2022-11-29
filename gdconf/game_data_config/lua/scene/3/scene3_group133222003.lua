-- 基础信息
local base_info = {
	group_id = 133222003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 25010301, pos = { x = -4259.472, y = 200.007, z = -4490.113 }, rot = { x = 349.827, y = 31.123, z = 358.008 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 3004, monster_id = 25080201, pos = { x = -4242.728, y = 201.115, z = -4493.586 }, rot = { x = 0.000, y = 187.429, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1005, area_id = 14 },
	{ config_id = 3005, monster_id = 25010501, pos = { x = -4259.596, y = 200.172, z = -4505.060 }, rot = { x = 0.000, y = 229.940, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 14 },
	{ config_id = 3006, monster_id = 25080201, pos = { x = -4270.905, y = 200.391, z = -4485.619 }, rot = { x = 0.000, y = 126.737, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 14 },
	{ config_id = 3007, monster_id = 25080201, pos = { x = -4249.984, y = 200.710, z = -4504.611 }, rot = { x = 0.000, y = 259.365, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3002, gadget_id = 70211022, pos = { x = -4258.653, y = 205.204, z = -4483.148 }, rot = { x = 1.011, y = 205.028, z = 0.066 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "ANY_MONSTER_DIE_3003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3003", action = "action_EVENT_ANY_MONSTER_DIE_3003" },
	{ config_id = 1003008, name = "MONSTER_BATTLE_3008", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_3008" }
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
		monsters = { 3001, 3004, 3006 },
		gadgets = { 3002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3003", "MONSTER_BATTLE_3008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3005, 3007 },
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
function condition_EVENT_ANY_MONSTER_DIE_3003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3003(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_3008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133222003, 2)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133106045
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 25010201, pos = { x = -916.020, y = 234.322, z = 668.319 }, rot = { x = 0.000, y = 107.313, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 8 },
	{ config_id = 45005, monster_id = 25070101, pos = { x = -914.161, y = 234.322, z = 668.853 }, rot = { x = 0.000, y = 229.887, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 8 },
	{ config_id = 45007, monster_id = 25020201, pos = { x = -918.939, y = 236.961, z = 667.127 }, rot = { x = 0.000, y = 90.251, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45002, gadget_id = 70211002, pos = { x = -920.438, y = 236.974, z = 668.553 }, rot = { x = 358.936, y = 160.637, z = 0.031 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 45006, gadget_id = 70310004, pos = { x = -919.383, y = 236.961, z = 665.729 }, rot = { x = 0.576, y = 359.992, z = 358.347 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1045003, name = "ANY_MONSTER_DIE_45003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45003", action = "action_EVENT_ANY_MONSTER_DIE_45003" },
	{ config_id = 1045004, name = "MONSTER_BATTLE_45004", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_45004", action = "action_EVENT_MONSTER_BATTLE_45004" }
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
		monsters = { 45007 },
		gadgets = { 45002, 45006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_45003", "MONSTER_BATTLE_45004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 45001, 45005 },
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
function condition_EVENT_ANY_MONSTER_DIE_45003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45003(context, evt)
	-- 将configid为 45002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 45002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_45004(context, evt)
	if 45007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_45004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106045, 2)
	
	return 0
end
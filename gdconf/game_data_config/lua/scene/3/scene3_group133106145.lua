-- 基础信息
local base_info = {
	group_id = 133106145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145001, monster_id = 25030201, pos = { x = -502.593, y = 225.254, z = 794.010 }, rot = { x = 0.000, y = 305.463, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, area_id = 8 },
	{ config_id = 145002, monster_id = 25030301, pos = { x = -491.996, y = 225.233, z = 797.136 }, rot = { x = 0.000, y = 327.633, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, area_id = 8 },
	{ config_id = 145003, monster_id = 25010401, pos = { x = -483.028, y = 225.249, z = 795.268 }, rot = { x = 0.000, y = 3.535, z = 0.000 }, level = 28, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 145004, monster_id = 25060101, pos = { x = -493.650, y = 225.307, z = 787.547 }, rot = { x = 0.000, y = 117.918, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, area_id = 8 },
	{ config_id = 145005, monster_id = 25020201, pos = { x = -491.828, y = 227.302, z = 781.270 }, rot = { x = 0.000, y = 303.205, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, area_id = 8 },
	{ config_id = 145009, monster_id = 25010201, pos = { x = -488.798, y = 225.226, z = 804.488 }, rot = { x = 0.000, y = 155.152, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145006, gadget_id = 70211012, pos = { x = -485.096, y = 225.234, z = 788.111 }, rot = { x = 358.788, y = 327.278, z = 359.374 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 145007, gadget_id = 70310006, pos = { x = -503.703, y = 225.233, z = 794.695 }, rot = { x = 357.108, y = 92.705, z = 4.331 }, level = 24, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145008, name = "ANY_MONSTER_DIE_145008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145008", action = "action_EVENT_ANY_MONSTER_DIE_145008" },
	{ config_id = 1145010, name = "MONSTER_BATTLE_145010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_145010", action = "action_EVENT_MONSTER_BATTLE_145010" }
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
		monsters = { 145001, 145002, 145009 },
		gadgets = { 145006, 145007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_145008", "MONSTER_BATTLE_145010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 145003, 145004, 145005 },
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
function condition_EVENT_ANY_MONSTER_DIE_145008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145008(context, evt)
	-- 将configid为 145006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145006, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_145010(context, evt)
	if 145001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_145010(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106145, 3)
	
	return 0
end
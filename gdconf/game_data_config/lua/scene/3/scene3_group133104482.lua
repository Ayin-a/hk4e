-- 基础信息
local base_info = {
	group_id = 133104482
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 482001, monster_id = 21020301, pos = { x = 232.032, y = 238.086, z = 970.636 }, rot = { x = 343.474, y = 43.347, z = 350.776 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 482004, monster_id = 21030401, pos = { x = 232.195, y = 238.421, z = 976.353 }, rot = { x = 350.304, y = 32.928, z = 1.834 }, level = 19, drop_tag = "丘丘萨满", disableWander = true, area_id = 6 },
	{ config_id = 482005, monster_id = 21010301, pos = { x = 235.265, y = 238.348, z = 976.556 }, rot = { x = 359.547, y = 284.951, z = 18.858 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 482006, monster_id = 21010301, pos = { x = 235.771, y = 238.041, z = 971.490 }, rot = { x = 4.204, y = 271.202, z = 18.406 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 482002, gadget_id = 70211012, pos = { x = 231.326, y = 238.423, z = 973.419 }, rot = { x = 0.222, y = 359.857, z = 359.070 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 482007, gadget_id = 70220014, pos = { x = 236.752, y = 237.203, z = 967.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 },
	{ config_id = 482008, gadget_id = 70220014, pos = { x = 235.091, y = 237.308, z = 967.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1482003, name = "ANY_MONSTER_DIE_482003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_482003", action = "action_EVENT_ANY_MONSTER_DIE_482003" },
	{ config_id = 1482010, name = "MONSTER_BATTLE_482010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_482010", action = "action_EVENT_MONSTER_BATTLE_482010" }
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
		monsters = { 482001, 482004 },
		gadgets = { 482002, 482007, 482008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_482003", "MONSTER_BATTLE_482010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 482005, 482006 },
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
function condition_EVENT_ANY_MONSTER_DIE_482003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_482003(context, evt)
	-- 将configid为 482002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_482010(context, evt)
	if 482001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_482010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104482, 2)
	
	return 0
end
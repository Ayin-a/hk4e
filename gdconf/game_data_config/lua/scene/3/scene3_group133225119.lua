-- 基础信息
local base_info = {
	group_id = 133225119
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 119001, monster_id = 21020701, pos = { x = -6212.451, y = 242.923, z = -2700.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 119002, monster_id = 21011001, pos = { x = -6207.892, y = 241.140, z = -2706.035 }, rot = { x = 0.000, y = 138.082, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 119003, monster_id = 21011001, pos = { x = -6194.229, y = 242.678, z = -2701.261 }, rot = { x = 0.000, y = 40.832, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 119004, monster_id = 21011001, pos = { x = -6227.868, y = 250.358, z = -2730.636 }, rot = { x = 0.000, y = 181.057, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 32, climate_area_id = 7, area_id = 18 },
	{ config_id = 119005, monster_id = 22010401, pos = { x = -6211.477, y = 246.910, z = -2710.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "深渊法师", climate_area_id = 7, area_id = 18 },
	{ config_id = 119006, monster_id = 21010301, pos = { x = -6205.446, y = 240.126, z = -2704.596 }, rot = { x = 0.000, y = 205.989, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 119007, gadget_id = 70211022, pos = { x = -6219.604, y = 248.125, z = -2708.070 }, rot = { x = 0.000, y = 199.303, z = 0.000 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 119008, gadget_id = 70310004, pos = { x = -6212.158, y = 242.940, z = -2697.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 119011, gadget_id = 70300088, pos = { x = -6200.974, y = 238.929, z = -2713.550 }, rot = { x = 0.000, y = 232.084, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 119012, gadget_id = 70300088, pos = { x = -6198.403, y = 238.325, z = -2711.353 }, rot = { x = 358.387, y = 209.015, z = 356.218 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1119009, name = "ANY_MONSTER_DIE_119009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_119009", action = "action_EVENT_ANY_MONSTER_DIE_119009" },
	{ config_id = 1119010, name = "MONSTER_BATTLE_119010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_119010", action = "action_EVENT_MONSTER_BATTLE_119010" }
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
		monsters = { 119001, 119002, 119003, 119004, 119006 },
		gadgets = { 119007, 119008, 119011, 119012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_119009", "MONSTER_BATTLE_119010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 119005 },
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
function condition_EVENT_ANY_MONSTER_DIE_119009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_119009(context, evt)
	-- 将configid为 119007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 119007, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_119010(context, evt)
	if 119001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_119010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225119, 2)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133223164
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 21010301, pos = { x = -5810.800, y = 217.358, z = -2514.891 }, rot = { x = 0.000, y = 332.319, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 164004, monster_id = 21011001, pos = { x = -5816.167, y = 218.650, z = -2519.235 }, rot = { x = 0.000, y = 14.019, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 164006, monster_id = 21010301, pos = { x = -5823.577, y = 218.095, z = -2502.372 }, rot = { x = 0.000, y = 90.811, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 },
	{ config_id = 164008, monster_id = 21020101, pos = { x = -5817.405, y = 217.907, z = -2511.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 164009, monster_id = 21030601, pos = { x = -5819.169, y = 221.291, z = -2520.254 }, rot = { x = 0.000, y = 21.561, z = 0.000 }, level = 33, drop_tag = "丘丘萨满", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 164002, gadget_id = 70211002, pos = { x = -5812.504, y = 217.556, z = -2513.270 }, rot = { x = 0.000, y = 349.579, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 164005, gadget_id = 70220013, pos = { x = -5813.397, y = 217.331, z = -2516.117 }, rot = { x = 0.000, y = 18.838, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 164010, gadget_id = 70220026, pos = { x = -5811.983, y = 217.254, z = -2516.236 }, rot = { x = 0.000, y = 0.000, z = 349.147 }, level = 33, area_id = 18 },
	{ config_id = 164011, gadget_id = 70220026, pos = { x = -5817.641, y = 218.126, z = -2516.011 }, rot = { x = 0.000, y = 343.933, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 164012, gadget_id = 70310006, pos = { x = -5816.494, y = 217.897, z = -2509.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1164003, name = "ANY_MONSTER_DIE_164003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_164003", action = "action_EVENT_ANY_MONSTER_DIE_164003" },
	{ config_id = 1164007, name = "MONSTER_BATTLE_164007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_164007", action = "action_EVENT_MONSTER_BATTLE_164007" }
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
		monsters = { 164001, 164006, 164008 },
		gadgets = { 164002, 164005, 164010, 164011, 164012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_164003", "MONSTER_BATTLE_164007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 164004, 164009 },
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
function condition_EVENT_ANY_MONSTER_DIE_164003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_164003(context, evt)
	-- 将configid为 164002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164002, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_164007(context, evt)
	if 164008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_164007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133223164, 2)
	
	return 0
end
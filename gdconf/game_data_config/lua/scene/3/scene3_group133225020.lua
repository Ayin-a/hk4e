-- 基础信息
local base_info = {
	group_id = 133225020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 20001, monster_id = 21010301, pos = { x = -6339.844, y = 200.194, z = -2963.923 }, rot = { x = 0.000, y = 328.366, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 20002, monster_id = 21010301, pos = { x = -6344.667, y = 200.182, z = -2958.431 }, rot = { x = 0.000, y = 121.252, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9012, climate_area_id = 7, area_id = 18 },
	{ config_id = 20003, monster_id = 22010201, pos = { x = -6335.759, y = 201.548, z = -2958.226 }, rot = { x = 0.000, y = 112.467, z = 0.000 }, level = 33, drop_tag = "深渊法师", pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 20004, monster_id = 21020701, pos = { x = -6352.025, y = 200.569, z = -2948.607 }, rot = { x = 0.000, y = 115.571, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", climate_area_id = 7, area_id = 18 },
	{ config_id = 20005, monster_id = 21010701, pos = { x = -6351.041, y = 200.859, z = -2947.155 }, rot = { x = 0.000, y = 125.868, z = 0.000 }, level = 33, drop_tag = "丘丘人", climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 20006, gadget_id = 70211002, pos = { x = -6337.045, y = 200.708, z = -2964.651 }, rot = { x = 6.591, y = 309.578, z = 14.827 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 20007, gadget_id = 70300107, pos = { x = -6342.378, y = 200.192, z = -2960.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 20008, gadget_id = 70290159, pos = { x = -6334.154, y = 201.675, z = -2959.004 }, rot = { x = 350.359, y = 298.608, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1020009, name = "ANY_MONSTER_DIE_20009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_20009", action = "action_EVENT_ANY_MONSTER_DIE_20009" },
	{ config_id = 1020010, name = "MONSTER_BATTLE_20010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_20010", action = "action_EVENT_MONSTER_BATTLE_20010" }
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
		monsters = { 20001, 20002, 20003 },
		gadgets = { 20006, 20007, 20008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_20009", "MONSTER_BATTLE_20010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 20004, 20005 },
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
function condition_EVENT_ANY_MONSTER_DIE_20009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_20009(context, evt)
	-- 将configid为 20006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 20006, GadgetState.Default) then
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
function condition_EVENT_MONSTER_BATTLE_20010(context, evt)
	if 20003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_20010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225020, 2)
	
	return 0
end
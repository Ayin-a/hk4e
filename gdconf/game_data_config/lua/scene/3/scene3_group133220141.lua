-- 基础信息
local base_info = {
	group_id = 133220141
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 22010401, pos = { x = -2864.228, y = 200.274, z = -4275.860 }, rot = { x = 0.000, y = 198.083, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 11 },
	{ config_id = 141002, monster_id = 21010601, pos = { x = -2868.570, y = 200.106, z = -4278.830 }, rot = { x = 0.000, y = 83.268, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 141003, monster_id = 21030601, pos = { x = -2864.078, y = 200.253, z = -4277.291 }, rot = { x = 0.000, y = 228.018, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 11 },
	{ config_id = 141004, monster_id = 21010701, pos = { x = -2860.484, y = 200.162, z = -4280.193 }, rot = { x = 0.000, y = 282.450, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 141005, monster_id = 21011601, pos = { x = -2870.120, y = 200.000, z = -4284.194 }, rot = { x = 0.000, y = 13.899, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, area_id = 11 },
	{ config_id = 141011, monster_id = 21011001, pos = { x = -2860.225, y = 200.202, z = -4275.969 }, rot = { x = 0.000, y = 235.671, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 141006, gadget_id = 70300107, pos = { x = -2865.843, y = 200.211, z = -4278.650 }, rot = { x = 0.000, y = 323.700, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 141007, gadget_id = 70300089, pos = { x = -2870.692, y = 200.035, z = -4279.190 }, rot = { x = 10.602, y = 71.300, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 141008, gadget_id = 70300089, pos = { x = -2864.766, y = 200.075, z = -4283.998 }, rot = { x = 0.000, y = 329.200, z = 346.920 }, level = 1, area_id = 11 },
	{ config_id = 141009, gadget_id = 70300089, pos = { x = -2863.548, y = 200.197, z = -4274.341 }, rot = { x = 0.000, y = 329.200, z = 346.920 }, level = 1, area_id = 11 },
	{ config_id = 141012, gadget_id = 70300089, pos = { x = -2870.692, y = 200.035, z = -4279.190 }, rot = { x = 10.602, y = 71.300, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1141010, name = "MONSTER_BATTLE_141010", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_141010", action = "action_EVENT_MONSTER_BATTLE_141010" },
	{ config_id = 1141013, name = "ANY_MONSTER_DIE_141013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_141013", action = "action_EVENT_ANY_MONSTER_DIE_141013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isSpawn", value = 0, no_refresh = false }
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
		monsters = { 141001, 141002, 141003 },
		gadgets = { 141006, 141007, 141008, 141009, 141012 },
		regions = { },
		triggers = { "MONSTER_BATTLE_141010", "ANY_MONSTER_DIE_141013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 141004, 141005, 141011 },
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
function condition_EVENT_MONSTER_BATTLE_141010(context, evt)
	-- 判断变量"isSpawn"为0
	if ScriptLib.GetGroupVariableValue(context, "isSpawn") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_141010(context, evt)
	-- 将本组内变量名为 "isSpawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isSpawn", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220141, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_141013(context, evt)
	-- 判断变量"isSpawn"为0
	if ScriptLib.GetGroupVariableValue(context, "isSpawn") ~= 0 then
			return false
	end
	
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_141013(context, evt)
	-- 将本组内变量名为 "isSpawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isSpawn", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220141, 2)
	
	return 0
end
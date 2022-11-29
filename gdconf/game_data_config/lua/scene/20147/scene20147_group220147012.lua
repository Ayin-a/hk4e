-- 基础信息
local base_info = {
	group_id = 220147012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 26090401, pos = { x = 851.389, y = 76.679, z = 437.065 }, rot = { x = 0.000, y = 72.952, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 12002, monster_id = 26090201, pos = { x = 855.970, y = 76.653, z = 434.151 }, rot = { x = 0.000, y = 356.732, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 12003, monster_id = 26090201, pos = { x = 854.153, y = 76.867, z = 442.553 }, rot = { x = 0.000, y = 160.362, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 12004, monster_id = 26090801, pos = { x = 859.740, y = 76.399, z = 438.950 }, rot = { x = 0.000, y = 261.794, z = 0.000 }, level = 1, pose_id = 102 },
	{ config_id = 12005, monster_id = 26090501, pos = { x = 854.992, y = 76.794, z = 430.999 }, rot = { x = 0.000, y = 284.774, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 12006, monster_id = 26090501, pos = { x = 849.099, y = 76.280, z = 444.932 }, rot = { x = 0.000, y = 127.442, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012007, name = "MONSTER_BATTLE_12007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_12007", action = "action_EVENT_MONSTER_BATTLE_12007" },
	{ config_id = 1012008, name = "ANY_MONSTER_DIE_12008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12008", action = "action_EVENT_ANY_MONSTER_DIE_12008" },
	{ config_id = 1012009, name = "ANY_MONSTER_DIE_12009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12009", action = "action_EVENT_ANY_MONSTER_DIE_12009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "MonsterWave", value = 0, no_refresh = false }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_12007", "ANY_MONSTER_DIE_12009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 12001, 12002, 12003, 12004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 12005, 12006 },
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
function condition_EVENT_MONSTER_BATTLE_12007(context, evt)
	-- 判断变量"MonsterWave"为0
	if ScriptLib.GetGroupVariableValue(context, "MonsterWave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_12007(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147012, 3)
	
	-- 将本组内变量名为 "MonsterWave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"MonsterWave"为1
	if ScriptLib.GetGroupVariableValue(context, "MonsterWave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147011, 2)
	
	-- 针对当前group内变量名为 "MonsterWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12009(context, evt)
	-- 判断变量"MonsterWave"为0
	if ScriptLib.GetGroupVariableValue(context, "MonsterWave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220147012, 3)
	
	-- 将本组内变量名为 "MonsterWave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
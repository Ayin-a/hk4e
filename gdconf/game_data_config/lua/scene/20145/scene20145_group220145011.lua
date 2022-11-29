-- 基础信息
local base_info = {
	group_id = 220145011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 26120301, pos = { x = 485.944, y = 144.796, z = 414.356 }, rot = { x = 0.000, y = 347.379, z = 0.000 }, level = 1, pose_id = 101, title_id = 10125, special_name_id = 10177 },
	{ config_id = 11003, monster_id = 26090201, pos = { x = 477.895, y = 145.002, z = 413.175 }, rot = { x = 0.000, y = 24.420, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 11004, monster_id = 26090201, pos = { x = 492.506, y = 145.223, z = 418.023 }, rot = { x = 0.000, y = 299.257, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 11005, monster_id = 26090401, pos = { x = 490.463, y = 144.729, z = 429.395 }, rot = { x = 0.000, y = 208.010, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 },
	{ config_id = 11006, monster_id = 26090401, pos = { x = 474.099, y = 144.922, z = 422.945 }, rot = { x = 0.000, y = 100.912, z = 0.000 }, level = 1, disableWander = true, pose_id = 101 }
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
	{ config_id = 1011002, name = "MONSTER_BATTLE_11002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_11002", action = "action_EVENT_MONSTER_BATTLE_11002" },
	{ config_id = 1011007, name = "ANY_MONSTER_DIE_11007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11007", action = "action_EVENT_ANY_MONSTER_DIE_11007" },
	{ config_id = 1011008, name = "ANY_MONSTER_DIE_11008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11008", action = "action_EVENT_ANY_MONSTER_DIE_11008" }
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
		triggers = { "ANY_MONSTER_DIE_11007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 11001 },
		gadgets = { },
		regions = { },
		triggers = { "MONSTER_BATTLE_11002", "ANY_MONSTER_DIE_11008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 11003, 11004, 11005, 11006 },
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
function condition_EVENT_MONSTER_BATTLE_11002(context, evt)
	if 11001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_11002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145011, 3)
	
	-- 将本组内变量名为 "MonsterWave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11007(context, evt)
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
function action_EVENT_ANY_MONSTER_DIE_11007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145008, 2)
	
	-- 针对当前group内变量名为 "MonsterWave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11008(context, evt)
	-- 判断变量"MonsterWave"为0
	if ScriptLib.GetGroupVariableValue(context, "MonsterWave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220145011, 3)
	
	-- 将本组内变量名为 "MonsterWave" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "MonsterWave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
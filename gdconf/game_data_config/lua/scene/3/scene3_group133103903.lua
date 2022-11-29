-- 基础信息
local base_info = {
	group_id = 133103903
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 903001, monster_id = 25050101, pos = { x = 738.045, y = 317.081, z = 1518.291 }, rot = { x = 0.000, y = 77.500, z = 0.000 }, level = 26, drop_id = 1000100, ban_excel_drop = true, area_id = 6 },
	{ config_id = 903002, monster_id = 25050101, pos = { x = 741.844, y = 317.273, z = 1508.244 }, rot = { x = 0.000, y = 74.400, z = 0.000 }, level = 26, drop_id = 1000100, ban_excel_drop = true, area_id = 6 },
	{ config_id = 903003, monster_id = 25050101, pos = { x = 736.205, y = 317.097, z = 1508.655 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 26, drop_id = 1000100, ban_excel_drop = true, area_id = 6 },
	{ config_id = 903004, monster_id = 25050201, pos = { x = 743.222, y = 317.377, z = 1514.240 }, rot = { x = 0.000, y = 73.260, z = 0.000 }, level = 26, drop_id = 1000100, ban_excel_drop = true, area_id = 6 },
	{ config_id = 903005, monster_id = 25050101, pos = { x = 731.675, y = 316.355, z = 1515.349 }, rot = { x = 0.000, y = 77.200, z = 0.000 }, level = 26, drop_id = 1000100, ban_excel_drop = true, area_id = 6 },
	{ config_id = 903006, monster_id = 25050101, pos = { x = 737.989, y = 316.841, z = 1513.100 }, rot = { x = 0.000, y = 66.500, z = 0.000 }, level = 26, drop_id = 1000100, ban_excel_drop = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 903015, gadget_id = 70220014, pos = { x = 769.210, y = 310.388, z = 1524.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1903007, name = "ANY_MONSTER_DIE_903007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903007", action = "action_EVENT_ANY_MONSTER_DIE_903007", trigger_count = 0 },
	{ config_id = 1903008, name = "ANY_MONSTER_DIE_903008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903008", action = "action_EVENT_ANY_MONSTER_DIE_903008", trigger_count = 0 },
	{ config_id = 1903009, name = "ANY_MONSTER_DIE_903009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903009", action = "action_EVENT_ANY_MONSTER_DIE_903009", trigger_count = 0 },
	{ config_id = 1903010, name = "ANY_MONSTER_DIE_903010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903010", action = "action_EVENT_ANY_MONSTER_DIE_903010", trigger_count = 0 },
	{ config_id = 1903011, name = "ANY_MONSTER_DIE_903011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903011", action = "action_EVENT_ANY_MONSTER_DIE_903011", trigger_count = 0 },
	{ config_id = 1903012, name = "ANY_MONSTER_DIE_903012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_903012", action = "action_EVENT_ANY_MONSTER_DIE_903012", trigger_count = 0 },
	{ config_id = 1903013, name = "ANY_MONSTER_DIE_903013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_903013", trigger_count = 0 },
	{ config_id = 1903014, name = "ANY_MONSTER_LIVE_903014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_903014" }
}

-- 变量
variables = {
	{ config_id = 1, name = "MonsterCouter", value = 0, no_refresh = false }
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
		-- description = empty,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = quest,
		monsters = { 903001, 903002, 903003, 903004, 903005, 903006 },
		gadgets = { 903015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_903007", "ANY_MONSTER_DIE_903008", "ANY_MONSTER_DIE_903009", "ANY_MONSTER_DIE_903010", "ANY_MONSTER_DIE_903011", "ANY_MONSTER_DIE_903012", "ANY_MONSTER_DIE_903013", "ANY_MONSTER_LIVE_903014" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903007(context, evt)
	--判断死亡怪物的configid是否为 903001
	if evt.param1 ~= 903001 then
	    return false
	 end
	  
	
	-- 判断变量"MonsterCouter"不为14
	if ScriptLib.GetGroupVariableValue(context, "MonsterCouter") == 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903007(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 903001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "MonsterCouter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "MonsterCouter", 1, 133103903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903008(context, evt)
	--判断死亡怪物的configid是否为 903002
	if evt.param1 ~= 903002 then
	    return false
	 end
	  
	
	-- 判断变量"MonsterCouter"不为14
	if ScriptLib.GetGroupVariableValue(context, "MonsterCouter") == 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 903002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "MonsterCouter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "MonsterCouter", 1, 133103903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903009(context, evt)
	--判断死亡怪物的configid是否为 903003
	if evt.param1 ~= 903003 then
	    return false
	 end
	  
	
	-- 判断变量"MonsterCouter"不为14
	if ScriptLib.GetGroupVariableValue(context, "MonsterCouter") == 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 903003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "MonsterCouter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "MonsterCouter", 1, 133103903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903010(context, evt)
	--判断死亡怪物的configid是否为 903004
	if evt.param1 ~= 903004 then
	    return false
	 end
	  
	
	-- 判断变量"MonsterCouter"不为14
	if ScriptLib.GetGroupVariableValue(context, "MonsterCouter") == 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903010(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 903004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "MonsterCouter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "MonsterCouter", 1, 133103903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903011(context, evt)
	--判断死亡怪物的configid是否为 903005
	if evt.param1 ~= 903005 then
	    return false
	 end
	  
	
	-- 判断变量"MonsterCouter"不为14
	if ScriptLib.GetGroupVariableValue(context, "MonsterCouter") == 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903011(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 903005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "MonsterCouter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "MonsterCouter", 1, 133103903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_903012(context, evt)
	--判断死亡怪物的configid是否为 903006
	if evt.param1 ~= 903006 then
	    return false
	 end
	  
	
	-- 判断变量"MonsterCouter"不为14
	if ScriptLib.GetGroupVariableValue(context, "MonsterCouter") == 14 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903012(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 903006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 针对当前group内变量名为 "MonsterCouter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "MonsterCouter", 1, 133103903) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_903013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103903") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_903014(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为10000的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 10000, 133103903, 20, 0, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end
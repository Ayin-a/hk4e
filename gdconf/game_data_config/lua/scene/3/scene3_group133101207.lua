-- 基础信息
local base_info = {
	group_id = 133101207
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 207006, monster_id = 21010501, pos = { x = 991.368, y = 308.811, z = 1188.383 }, rot = { x = 0.000, y = 306.600, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 207007, monster_id = 21010601, pos = { x = 978.786, y = 307.272, z = 1186.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 207008, monster_id = 21030201, pos = { x = 984.251, y = 306.918, z = 1185.992 }, rot = { x = 0.000, y = 20.100, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 207009, monster_id = 21010701, pos = { x = 988.283, y = 300.354, z = 1197.054 }, rot = { x = 0.000, y = 184.960, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 207010, monster_id = 21020201, pos = { x = 983.779, y = 300.471, z = 1195.866 }, rot = { x = 0.000, y = 133.500, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 207001, gadget_id = 70300083, pos = { x = 989.112, y = 300.177, z = 1201.195 }, rot = { x = 0.000, y = 60.260, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 207002, gadget_id = 70300083, pos = { x = 990.916, y = 300.688, z = 1194.211 }, rot = { x = 356.359, y = 92.131, z = 8.554 }, level = 24, area_id = 6 },
	{ config_id = 207005, gadget_id = 70220020, pos = { x = 987.822, y = 300.643, z = 1194.672 }, rot = { x = 7.278, y = 335.247, z = 356.657 }, level = 24, area_id = 6 },
	{ config_id = 207013, gadget_id = 70220020, pos = { x = 985.208, y = 301.263, z = 1191.417 }, rot = { x = 5.203, y = 286.941, z = 343.420 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1207003, name = "ANY_GADGET_DIE_207003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_207003", trigger_count = 0 },
	{ config_id = 1207004, name = "ANY_MONSTER_DIE_207004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_207004", action = "action_EVENT_ANY_MONSTER_DIE_207004" },
	{ config_id = 1207011, name = "ANY_MONSTER_DIE_207011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_207011", action = "action_EVENT_ANY_MONSTER_DIE_207011" },
	{ config_id = 1207012, name = "VARIABLE_CHANGE_207012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_207012", action = "action_EVENT_VARIABLE_CHANGE_207012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
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
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 207006, 207007, 207008, 207009, 207010 },
		gadgets = { 207001, 207002, 207005, 207013 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_207003", "ANY_MONSTER_DIE_207004", "ANY_MONSTER_DIE_207011", "VARIABLE_CHANGE_207012" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_207003(context, evt)
	if 207001 == evt.param1 or 207002 == evt.param1 then
	
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Finish", 1) then
	  return -1
	end
	
	
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_207004(context, evt)
	--判断死亡怪物的configid是否为 207008
	if evt.param1 ~= 207008 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_207004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 207005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 207013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_207011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_207011(context, evt)
	-- 针对当前group内变量名为 "Finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_207012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Finish"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "Finish", 133101207) ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_207012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133101207") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
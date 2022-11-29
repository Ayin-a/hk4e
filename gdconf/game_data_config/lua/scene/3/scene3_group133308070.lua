-- 基础信息
local base_info = {
	group_id = 133308070
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70002, monster_id = 25020201, pos = { x = -2125.518, y = 312.139, z = 4224.937 }, rot = { x = 0.000, y = 270.213, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 26 },
	{ config_id = 70004, monster_id = 25030201, pos = { x = -2127.958, y = 312.643, z = 4220.526 }, rot = { x = 0.000, y = 284.663, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 26 },
	{ config_id = 70005, monster_id = 25070101, pos = { x = -2132.948, y = 314.218, z = 4218.302 }, rot = { x = 0.000, y = 346.153, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 26 },
	{ config_id = 70007, monster_id = 35210501, pos = { x = -2131.210, y = 313.805, z = 4223.117 }, rot = { x = 0.000, y = 132.786, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 26, isPartner = true },
	{ config_id = 70011, monster_id = 25010301, pos = { x = -2128.315, y = 313.086, z = 4226.755 }, rot = { x = 0.000, y = 214.307, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 26 }
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
	{ config_id = 1070006, name = "VARIABLE_CHANGE_70006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_70006", action = "action_EVENT_VARIABLE_CHANGE_70006", trigger_count = 0 },
	{ config_id = 1070008, name = "ANY_MONSTER_DIE_70008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70008", action = "action_EVENT_ANY_MONSTER_DIE_70008", trigger_count = 0 },
	{ config_id = 1070009, name = "ANY_MONSTER_DIE_70009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70009", action = "action_EVENT_ANY_MONSTER_DIE_70009", trigger_count = 0 },
	{ config_id = 1070010, name = "ANY_MONSTER_DIE_70010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70010", action = "action_EVENT_ANY_MONSTER_DIE_70010", trigger_count = 0 },
	{ config_id = 1070012, name = "ANY_MONSTER_DIE_70012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_70012", action = "action_EVENT_ANY_MONSTER_DIE_70012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Dienum", value = 0, no_refresh = false }
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
		monsters = { 70002, 70004, 70005, 70007, 70011 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_70006", "ANY_MONSTER_DIE_70008", "ANY_MONSTER_DIE_70009", "ANY_MONSTER_DIE_70010", "ANY_MONSTER_DIE_70012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_70006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Dienum"为4
	if ScriptLib.GetGroupVariableValue(context, "Dienum") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_70006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2304009") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133308070, EntityType.MONSTER, 70007)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70008(context, evt)
	if 70004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70008(context, evt)
	-- 针对当前group内变量名为 "Dienum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Dienum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70009(context, evt)
	if 70002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70009(context, evt)
	-- 针对当前group内变量名为 "Dienum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Dienum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70010(context, evt)
	if 70005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70010(context, evt)
	-- 针对当前group内变量名为 "Dienum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Dienum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_70012(context, evt)
	if 70011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_70012(context, evt)
	-- 针对当前group内变量名为 "Dienum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Dienum", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133212022
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 25090101, pos = { x = -3694.323, y = 200.000, z = -1762.844 }, rot = { x = 0.000, y = 336.199, z = 0.000 }, level = 27, disableWander = true, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 22003, gadget_id = 70500000, pos = { x = -3701.843, y = 199.526, z = -1738.960 }, rot = { x = 0.000, y = 305.433, z = 0.000 }, level = 27, point_type = 9172, isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 22013, gadget_id = 70710449, pos = { x = -3694.323, y = 200.000, z = -1762.844 }, rot = { x = 0.000, y = 336.199, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 22002, shape = RegionShape.SPHERE, radius = 90, pos = { x = -3696.385, y = 200.000, z = -1759.412 }, area_id = 13 },
	-- 播放reminder
	{ config_id = 22010, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3696.385, y = 200.000, z = -1759.412 }, area_id = 13 },
	-- 中途退出雨回复
	{ config_id = 22012, shape = RegionShape.SPHERE, radius = 30, pos = { x = -3696.385, y = 200.000, z = -1759.412 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1022002, name = "ENTER_REGION_22002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22002", action = "action_EVENT_ENTER_REGION_22002", trigger_count = 0 },
	{ config_id = 1022004, name = "ANY_MONSTER_DIE_22004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_22004", action = "action_EVENT_ANY_MONSTER_DIE_22004", trigger_count = 0 },
	-- 雨停
	{ config_id = 1022005, name = "VARIABLE_CHANGE_22005", event = EventType.EVENT_VARIABLE_CHANGE, source = "RainState", condition = "condition_EVENT_VARIABLE_CHANGE_22005", action = "action_EVENT_VARIABLE_CHANGE_22005", trigger_count = 0 },
	-- 发射器位置设置
	{ config_id = 1022006, name = "VARIABLE_CHANGE_22006", event = EventType.EVENT_VARIABLE_CHANGE, source = "RainState", condition = "condition_EVENT_VARIABLE_CHANGE_22006", action = "action_EVENT_VARIABLE_CHANGE_22006", trigger_count = 0 },
	{ config_id = 1022007, name = "SPECIFIC_MONSTER_HP_CHANGE_22007", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "22001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_22007", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_22007", trigger_count = 0, tag = "22001" },
	-- 雨倒流
	{ config_id = 1022008, name = "VARIABLE_CHANGE_22008", event = EventType.EVENT_VARIABLE_CHANGE, source = "RainState", condition = "condition_EVENT_VARIABLE_CHANGE_22008", action = "action_EVENT_VARIABLE_CHANGE_22008", trigger_count = 0 },
	{ config_id = 1022009, name = "SPECIFIC_MONSTER_HP_CHANGE_22009", event = EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE, source = "22001", condition = "condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_22009", action = "action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_22009", trigger_count = 0, tag = "22001" },
	-- 播放reminder
	{ config_id = 1022010, name = "ENTER_REGION_22010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_22010", action = "action_EVENT_ENTER_REGION_22010" },
	-- 中途退出雨回复
	{ config_id = 1022011, name = "GROUP_LOAD_22011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_22011", action = "action_EVENT_GROUP_LOAD_22011", trigger_count = 0 },
	-- 中途退出雨回复
	{ config_id = 1022012, name = "LEAVE_REGION_22012", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_22012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "RainState", value = 5, no_refresh = false },
	{ config_id = 2, name = "monster_die", value = 0, no_refresh = false }
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
		regions = { 22002, 22012 },
		triggers = { "ENTER_REGION_22002", "VARIABLE_CHANGE_22005", "VARIABLE_CHANGE_22006", "SPECIFIC_MONSTER_HP_CHANGE_22007", "VARIABLE_CHANGE_22008", "SPECIFIC_MONSTER_HP_CHANGE_22009", "GROUP_LOAD_22011", "LEAVE_REGION_22012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 22013 },
		regions = { 22002, 22010, 22012 },
		triggers = { "ENTER_REGION_22002", "VARIABLE_CHANGE_22005", "VARIABLE_CHANGE_22006", "SPECIFIC_MONSTER_HP_CHANGE_22007", "VARIABLE_CHANGE_22008", "SPECIFIC_MONSTER_HP_CHANGE_22009", "ENTER_REGION_22010", "GROUP_LOAD_22011", "LEAVE_REGION_22012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 22001 },
		gadgets = { },
		regions = { 22002, 22012 },
		triggers = { "ENTER_REGION_22002", "ANY_MONSTER_DIE_22004", "VARIABLE_CHANGE_22005", "VARIABLE_CHANGE_22006", "SPECIFIC_MONSTER_HP_CHANGE_22007", "VARIABLE_CHANGE_22008", "SPECIFIC_MONSTER_HP_CHANGE_22009", "GROUP_LOAD_22011", "LEAVE_REGION_22012" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 22003 },
		regions = { 22002, 22012 },
		triggers = { "ENTER_REGION_22002", "VARIABLE_CHANGE_22005", "VARIABLE_CHANGE_22006", "SPECIFIC_MONSTER_HP_CHANGE_22007", "VARIABLE_CHANGE_22008", "SPECIFIC_MONSTER_HP_CHANGE_22009", "GROUP_LOAD_22011", "LEAVE_REGION_22012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_22002(context, evt)
	if evt.param1 ~= 22002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7213201_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_22004(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133212022) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_22004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7213204_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212022, 4)
	
	-- 将本组内变量名为 "monster_die" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_die", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_22005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"RainState"为1
	if ScriptLib.GetGroupVariableValue(context, "RainState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_22005(context, evt)
	-- 设置气候特效偏移
	local floatParam={1,0,2}
	local intParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 2, "Eff_Weather_HeavyRainTBS_DqTBS", floatParam, intParam) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_22006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"RainState"为2
	if ScriptLib.GetGroupVariableValue(context, "RainState") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_22006(context, evt)
	-- 设置气候特效偏移
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 0, "Eff_Weather_HeavyRainTBS_DqTBS", {-3704.848,197.2667,-1744.457}, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_22007(context, evt)
	--[[判断指定configid的怪物的血量小于%72时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 72 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_22007(context, evt)
	-- 设置气候特效偏移
	local floatParam={1,0,15}
	local intParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 2, "Eff_Weather_HeavyRainTBS_DqTBS", floatParam, intParam) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_22008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"RainState"为3
	if ScriptLib.GetGroupVariableValue(context, "RainState") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_22008(context, evt)
	-- 设置气候特效偏移
	local ratioParam={-1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 3, "Eff_Weather_HeavyRainTBS_DqTBS", ratioParam, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local floatParam={0,1,2}
	local intParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 2, "Eff_Weather_HeavyRainTBS_DqTBS", floatParam, intParam) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SPECIFIC_MONSTER_HP_CHANGE_22009(context, evt)
	--[[判断指定configid的怪物的血量小于%10时触发指定后续操作]]--
	if evt.type ~= EventType.EVENT_SPECIFIC_MONSTER_HP_CHANGE or evt.param3 > 10 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SPECIFIC_MONSTER_HP_CHANGE_22009(context, evt)
	-- 设置气候特效偏移
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 0, "Eff_Weather_HeavyRainTBS_DqTBS", {0,-12,0}, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local ratioParam={-1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 3, "Eff_Weather_HeavyRainTBS_DqTBS", ratioParam, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local floatParam={0,1,20}
	local intParam={2}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 2, "Eff_Weather_HeavyRainTBS_DqTBS", floatParam, intParam) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_22010(context, evt)
	if evt.param1 ~= 22010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_22010(context, evt)
	-- 调用提示id为 321234021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321234021) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_22011(context, evt)
	-- 判断变量"monster_die"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "monster_die", 133212022) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_22011(context, evt)
	-- 设置气候特效偏移
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 4, "Eff_Weather_HeavyRainTBS_DqTBS", {-3698,210,-1756}, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local ratioParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 3, "Eff_Weather_HeavyRainTBS_DqTBS", ratioParam, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local floatParam={0,1,0.1}
	local intParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 2, "Eff_Weather_HeavyRainTBS_DqTBS", floatParam, intParam) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_22012(context, evt)
	-- 设置气候特效偏移
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 4, "Eff_Weather_HeavyRainTBS_DqTBS", {-3698,210,-1756}, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local floatParam={0,1,0.1}
	local intParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 2, "Eff_Weather_HeavyRainTBS_DqTBS", floatParam, intParam) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local ratioParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 3, "Eff_Weather_HeavyRainTBS_DqTBS", ratioParam, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	return 0
end
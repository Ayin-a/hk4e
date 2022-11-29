-- 基础信息
local base_info = {
	group_id = 133001568
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 568002, monster_id = 21020201, pos = { x = 1728.226, y = 234.299, z = -1148.651 }, rot = { x = 0.000, y = 21.252, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, pose_id = 401, area_id = 2 },
	{ config_id = 568006, monster_id = 21020201, pos = { x = 1728.286, y = 234.327, z = -1148.699 }, rot = { x = 0.000, y = 21.252, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1104, 1105 }, pose_id = 401, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 568001, shape = RegionShape.SPHERE, radius = 20, pos = { x = 1726.772, y = 233.820, z = -1147.020 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1568001, name = "ENTER_REGION_568001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_568001", action = "action_EVENT_ENTER_REGION_568001", trigger_count = 0 },
	{ config_id = 1568003, name = "ANY_MONSTER_DIE_568003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_568003", action = "action_EVENT_ANY_MONSTER_DIE_568003" },
	{ config_id = 1568004, name = "QUEST_START_568004", event = EventType.EVENT_QUEST_START, source = "1906604", condition = "condition_EVENT_QUEST_START_568004", action = "action_EVENT_QUEST_START_568004" },
	{ config_id = 1568005, name = "ANY_MONSTER_DIE_568005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_568005", action = "action_EVENT_ANY_MONSTER_DIE_568005" },
	{ config_id = 1568007, name = "ANY_MONSTER_DIE_568007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_568007", action = "action_EVENT_ANY_MONSTER_DIE_568007" },
	{ config_id = 1568008, name = "QUEST_FINISH_568008", event = EventType.EVENT_QUEST_FINISH, source = "1906604", condition = "", action = "action_EVENT_QUEST_FINISH_568008" },
	{ config_id = 1568009, name = "QUEST_FINISH_568009", event = EventType.EVENT_QUEST_FINISH, source = "1906604", condition = "", action = "action_EVENT_QUEST_FINISH_568009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "prekill", value = 0, no_refresh = false }
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
		monsters = { 568002 },
		gadgets = { },
		regions = { 568001 },
		triggers = { "ENTER_REGION_568001", "ANY_MONSTER_DIE_568003", "QUEST_START_568004", "ANY_MONSTER_DIE_568005", "QUEST_FINISH_568009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 568006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_568007", "QUEST_FINISH_568008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_568001(context, evt)
	if evt.param1 ~= 568001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_568001(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1696,y=233,z=-1170}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021123, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015681") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_568003(context, evt)
	if 568002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_568003(context, evt)
	-- 针对当前group内变量名为 "prekill" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "prekill", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_568004(context, evt)
	-- 判断变量"prekill"为1
	if ScriptLib.GetGroupVariableValue(context, "prekill") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_568004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001568, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_568005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_568005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015682") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_568007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_568007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330015682") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_568008(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1725,y=233,z=-1148}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021127, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001568, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_568009(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1725,y=233,z=-1148}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 31021127, pos, 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001568, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
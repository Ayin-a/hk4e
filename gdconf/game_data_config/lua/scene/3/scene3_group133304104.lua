-- 基础信息
local base_info = {
	group_id = 133304104
}

-- Trigger变量
local defs = {
	lensRegion = 104007
}

-- DEFS_MISCS
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 104001,   
lnlConfigId = 104004, 

    resetParam = "rewindSmoke_73089",

    hiddenlnlParam = "hiddenlnl_73089",

    -- 一个smoke对应一个quest
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, region = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务定义的进度名"}
        [104002] = {smoke = 104002, minRegion = 1, maxRegion = 104005, group = 133304133, observeQuest = 7308903, finishQuest = 7308904, questParam = "smokeObserved1_73089", },
        [104003] = {smoke = 104003, minRegion = 3, maxRegion = 104006, group = 133304134, observeQuest = 7308905, finishQuest = 7308906, questParam = "smokeObserved2_73089", },
    }
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[104001] = { config_id = 104001, gadget_id = 70330230, pos = { x = -1121.542, y = 290.411, z = 3045.297 }, rot = { x = 0.000, y = 178.368, z = 0.000 }, level = 30, area_id = 23 },
	[104002] = { config_id = 104002, gadget_id = 70310219, pos = { x = -1206.301, y = 280.807, z = 2847.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[104003] = { config_id = 104003, gadget_id = 70310219, pos = { x = -1046.922, y = 284.369, z = 2961.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[104004] = { config_id = 104004, gadget_id = 70310440, pos = { x = -1069.869, y = 267.224, z = 3032.430 }, rot = { x = 0.000, y = 278.137, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	[104005] = { config_id = 104005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1202.643, y = 280.807, z = 2877.298 }, area_id = 21 },
	[104006] = { config_id = 104006, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1046.922, y = 284.369, z = 2961.586 }, area_id = 23 },
	-- 触发任务
	[104007] = { config_id = 104007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1121.594, y = 290.411, z = 3045.683 }, area_id = 23 },
	-- 触发G
	[104012] = { config_id = 104012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -1121.594, y = 292.911, z = 3045.683 }, area_id = 23 }
}

-- 触发器
triggers = {
	-- 触发任务
	{ config_id = 1104007, name = "ENTER_REGION_104007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1104008, name = "VARIABLE_CHANGE_104008", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_104002", condition = "condition_EVENT_VARIABLE_CHANGE_104008", action = "action_EVENT_VARIABLE_CHANGE_104008", trigger_count = 0 },
	{ config_id = 1104009, name = "VARIABLE_CHANGE_104009", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_104003", condition = "condition_EVENT_VARIABLE_CHANGE_104009", action = "action_EVENT_VARIABLE_CHANGE_104009", trigger_count = 0 },
	{ config_id = 1104010, name = "GADGET_STATE_CHANGE_104010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104010", action = "action_EVENT_GADGET_STATE_CHANGE_104010", trigger_count = 0 },
	-- 通知勾爪group可以存活
	{ config_id = 1104011, name = "VARIABLE_CHANGE_104011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_104011", action = "action_EVENT_VARIABLE_CHANGE_104011" },
	-- 触发G
	{ config_id = 1104012, name = "ENTER_REGION_104012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_104012", action = "action_EVENT_ENTER_REGION_104012", trigger_count = 0 }
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
		monsters = { },
		gadgets = { 104001, 104004 },
		regions = { 104005, 104006, 104007, 104012 },
		triggers = { "ENTER_REGION_104007", "VARIABLE_CHANGE_104008", "VARIABLE_CHANGE_104009", "GADGET_STATE_CHANGE_104010", "VARIABLE_CHANGE_104011", "ENTER_REGION_104012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_104002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_104002") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104008(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_104003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_104003") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104009(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 104001 ~= evt.param2 then
		return false
	end
	if 2<1 or 2>3 then
	  return false
	end
	if 2 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 2 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 2 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	if ScriptLib.GetHostQuestState(context,7308901) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104010(context, evt)
	-- 调用提示id为 33040006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_104011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_104002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_104002") == 1 then
			return true
	end
	
	-- 判断变量"smoke_104003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_104003") == 1 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_104011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304054, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_104012(context, evt)
	if evt.param1 ~= 104012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_104012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/DeathZoneObservation"
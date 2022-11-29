-- 基础信息
local base_info = {
	group_id = 133304103
}

-- Trigger变量
local defs = {
	lensRegion = 103009
}

-- DEFS_MISCS
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 103001,    

    lnlConfigId = 103004,

    resetParam = "rewindSmoke_73051",

    hiddenlnlParam = "hiddenlnl_73051",

    -- 一个smoke对应一个quest
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, region = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务定义的进度名"}
        [103002] = {smoke = 103002, minRegion = 1, maxRegion = 103005, group = 133304105, observeQuest = 7305103, finishQuest = 7305104, questParam = "smokeObserved1_73051", },
        [103003] = {smoke = 103003, minRegion = 3, maxRegion = 103006, group = 133304106, observeQuest = 7305105, finishQuest = 7305106, questParam = "smokeObserved2_73051", },
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
	[103001] = { config_id = 103001, gadget_id = 70330230, pos = { x = -1198.020, y = 297.614, z = 2530.945 }, rot = { x = 0.000, y = 263.076, z = 0.000 }, level = 30, area_id = 21 },
	[103002] = { config_id = 103002, gadget_id = 70310219, pos = { x = -1367.235, y = 256.025, z = 2742.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[103003] = { config_id = 103003, gadget_id = 70310219, pos = { x = -1236.269, y = 275.490, z = 2736.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	[103004] = { config_id = 103004, gadget_id = 70310440, pos = { x = -1203.500, y = 289.119, z = 2505.813 }, rot = { x = 0.000, y = 210.660, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	[103005] = { config_id = 103005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1367.235, y = 256.025, z = 2742.275 }, area_id = 21 },
	[103006] = { config_id = 103006, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1238.549, y = 275.490, z = 2686.373 }, area_id = 21 },
	-- 触发任务
	[103009] = { config_id = 103009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1198.020, y = 297.614, z = 2530.945 }, area_id = 21 },
	-- G键触发
	[103012] = { config_id = 103012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -1198.020, y = 300.114, z = 2530.945 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1103007, name = "VARIABLE_CHANGE_103007", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_103002", condition = "condition_EVENT_VARIABLE_CHANGE_103007", action = "action_EVENT_VARIABLE_CHANGE_103007", trigger_count = 0 },
	{ config_id = 1103008, name = "VARIABLE_CHANGE_103008", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_103003", condition = "condition_EVENT_VARIABLE_CHANGE_103008", action = "action_EVENT_VARIABLE_CHANGE_103008", trigger_count = 0 },
	-- 触发任务
	{ config_id = 1103009, name = "ENTER_REGION_103009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	{ config_id = 1103010, name = "GADGET_STATE_CHANGE_103010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_103010", action = "action_EVENT_GADGET_STATE_CHANGE_103010", trigger_count = 0 },
	-- 通知勾爪group可以存活
	{ config_id = 1103011, name = "VARIABLE_CHANGE_103011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_103011", action = "action_EVENT_VARIABLE_CHANGE_103011" },
	-- G键触发
	{ config_id = 1103012, name = "ENTER_REGION_103012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_103012", action = "action_EVENT_ENTER_REGION_103012", trigger_count = 0 }
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
		gadgets = { 103001, 103004 },
		regions = { 103005, 103006, 103009, 103012 },
		triggers = { "VARIABLE_CHANGE_103007", "VARIABLE_CHANGE_103008", "ENTER_REGION_103009", "GADGET_STATE_CHANGE_103010", "VARIABLE_CHANGE_103011", "ENTER_REGION_103012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_103007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_103002") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_103007(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_103008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_103003") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_103008(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_103010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 103001 ~= evt.param2 then
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
	
	if ScriptLib.GetHostQuestState(context,7305101) ~= 2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_103010(context, evt)
	-- 调用提示id为 33040006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_103011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_103002") == 1 then
			return true
	end
	
	-- 判断变量"smoke_103003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_103003") == 1 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_103011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304218, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_103012(context, evt)
	if evt.param1 ~= 103012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_103012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/DeathZoneObservation"
require "V3_0/DeathFieldStandard"
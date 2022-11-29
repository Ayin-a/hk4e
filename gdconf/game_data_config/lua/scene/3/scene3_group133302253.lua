-- 基础信息
local base_info = {
	group_id = 133302253
}

-- Trigger变量
local defs = {
	gadget_smoke1 = 253002,
	gadget_smoke2 = 253003,
	fquestid = 73116,
	lensRegion = 253011
}

-- DEFS_MISCS
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 253001,    

    lnlConfigId = 253004,

    resetParam = "rewindSmoke_"..tostring(defs.fquestid),

    hiddenlnlParam = "hiddenlnl_"..tostring(defs.fquestid),

    -- 一个smoke对应一个quest
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, region = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务定义的进度名"}
        [253002] = {smoke = 253002, minRegion = 1, maxRegion = 253005, group = 133302255, observeQuest = 7311603, finishQuest = 7311604, questParam = "smokeObserved1_73116", },
        [253003] = {smoke = 253003, minRegion = 3, maxRegion = 253006, group = 133302256, observeQuest = 7311605, finishQuest = 7311606, questParam = "smokeObserved2_73116", },
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
	[253001] = { config_id = 253001, gadget_id = 70330230, pos = { x = 306.250, y = 420.761, z = 2461.140 }, rot = { x = 0.000, y = 274.856, z = 0.000 }, level = 27, area_id = 20 },
	[253002] = { config_id = 253002, gadget_id = 70310219, pos = { x = 141.611, y = 344.615, z = 2161.974 }, rot = { x = 0.000, y = 309.955, z = 0.000 }, level = 27, area_id = 20 },
	[253003] = { config_id = 253003, gadget_id = 70310219, pos = { x = 19.207, y = 306.418, z = 2289.793 }, rot = { x = 4.154, y = 317.998, z = 7.557 }, level = 27, area_id = 20 },
	[253004] = { config_id = 253004, gadget_id = 70310440, pos = { x = 310.291, y = 421.538, z = 2464.385 }, rot = { x = 0.000, y = 128.797, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
	[253005] = { config_id = 253005, shape = RegionShape.SPHERE, radius = 100, pos = { x = 141.611, y = 344.615, z = 2161.974 }, area_id = 20 },
	[253006] = { config_id = 253006, shape = RegionShape.SPHERE, radius = 100, pos = { x = 19.207, y = 306.418, z = 2289.793 }, area_id = 20 },
	-- 接取任务
	[253011] = { config_id = 253011, shape = RegionShape.SPHERE, radius = 5, pos = { x = 306.008, y = 420.761, z = 2461.262 }, area_id = 20 },
	-- G键触发
	[253012] = { config_id = 253012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = 306.250, y = 423.261, z = 2461.140 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1253007, name = "VARIABLE_CHANGE_253007", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_253002", condition = "condition_EVENT_VARIABLE_CHANGE_253007", action = "action_EVENT_VARIABLE_CHANGE_253007", trigger_count = 0 },
	{ config_id = 1253008, name = "VARIABLE_CHANGE_253008", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_253003", condition = "condition_EVENT_VARIABLE_CHANGE_253008", action = "action_EVENT_VARIABLE_CHANGE_253008", trigger_count = 0 },
	{ config_id = 1253009, name = "GADGET_STATE_CHANGE_253009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_253009", action = "action_EVENT_GADGET_STATE_CHANGE_253009", trigger_count = 0 },
	-- 通知钩爪
	{ config_id = 1253010, name = "VARIABLE_CHANGE_253010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_253010", action = "action_EVENT_VARIABLE_CHANGE_253010" },
	-- 接取任务
	{ config_id = 1253011, name = "ENTER_REGION_253011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- G键触发
	{ config_id = 1253012, name = "ENTER_REGION_253012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253012", action = "action_EVENT_ENTER_REGION_253012", trigger_count = 0 }
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
		gadgets = { 253001, 253004 },
		regions = { 253005, 253006, 253011, 253012 },
		triggers = { "VARIABLE_CHANGE_253007", "VARIABLE_CHANGE_253008", "GADGET_STATE_CHANGE_253009", "VARIABLE_CHANGE_253010", "ENTER_REGION_253011", "ENTER_REGION_253012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_253007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke1)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_253007(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_253008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke2)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_253008(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_253009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 253001 ~= evt.param2 then
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
	
	if ScriptLib.GetHostQuestState(context, defs.fquestid*100+1) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_253009(context, evt)
	-- 调用提示id为 33040006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_253010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_104002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke1)) == 1 then
			return true
	end
	
	-- 判断变量"smoke_104003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke2)) == 1 then
			return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_253010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302625, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_253012(context, evt)
	if evt.param1 ~= 253012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_253012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/DeathZoneObservation"
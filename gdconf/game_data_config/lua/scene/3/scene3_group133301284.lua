-- 基础信息
local base_info = {
	group_id = 133301284
}

-- Trigger变量
local defs = {
	gadget_smoke1 = 284002,
	gadget_smoke2 = 284003,
	fquestid = 73113,
	lensRegion = 284011
}

-- DEFS_MISCS
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 284001,    

    lnlConfigId = 284004,

    resetParam = "rewindSmoke_"..tostring(defs.fquestid),

    hiddenlnlParam = "hiddenlnl_"..tostring(defs.fquestid),

    -- 一个smoke对应一个quest
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, region = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务定义的进度名"}
        [284002] = {smoke = 284002, minRegion = 1, maxRegion = 284005, group = 133301285, observeQuest = 7311303, finishQuest = 7311304, questParam = "smokeObserved1_73113", },
        [284003] = {smoke = 284003, minRegion = 3, maxRegion = 284006, group = 133301286, observeQuest = 7311305, finishQuest = 7311306, questParam = "smokeObserved2_73113", },
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
	[284001] = { config_id = 284001, gadget_id = 70330230, pos = { x = -949.981, y = 411.422, z = 3187.820 }, rot = { x = 0.000, y = 49.318, z = 0.000 }, level = 30, area_id = 23 },
	[284002] = { config_id = 284002, gadget_id = 70310219, pos = { x = -738.193, y = 301.831, z = 3271.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[284003] = { config_id = 284003, gadget_id = 70310219, pos = { x = -907.079, y = 335.809, z = 3351.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[284004] = { config_id = 284004, gadget_id = 70310440, pos = { x = -932.266, y = 386.044, z = 3222.740 }, rot = { x = 0.000, y = 244.127, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	[284005] = { config_id = 284005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -739.118, y = 299.836, z = 3271.094 }, area_id = 23 },
	[284006] = { config_id = 284006, shape = RegionShape.SPHERE, radius = 100, pos = { x = -907.581, y = 333.908, z = 3350.616 }, area_id = 23 },
	-- 接取任务
	[284011] = { config_id = 284011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -949.981, y = 411.422, z = 3187.820 }, area_id = 23 },
	-- G键触发
	[284012] = { config_id = 284012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -949.981, y = 413.411, z = 3187.820 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1284007, name = "VARIABLE_CHANGE_284007", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_284002", condition = "condition_EVENT_VARIABLE_CHANGE_284007", action = "action_EVENT_VARIABLE_CHANGE_284007", trigger_count = 0 },
	{ config_id = 1284008, name = "VARIABLE_CHANGE_284008", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_284003", condition = "condition_EVENT_VARIABLE_CHANGE_284008", action = "action_EVENT_VARIABLE_CHANGE_284008", trigger_count = 0 },
	{ config_id = 1284009, name = "GADGET_STATE_CHANGE_284009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284009", action = "action_EVENT_GADGET_STATE_CHANGE_284009", trigger_count = 0 },
	-- 通知勾爪group可以存活
	{ config_id = 1284010, name = "VARIABLE_CHANGE_284010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_284010", action = "action_EVENT_VARIABLE_CHANGE_284010" },
	-- 接取任务
	{ config_id = 1284011, name = "ENTER_REGION_284011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- G键触发
	{ config_id = 1284012, name = "ENTER_REGION_284012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_284012", action = "action_EVENT_ENTER_REGION_284012", trigger_count = 0 }
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
		gadgets = { 284001, 284004 },
		regions = { 284005, 284006, 284011, 284012 },
		triggers = { "VARIABLE_CHANGE_284007", "VARIABLE_CHANGE_284008", "GADGET_STATE_CHANGE_284009", "VARIABLE_CHANGE_284010", "ENTER_REGION_284011", "ENTER_REGION_284012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_284007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke1)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_284007(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_284008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke2)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_284008(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 284001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_284009(context, evt)
	-- 调用提示id为 33040006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_284010(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_284010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301635, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_284012(context, evt)
	if evt.param1 ~= 284012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_284012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/DeathZoneObservation"
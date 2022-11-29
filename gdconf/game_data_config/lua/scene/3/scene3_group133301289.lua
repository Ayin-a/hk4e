-- 基础信息
local base_info = {
	group_id = 133301289
}

-- Trigger变量
local defs = {
	gadget_smoke1 = 289002,
	gadget_smoke2 = 289003,
	fquestid = 73114,
	lensRegion = 289011
}

-- DEFS_MISCS
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 289001,    

    lnlConfigId = 289004,

    resetParam = "rewindSmoke_"..tostring(defs.fquestid),

    hiddenlnlParam = "hiddenlnl_"..tostring(defs.fquestid),

    -- 一个smoke对应一个quest
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, region = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务定义的进度名"}
        [289002] = {smoke = 289002, minRegion = 1, maxRegion = 289005, group = 133301290, observeQuest = 7311403, finishQuest = 7311404, questParam = "smokeObserved1_73114", },
        [289003] = {smoke = 289003, minRegion = 3, maxRegion = 289006, group = 133301291, observeQuest = 7311405, finishQuest = 7311406, questParam = "smokeObserved2_73114", },
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
	[289001] = { config_id = 289001, gadget_id = 70330230, pos = { x = -1009.221, y = 291.631, z = 3808.029 }, rot = { x = 0.000, y = 169.239, z = 0.000 }, level = 30, area_id = 23 },
	[289002] = { config_id = 289002, gadget_id = 70310219, pos = { x = -820.075, y = 240.469, z = 3567.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[289003] = { config_id = 289003, gadget_id = 70310219, pos = { x = -794.326, y = 184.076, z = 3723.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[289004] = { config_id = 289004, gadget_id = 70310440, pos = { x = -1009.478, y = 291.897, z = 3809.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	[289005] = { config_id = 289005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -820.075, y = 240.469, z = 3567.083 }, area_id = 23 },
	[289006] = { config_id = 289006, shape = RegionShape.SPHERE, radius = 100, pos = { x = -794.326, y = 184.076, z = 3723.790 }, area_id = 23 },
	-- 接取任务
	[289011] = { config_id = 289011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1009.221, y = 291.631, z = 3808.029 }, area_id = 23 },
	-- G键触发
	[289012] = { config_id = 289012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -1009.221, y = 294.131, z = 3808.029 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1289007, name = "VARIABLE_CHANGE_289007", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_289002", condition = "condition_EVENT_VARIABLE_CHANGE_289007", action = "action_EVENT_VARIABLE_CHANGE_289007", trigger_count = 0 },
	{ config_id = 1289008, name = "VARIABLE_CHANGE_289008", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_289003", condition = "condition_EVENT_VARIABLE_CHANGE_289008", action = "action_EVENT_VARIABLE_CHANGE_289008", trigger_count = 0 },
	{ config_id = 1289009, name = "GADGET_STATE_CHANGE_289009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_289009", action = "action_EVENT_GADGET_STATE_CHANGE_289009", trigger_count = 0 },
	-- 通知勾爪group可以存活
	{ config_id = 1289010, name = "VARIABLE_CHANGE_289010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_289010", action = "action_EVENT_VARIABLE_CHANGE_289010" },
	-- 接取任务
	{ config_id = 1289011, name = "ENTER_REGION_289011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- G键触发
	{ config_id = 1289012, name = "ENTER_REGION_289012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_289012", action = "action_EVENT_ENTER_REGION_289012", trigger_count = 0 }
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
		gadgets = { 289001, 289004 },
		regions = { 289005, 289006, 289011, 289012 },
		triggers = { "VARIABLE_CHANGE_289007", "VARIABLE_CHANGE_289008", "GADGET_STATE_CHANGE_289009", "VARIABLE_CHANGE_289010", "ENTER_REGION_289011", "ENTER_REGION_289012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_289007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke1)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_289007(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_289008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke2)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_289008(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_289009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 289001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_289009(context, evt)
	-- 调用提示id为 33040006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_289010(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_289010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301643, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_289012(context, evt)
	if evt.param1 ~= 289012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_289012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/DeathZoneObservation"
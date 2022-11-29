-- 基础信息
local base_info = {
	group_id = 133303121
}

-- Trigger变量
local defs = {
	gadget_smoke1 = 121002,
	gadget_smoke2 = 121003,
	fquestid = 73111,
	lensRegion = 121011
}

-- DEFS_MISCS
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 121001,    

    lnlConfigId = 121004,

    resetParam = "rewindSmoke_"..tostring(defs.fquestid),

    hiddenlnlParam = "hiddenlnl_"..tostring(defs.fquestid),

    -- 一个smoke对应一个quest
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, region = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务定义的进度名"}
        [121002] = {smoke = 121002, minRegion = 1, maxRegion = 121005, group = 133303164, observeQuest = 7311103, finishQuest = 7311104, questParam = "smokeObserved1_73111", },
        [121003] = {smoke = 121003, minRegion = 3, maxRegion = 121006, group = 133303236, observeQuest = 7311105, finishQuest = 7311106, questParam = "smokeObserved2_73111", },
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
	[121001] = { config_id = 121001, gadget_id = 70330230, pos = { x = -1320.430, y = 299.449, z = 3872.365 }, rot = { x = 0.000, y = 339.953, z = 0.000 }, level = 30, area_id = 23 },
	[121002] = { config_id = 121002, gadget_id = 70310219, pos = { x = -1457.169, y = 282.270, z = 3889.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[121003] = { config_id = 121003, gadget_id = 70310219, pos = { x = -1179.485, y = 273.836, z = 3985.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[121004] = { config_id = 121004, gadget_id = 70310440, pos = { x = -1369.852, y = 272.411, z = 3880.516 }, rot = { x = 0.000, y = 86.879, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	[121005] = { config_id = 121005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1457.169, y = 282.270, z = 3889.219 }, area_id = 23 },
	[121006] = { config_id = 121006, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1179.756, y = 273.231, z = 3984.674 }, area_id = 23 },
	-- 接取任务
	[121011] = { config_id = 121011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1320.241, y = 299.087, z = 3872.492 }, area_id = 23 },
	-- G键触发
	[121012] = { config_id = 121012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -1319.515, y = 301.587, z = 3873.556 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1121007, name = "VARIABLE_CHANGE_121007", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_121002", condition = "condition_EVENT_VARIABLE_CHANGE_121007", action = "action_EVENT_VARIABLE_CHANGE_121007", trigger_count = 0 },
	{ config_id = 1121008, name = "VARIABLE_CHANGE_121008", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_121003", condition = "condition_EVENT_VARIABLE_CHANGE_121008", action = "action_EVENT_VARIABLE_CHANGE_121008", trigger_count = 0 },
	{ config_id = 1121009, name = "GADGET_STATE_CHANGE_121009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_121009", action = "action_EVENT_GADGET_STATE_CHANGE_121009", trigger_count = 0 },
	-- 通知勾爪group可以存活
	{ config_id = 1121010, name = "VARIABLE_CHANGE_121010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_121010", action = "action_EVENT_VARIABLE_CHANGE_121010" },
	-- 接取任务
	{ config_id = 1121011, name = "ENTER_REGION_121011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- G键触发
	{ config_id = 1121012, name = "ENTER_REGION_121012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_121012", action = "action_EVENT_ENTER_REGION_121012", trigger_count = 0 }
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
		gadgets = { 121001, 121004 },
		regions = { 121005, 121006, 121011, 121012 },
		triggers = { "VARIABLE_CHANGE_121007", "VARIABLE_CHANGE_121008", "GADGET_STATE_CHANGE_121009", "VARIABLE_CHANGE_121010", "ENTER_REGION_121011", "ENTER_REGION_121012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke1)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121007(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1340.027, y=298.2373, z=3895.607}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1340.027, y=298.2373, z=3895.607}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke2)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_121008(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_121009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 121001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_121009(context, evt)
	-- 调用提示id为 33040006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_121010(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_121010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303059, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_121012(context, evt)
	if evt.param1 ~= 121012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_121012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/DeathZoneObservation"
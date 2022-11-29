-- 基础信息
local base_info = {
	group_id = 133302243
}

-- Trigger变量
local defs = {
	gadget_smoke1 = 243002,
	gadget_smoke2 = 243003,
	fquestid = 73115,
	lensRegion = 243011
}

-- DEFS_MISCS
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 243001,    

    lnlConfigId = 243004,

    resetParam = "rewindSmoke_"..tostring(defs.fquestid),

    hiddenlnlParam = "hiddenlnl_"..tostring(defs.fquestid),

    -- 一个smoke对应一个quest
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, region = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务定义的进度名"}
        [243002] = {smoke = 243002, minRegion = 1, maxRegion = 243005, group = 133302245, observeQuest = 7311503, finishQuest = 7311504, questParam = "smokeObserved1_73115", },
        [243003] = {smoke = 243003, minRegion = 3, maxRegion = 243006, group = 133302247, observeQuest = 7311505, finishQuest = 7311506, questParam = "smokeObserved2_73115", },
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
	[243001] = { config_id = 243001, gadget_id = 70330230, pos = { x = -995.561, y = 261.151, z = 2334.069 }, rot = { x = 0.000, y = 74.282, z = 0.000 }, level = 27, area_id = 24 },
	[243002] = { config_id = 243002, gadget_id = 70310219, pos = { x = -765.868, y = 226.463, z = 2217.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	[243003] = { config_id = 243003, gadget_id = 70310219, pos = { x = -669.344, y = 223.148, z = 2442.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	[243004] = { config_id = 243004, gadget_id = 70310440, pos = { x = -961.943, y = 226.827, z = 2378.369 }, rot = { x = 0.000, y = 14.816, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	[243005] = { config_id = 243005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -765.868, y = 226.463, z = 2217.355 }, area_id = 24 },
	[243006] = { config_id = 243006, shape = RegionShape.SPHERE, radius = 100, pos = { x = -669.344, y = 223.148, z = 2442.200 }, area_id = 24 },
	-- 接取任务
	[243011] = { config_id = 243011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -993.845, y = 261.121, z = 2335.046 }, area_id = 24 },
	-- G键触发
	[243012] = { config_id = 243012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -993.845, y = 263.621, z = 2335.046 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1243007, name = "VARIABLE_CHANGE_243007", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_243002", condition = "condition_EVENT_VARIABLE_CHANGE_243007", action = "action_EVENT_VARIABLE_CHANGE_243007", trigger_count = 0 },
	{ config_id = 1243008, name = "VARIABLE_CHANGE_243008", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_243003", condition = "condition_EVENT_VARIABLE_CHANGE_243008", action = "action_EVENT_VARIABLE_CHANGE_243008", trigger_count = 0 },
	{ config_id = 1243009, name = "GADGET_STATE_CHANGE_243009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_243009", action = "action_EVENT_GADGET_STATE_CHANGE_243009", trigger_count = 0 },
	-- 通知勾爪group可以存活
	{ config_id = 1243010, name = "VARIABLE_CHANGE_243010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_243010", action = "action_EVENT_VARIABLE_CHANGE_243010" },
	-- 接取任务
	{ config_id = 1243011, name = "ENTER_REGION_243011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- G键触发
	{ config_id = 1243012, name = "ENTER_REGION_243012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_243012", action = "action_EVENT_ENTER_REGION_243012", trigger_count = 0 }
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
		gadgets = { 243001, 243004 },
		regions = { 243005, 243006, 243011, 243012 },
		triggers = { "VARIABLE_CHANGE_243007", "VARIABLE_CHANGE_243008", "GADGET_STATE_CHANGE_243009", "VARIABLE_CHANGE_243010", "ENTER_REGION_243011", "ENTER_REGION_243012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_243007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke1)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_243007(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-765.4644, y=226.2593, z=2117.909}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-765.4644, y=226.2593, z=2117.909}
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
function condition_EVENT_VARIABLE_CHANGE_243008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke2)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_243008(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-784, y=188, z=2631}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-784, y=188, z=2631}
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
function condition_EVENT_GADGET_STATE_CHANGE_243009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 243001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_243009(context, evt)
	-- 调用提示id为 33040006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_243010(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_243010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133302621, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_243012(context, evt)
	if evt.param1 ~= 243012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_243012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/DeathZoneObservation"
-- 基础信息
local base_info = {
	group_id = 133303313
}

-- Trigger变量
local defs = {
	gadget_smoke1 = 313002,
	gadget_smoke2 = 313003,
	fquestid = 73112,
	lensRegion = 313011
}

-- DEFS_MISCS
local defs_miscs = 
{
    -- 死域观测站透镜的config id
    lensConfigId = 313001,    

    lnlConfigId = 313004,

    resetParam = "rewindSmoke_"..tostring(defs.fquestid),

    hiddenlnlParam = "hiddenlnl_"..tostring(defs.fquestid),

    -- 一个smoke对应一个quest
    smokeTable = 
    {
        -- 每项格式如下，通常应该只有两项，即一个透镜对应两个黑烟
        --[smoke_id] = {smoke = smoke_config_id, region = region_id, group = group_id, observeQuest = quest_id, finishQuest = quest_id, questParam = "任务定义的进度名"}
        [313002] = {smoke = 313002, minRegion = 1, maxRegion = 313005, group = 133303315, observeQuest = 7311203, finishQuest = 7311204, questParam = "smokeObserved1_73112", },
        [313003] = {smoke = 313003, minRegion = 3, maxRegion = 313006, group = 133303316, observeQuest = 7311205, finishQuest = 7311206, questParam = "smokeObserved2_73112", },
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
	[313001] = { config_id = 313001, gadget_id = 70330230, pos = { x = -1282.562, y = 282.979, z = 3561.055 }, rot = { x = 0.000, y = 160.351, z = 0.000 }, level = 30, area_id = 23 },
	[313002] = { config_id = 313002, gadget_id = 70310219, pos = { x = -1196.756, y = 265.855, z = 3271.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[313003] = { config_id = 313003, gadget_id = 70310219, pos = { x = -1340.277, y = 238.424, z = 3308.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	[313004] = { config_id = 313004, gadget_id = 70310440, pos = { x = -1222.996, y = 244.411, z = 3541.647 }, rot = { x = 0.000, y = 291.024, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	[313005] = { config_id = 313005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1195.826, y = 266.056, z = 3271.508 }, area_id = 23 },
	[313006] = { config_id = 313006, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1340.277, y = 238.424, z = 3308.468 }, area_id = 23 },
	-- 接取任务
	[313011] = { config_id = 313011, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1282.704, y = 282.999, z = 3560.790 }, area_id = 23 },
	-- G键触发
	[313012] = { config_id = 313012, shape = RegionShape.CUBIC, size = { x = 5.000, y = 5.000, z = 5.000 }, pos = { x = -1282.562, y = 285.479, z = 3561.055 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1313007, name = "VARIABLE_CHANGE_313007", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_313002", condition = "condition_EVENT_VARIABLE_CHANGE_313007", action = "action_EVENT_VARIABLE_CHANGE_313007", trigger_count = 0 },
	{ config_id = 1313008, name = "VARIABLE_CHANGE_313008", event = EventType.EVENT_VARIABLE_CHANGE, source = "smoke_313003", condition = "condition_EVENT_VARIABLE_CHANGE_313008", action = "action_EVENT_VARIABLE_CHANGE_313008", trigger_count = 0 },
	{ config_id = 1313009, name = "GADGET_STATE_CHANGE_313009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313009", action = "action_EVENT_GADGET_STATE_CHANGE_313009", trigger_count = 0 },
	-- 通知勾爪group可以存活
	{ config_id = 1313010, name = "VARIABLE_CHANGE_313010", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_313010", action = "action_EVENT_VARIABLE_CHANGE_313010" },
	-- 接取任务
	{ config_id = 1313011, name = "ENTER_REGION_313011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0 },
	-- G键触发
	{ config_id = 1313012, name = "ENTER_REGION_313012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_313012", action = "action_EVENT_ENTER_REGION_313012", trigger_count = 0 }
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
		gadgets = { 313001, 313004 },
		regions = { 313005, 313006, 313011, 313012 },
		triggers = { "VARIABLE_CHANGE_313007", "VARIABLE_CHANGE_313008", "GADGET_STATE_CHANGE_313009", "VARIABLE_CHANGE_313010", "ENTER_REGION_313011", "ENTER_REGION_313012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_313007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103002"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke1)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_313007(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-1283.371, y=287.3337, z=3526.776}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1283.371, y=287.3337, z=3526.776}
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
function condition_EVENT_VARIABLE_CHANGE_313008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"smoke_103003"为1
	if ScriptLib.GetGroupVariableValue(context, "smoke_"..tostring(defs.gadget_smoke2)) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_313008(context, evt)
	-- 调用提示id为 33040005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_313009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 313001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_313009(context, evt)
	-- 调用提示id为 33040006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33040006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_313010(context, evt)
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
function action_EVENT_VARIABLE_CHANGE_313010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303062, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_313012(context, evt)
	if evt.param1 ~= 313012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_313012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7014, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_0/DeathZoneObservation"
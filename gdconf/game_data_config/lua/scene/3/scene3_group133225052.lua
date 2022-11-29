-- 基础信息
local base_info = {
	group_id = 133225052
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
}

-- 区域
regions = {
	-- 教程触发
	{ config_id = 52001, shape = RegionShape.POLYGON, pos = { x = -6364.336, y = 242.910, z = -2556.078 }, height = 82.742, point_array = { { x = -6378.332, y = -2496.938 }, { x = -6336.005, y = -2473.172 }, { x = -6249.613, y = -2526.048 }, { x = -6239.874, y = -2555.618 }, { x = -6265.856, y = -2597.279 }, { x = -6346.166, y = -2602.429 }, { x = -6394.639, y = -2638.985 }, { x = -6456.249, y = -2631.335 }, { x = -6488.798, y = -2595.363 } }, area_id = 18 },
	-- 迷雾拉回触发参数
	{ config_id = 52004, shape = RegionShape.POLYGON, pos = { x = -6356.039, y = 254.306, z = -2569.941 }, height = 59.910, point_array = { { x = -6343.488, y = -2598.016 }, { x = -6279.455, y = -2578.590 }, { x = -6251.472, y = -2558.631 }, { x = -6242.317, y = -2534.864 }, { x = -6262.054, y = -2514.798 }, { x = -6315.179, y = -2501.949 }, { x = -6428.809, y = -2506.129 }, { x = -6469.761, y = -2572.228 }, { x = -6436.041, y = -2637.932 } }, area_id = 18 },
	-- 通知任务进入对话
	{ config_id = 52005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -6214.198, y = 245.286, z = -2612.301 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- 教程触发
	{ config_id = 1052001, name = "ENTER_REGION_52001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52001", action = "action_EVENT_ENTER_REGION_52001", trigger_count = 0 },
	-- 触发教学
	{ config_id = 1052003, name = "TIME_AXIS_PASS_52003", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_52003", action = "action_EVENT_TIME_AXIS_PASS_52003", trigger_count = 0 },
	-- 迷雾拉回触发参数
	{ config_id = 1052004, name = "ENTER_REGION_52004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52004", action = "action_EVENT_ENTER_REGION_52004" },
	-- 通知任务进入对话
	{ config_id = 1052005, name = "ENTER_REGION_52005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52005", action = "action_EVENT_ENTER_REGION_52005" },
	-- 对话条件判断
	{ config_id = 1052006, name = "VARIABLE_CHANGE_52006", event = EventType.EVENT_VARIABLE_CHANGE, source = "triggerTalk", condition = "condition_EVENT_VARIABLE_CHANGE_52006", action = "action_EVENT_VARIABLE_CHANGE_52006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder_trigger", value = 0, no_refresh = true },
	{ config_id = 2, name = "enterFog", value = 0, no_refresh = true },
	{ config_id = 3, name = "triggerTalk", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 52002, shape = RegionShape.SPHERE, radius = 28, pos = { x = -6450.109, y = 242.879, z = -2584.186 }, area_id = 18 }
	},
	triggers = {
		{ config_id = 1052002, name = "ENTER_REGION_52002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52002", action = "action_EVENT_ENTER_REGION_52002" }
	}
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
		regions = { 52001, 52004, 52005 },
		triggers = { "ENTER_REGION_52001", "TIME_AXIS_PASS_52003", "ENTER_REGION_52004", "ENTER_REGION_52005", "VARIABLE_CHANGE_52006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_52001(context, evt)
	if evt.param1 ~= 52001 then return false end
	
	-- 判断变量"reminder_trigger"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder_trigger") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52001(context, evt)
	-- 调用提示id为 32260005 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32260005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"Active_Toturial"，时间节点为{6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Active_Toturial", {6}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_52003(context, evt)
	if "Active_Toturial" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_52003(context, evt)
	-- 将本组内变量名为 "reminder_trigger" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7009, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52004(context, evt)
	if evt.param1 ~= 52004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52004(context, evt)
	-- 将本组内变量名为 "enterFog" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "enterFog", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_52005(context, evt)
	if evt.param1 ~= 52005 then return false end
	
	-- 判断变量"enterFog"为1
	if ScriptLib.GetGroupVariableValue(context, "enterFog") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52005(context, evt)
	-- 将本组内变量名为 "triggerTalk" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "triggerTalk", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_52006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"triggerTalk"为1
	if ScriptLib.GetGroupVariableValue(context, "triggerTalk") ~= 1 then
			return false
	end
	
	-- 判断变量"Notify"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Notify", 133225232) ~= 0 then
			return false
	end
	
	-- 判断变量"Notify"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "Notify", 133225231) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_52006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "HG_Fog_Trigger") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
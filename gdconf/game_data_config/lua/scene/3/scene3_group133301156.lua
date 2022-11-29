-- 基础信息
local base_info = {
	group_id = 133301156
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
	{ config_id = 156001, gadget_id = 70360094, pos = { x = -527.499, y = 229.735, z = 3161.370 }, rot = { x = 359.146, y = 359.870, z = 17.355 }, level = 33, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 156002, gadget_id = 70290150, pos = { x = -526.586, y = 228.376, z = 3171.433 }, rot = { x = 359.110, y = 359.951, z = 6.242 }, level = 33, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 156003, gadget_id = 70290150, pos = { x = -526.118, y = 228.718, z = 3169.121 }, rot = { x = 5.390, y = 359.684, z = 6.186 }, level = 33, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 156004, gadget_id = 70290501, pos = { x = -526.393, y = 229.547, z = 3163.521 }, rot = { x = 0.000, y = 0.000, z = 356.424 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 156005, gadget_id = 70290501, pos = { x = -523.837, y = 229.529, z = 3165.357 }, rot = { x = 4.459, y = 359.861, z = 356.424 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 156006, gadget_id = 70290501, pos = { x = -523.893, y = 229.294, z = 3168.879 }, rot = { x = 1.764, y = 0.151, z = 9.753 }, level = 33, persistent = true, area_id = 22 },
	{ config_id = 156017, gadget_id = 70211001, pos = { x = -536.007, y = 226.098, z = 3173.323 }, rot = { x = 355.636, y = 185.418, z = 358.690 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
	-- 出圈判断失败
	{ config_id = 156010, shape = RegionShape.SPHERE, radius = 80, pos = { x = -514.236, y = 230.004, z = 3156.361 }, area_id = 22 },
	{ config_id = 156015, shape = RegionShape.SPHERE, radius = 25, pos = { x = -523.567, y = 228.860, z = 3165.604 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1156007, name = "ANY_GADGET_DIE_156007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_156007" },
	{ config_id = 1156009, name = "GROUP_LOAD_156009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_156009", trigger_count = 0 },
	-- 出圈判断失败
	{ config_id = 1156010, name = "LEAVE_REGION_156010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_156010", trigger_count = 0 },
	{ config_id = 1156014, name = "TIME_AXIS_PASS_156014", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_156014", action = "action_EVENT_TIME_AXIS_PASS_156014" },
	{ config_id = 1156015, name = "ENTER_REGION_156015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_156015", action = "action_EVENT_ENTER_REGION_156015" },
	{ config_id = 1156016, name = "GADGET_CREATE_156016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_156016" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1156008, name = "QUEST_FINISH_156008", event = EventType.EVENT_QUEST_FINISH, source = "7324701", condition = "", action = "action_EVENT_QUEST_FINISH_156008" }
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
	end_suite = 3,
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 156001, 156002, 156003, 156004, 156005, 156006 },
		regions = { 156010, 156015 },
		triggers = { "ANY_GADGET_DIE_156007", "GROUP_LOAD_156009", "LEAVE_REGION_156010", "TIME_AXIS_PASS_156014", "ENTER_REGION_156015" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 156017 },
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

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_156007(context, evt)
	-- 调用提示id为 7306503 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306503) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_156009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7324703_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_156010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7324703_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_156014(context, evt)
	if "duration" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_156014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7324703_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_156015(context, evt)
	if evt.param1 ~= 156015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_156015(context, evt)
	-- 创建标识为"duration"，时间节点为{13}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "duration", {13}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_156016(context, evt)
	-- 创建id为156017的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 156017 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133302113
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
	{ config_id = 113001, gadget_id = 70220065, pos = { x = -239.402, y = 300.819, z = 2126.404 }, rot = { x = 348.692, y = 1.149, z = 351.067 }, level = 27, area_id = 24 },
	{ config_id = 113002, gadget_id = 70220065, pos = { x = -231.478, y = 302.992, z = 2116.180 }, rot = { x = 13.382, y = 333.239, z = 5.006 }, level = 27, area_id = 24 },
	{ config_id = 113003, gadget_id = 70220065, pos = { x = -236.871, y = 300.668, z = 2124.768 }, rot = { x = 355.637, y = 275.458, z = 358.687 }, level = 27, area_id = 24 },
	{ config_id = 113004, gadget_id = 70220067, pos = { x = -233.701, y = 302.643, z = 2115.946 }, rot = { x = 11.379, y = 0.623, z = 9.685 }, level = 27, area_id = 24 },
	{ config_id = 113005, gadget_id = 70220067, pos = { x = -238.499, y = 300.807, z = 2123.902 }, rot = { x = 6.415, y = 23.376, z = 7.569 }, level = 27, area_id = 24 },
	{ config_id = 113006, gadget_id = 70220066, pos = { x = -235.107, y = 302.611, z = 2115.174 }, rot = { x = 11.406, y = 0.635, z = 7.110 }, level = 27, area_id = 24 },
	{ config_id = 113014, gadget_id = 70211001, pos = { x = -246.670, y = 302.272, z = 2114.863 }, rot = { x = 357.516, y = 260.814, z = 354.771 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 113010, shape = RegionShape.SPHERE, radius = 120, pos = { x = -226.620, y = 312.079, z = 2099.183 }, area_id = 24 },
	{ config_id = 113012, shape = RegionShape.SPHERE, radius = 25, pos = { x = -244.932, y = 301.415, z = 2119.650 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1113007, name = "ANY_GADGET_DIE_113007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_113007" },
	{ config_id = 1113009, name = "GROUP_LOAD_113009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_113009", trigger_count = 0 },
	{ config_id = 1113010, name = "LEAVE_REGION_113010", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION_113010", trigger_count = 0 },
	{ config_id = 1113011, name = "TIME_AXIS_PASS_113011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_113011", action = "action_EVENT_TIME_AXIS_PASS_113011" },
	{ config_id = 1113012, name = "ENTER_REGION_113012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_113012", action = "action_EVENT_ENTER_REGION_113012" },
	{ config_id = 1113013, name = "GADGET_CREATE_113013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_113013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1113008, name = "QUEST_FINISH_113008", event = EventType.EVENT_QUEST_FINISH, source = "7324501", condition = "", action = "action_EVENT_QUEST_FINISH_113008" }
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
		gadgets = { 113001, 113002, 113003, 113004, 113005, 113006 },
		regions = { 113010, 113012 },
		triggers = { "ANY_GADGET_DIE_113007", "GROUP_LOAD_113009", "LEAVE_REGION_113010", "TIME_AXIS_PASS_113011", "ENTER_REGION_113012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 113014 },
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
function action_EVENT_ANY_GADGET_DIE_113007(context, evt)
	-- 调用提示id为 7306502 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_113009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7324503_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEAVE_REGION_113010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7324503_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_113011(context, evt)
	if "duration" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_113011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7324503_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_113012(context, evt)
	if evt.param1 ~= 113012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_113012(context, evt)
	-- 创建标识为"duration"，时间节点为{13}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "duration", {13}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_113013(context, evt)
	-- 创建id为113014的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 113014 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
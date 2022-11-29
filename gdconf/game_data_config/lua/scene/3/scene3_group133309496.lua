-- 基础信息
local base_info = {
	group_id = 133309496
}

-- Trigger变量
local defs = {
	group_id = 133309496,
	point_camera = 496006,
	gadget_lookEntity = 496002,
	look_duration = 6
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,  --镜头的移动路径，球面0，直线1
    blend_duration = 2, --镜头的移动时间
    is_force_walk = false, --强制玩家行走
    is_allow_input = false, --允许输入
    delay = 0, --触发延迟
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
	[496002] = { config_id = 496002, gadget_id = 70360001, pos = { x = -2377.318, y = -63.078, z = 5729.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	[496001] = { config_id = 496001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2424.205, y = -36.361, z = 5677.324 }, area_id = 27 },
	[496003] = { config_id = 496003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2424.205, y = -36.361, z = 5677.324 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1496001, name = "ENTER_REGION_496001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_496001", action = "action_EVENT_ENTER_REGION_496001" },
	{ config_id = 1496003, name = "ENTER_REGION_496003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_496003", trigger_count = 0 }
}

-- 点位
points = {
	[496006] = { config_id = 496006, pos = { x = -2417.629, y = -32.924, z = 5687.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
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
		gadgets = { 496002 },
		regions = { 496001, 496003 },
		triggers = { "ENTER_REGION_496001", "ENTER_REGION_496003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_496001(context, evt)
	if evt.param1 ~= 496001 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_496001(context, evt)
	LF_PointLook(context)
	
	
	
	-- 调用提示id为 7305314 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7305314) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_496003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7305447") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

require "V3_0/CameraLook"
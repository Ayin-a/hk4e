-- 基础信息
local base_info = {
	group_id = 133223327
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
	-- 第二句话触发注目雕像
	{ config_id = 327001, shape = RegionShape.SPHERE, radius = 25, pos = { x = -6405.312, y = 200.489, z = -2791.322 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- 第二句话触发注目雕像
	{ config_id = 1327001, name = "ENTER_REGION_327001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_327001", action = "action_EVENT_ENTER_REGION_327001" },
	{ config_id = 1327002, name = "TIME_AXIS_PASS_327002", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_327002", action = "action_EVENT_TIME_AXIS_PASS_327002" }
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
		gadgets = { },
		regions = { 327001 },
		triggers = { "ENTER_REGION_327001", "TIME_AXIS_PASS_327002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_327001(context, evt)
	if evt.param1 ~= 327001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_327001(context, evt)
	-- 调用提示id为 32230115 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32230115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"Camera_Look_Active"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "Camera_Look_Active", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_327002(context, evt)
	if "Camera_Look_Active" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_327002(context, evt)
	-- 触发镜头注目，注目位置为坐标（-6398，201，-2792），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-6398, y=201, z=-2792}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 停止标识为"Camera_Look_Active"的时间轴
	ScriptLib.EndTimeAxis(context, "Camera_Look_Active")
	
	
	return 0
end
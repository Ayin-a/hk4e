-- 基础信息
local base_info = {
	group_id = 220158001
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
	{ config_id = 1002, gadget_id = 70220103, pos = { x = 182.837, y = 193.105, z = 634.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70320073, pos = { x = 247.996, y = 215.250, z = 632.140 }, rot = { x = 0.000, y = 304.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 1001, shape = RegionShape.CUBIC, size = { x = 5.000, y = 10.000, z = 20.000 }, pos = { x = 134.781, y = 200.288, z = 633.255 } }
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "ENTER_REGION_1001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1001", action = "action_EVENT_ENTER_REGION_1001" }
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
		gadgets = { 1002, 1003 },
		regions = { 1001 },
		triggers = { "ENTER_REGION_1001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1001(context, evt)
	if evt.param1 ~= 1001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1001(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=191.0105, y=204.7157, z=628.7041}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=191.0105, y=204.7157, z=628.7041}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 201580101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201580101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220158002, 1)
	
	return 0
end
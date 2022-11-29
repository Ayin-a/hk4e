-- 基础信息
local base_info = {
	group_id = 133003909
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 909002, monster_id = 20010401, pos = { x = 2525.037, y = 214.487, z = -1377.563 }, rot = { x = 0.000, y = 107.731, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 909003, monster_id = 20010401, pos = { x = 2526.078, y = 214.573, z = -1378.005 }, rot = { x = 0.000, y = 300.703, z = 0.000 }, level = 2, drop_id = 1000100, disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 909001, gadget_id = 70500000, pos = { x = 2525.539, y = 214.528, z = -1377.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, point_type = 9109, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 909004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2525.122, y = 214.556, z = -1377.905 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1909004, name = "ENTER_REGION_909004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_909004", action = "action_EVENT_ENTER_REGION_909004" }
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
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 909002, 909003 },
		gadgets = { 909001 },
		regions = { 909004 },
		triggers = { "ENTER_REGION_909004" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_909004(context, evt)
	if evt.param1 ~= 909004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_909004(context, evt)
	-- 调用提示id为 1110096 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110096) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（2525，214，-1376），持续时间为1.5秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=2525, y=214, z=-1376}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 1.5, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end
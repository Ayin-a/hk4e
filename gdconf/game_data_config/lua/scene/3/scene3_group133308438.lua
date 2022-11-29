-- 基础信息
local base_info = {
	group_id = 133308438
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {438001}

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
	{ config_id = 438001, gadget_id = 70330355, pos = { x = -1453.174, y = 30.545, z = 4643.938 }, rot = { x = 0.000, y = 281.074, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 438002, gadget_id = 70220103, pos = { x = -1430.383, y = 37.221, z = 4625.329 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 438003, gadget_id = 70220103, pos = { x = -1405.698, y = 48.217, z = 4607.903 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 438004, gadget_id = 70220103, pos = { x = -1384.892, y = 59.383, z = 4592.275 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 438005, gadget_id = 70220103, pos = { x = -1363.738, y = 69.452, z = 4568.226 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 438006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1453.174, y = 30.545, z = 4643.938 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1438006, name = "ENTER_REGION_438006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_438006", action = "action_EVENT_ENTER_REGION_438006" },
	{ config_id = 1438008, name = "VARIABLE_CHANGE_438008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_438008", action = "action_EVENT_VARIABLE_CHANGE_438008", trigger_count = 0 },
	{ config_id = 1438009, name = "VARIABLE_CHANGE_438009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_438009", action = "action_EVENT_VARIABLE_CHANGE_438009", trigger_count = 0 }
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
		gadgets = { 438001 },
		regions = { 438006 },
		triggers = { "ENTER_REGION_438006", "VARIABLE_CHANGE_438008", "VARIABLE_CHANGE_438009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 438002, 438003, 438004, 438005 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_438006(context, evt)
	if evt.param1 ~= 438006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_438006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_438008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_438008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308438, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1430.383, y=37.22144, z=4625.329}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1430.383, y=37.22144, z=4625.329}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_438009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_438009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308438, 2)
	
	return 0
end

require "V3_1/Desert_HourGlass"
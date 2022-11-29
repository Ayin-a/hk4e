-- 基础信息
local base_info = {
	group_id = 133308437
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {437001}

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
	{ config_id = 437001, gadget_id = 70330355, pos = { x = -1566.883, y = 72.437, z = 4541.958 }, rot = { x = 0.000, y = 277.866, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 437002, gadget_id = 70220103, pos = { x = -1535.687, y = 74.695, z = 4548.390 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 437003, gadget_id = 70220103, pos = { x = -1503.097, y = 76.355, z = 4556.066 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 437004, gadget_id = 70220103, pos = { x = -1466.796, y = 70.002, z = 4560.535 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 437005, gadget_id = 70220103, pos = { x = -1439.292, y = 72.641, z = 4555.476 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 437006, gadget_id = 70220103, pos = { x = -1421.193, y = 69.576, z = 4546.335 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 437007, gadget_id = 70220103, pos = { x = -1387.337, y = 57.572, z = 4542.004 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 437010, gadget_id = 70220103, pos = { x = -1368.304, y = 69.395, z = 4538.180 }, rot = { x = 0.000, y = 358.964, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 437011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1566.883, y = 72.437, z = 4541.958 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1437008, name = "VARIABLE_CHANGE_437008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_437008", action = "action_EVENT_VARIABLE_CHANGE_437008", trigger_count = 0 },
	{ config_id = 1437009, name = "VARIABLE_CHANGE_437009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_437009", action = "action_EVENT_VARIABLE_CHANGE_437009", trigger_count = 0 },
	{ config_id = 1437011, name = "ENTER_REGION_437011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_437011", action = "action_EVENT_ENTER_REGION_437011" }
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
		gadgets = { 437001 },
		regions = { 437011 },
		triggers = { "VARIABLE_CHANGE_437008", "VARIABLE_CHANGE_437009", "ENTER_REGION_437011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 437002, 437003, 437004, 437005, 437006, 437007, 437010 },
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
function condition_EVENT_VARIABLE_CHANGE_437008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_437008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308437, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1535.687, y=74.69525, z=4548.39}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1535.687, y=74.69525, z=4548.39}
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
function condition_EVENT_VARIABLE_CHANGE_437009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_437009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308437, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_437011(context, evt)
	if evt.param1 ~= 437011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_437011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"
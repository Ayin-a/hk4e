-- 基础信息
local base_info = {
	group_id = 133308436
}

-- DEFS_MISCS
local HourGlass_ConfigIDList = {436001}

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
	{ config_id = 436001, gadget_id = 70330355, pos = { x = -1394.812, y = 54.745, z = 4532.986 }, rot = { x = 0.000, y = 278.902, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 26 },
	{ config_id = 436003, gadget_id = 70220103, pos = { x = -1412.009, y = 60.322, z = 4539.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 436004, gadget_id = 70220103, pos = { x = -1435.480, y = 71.206, z = 4547.576 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 436005, gadget_id = 70220103, pos = { x = -1466.872, y = 68.373, z = 4553.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 436006, gadget_id = 70220103, pos = { x = -1497.298, y = 68.676, z = 4555.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 436007, gadget_id = 70220103, pos = { x = -1528.408, y = 73.312, z = 4550.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 436008, gadget_id = 70220103, pos = { x = -1565.583, y = 74.966, z = 4536.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 436010, gadget_id = 70220103, pos = { x = -1593.870, y = 95.146, z = 4528.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 436011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -1394.812, y = 54.745, z = 4532.986 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1436002, name = "VARIABLE_CHANGE_436002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_436002", action = "action_EVENT_VARIABLE_CHANGE_436002", trigger_count = 0 },
	{ config_id = 1436009, name = "VARIABLE_CHANGE_436009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_436009", action = "action_EVENT_VARIABLE_CHANGE_436009", trigger_count = 0 },
	{ config_id = 1436011, name = "ENTER_REGION_436011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_436011", action = "action_EVENT_ENTER_REGION_436011" }
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
		gadgets = { 436001 },
		regions = { 436011 },
		triggers = { "VARIABLE_CHANGE_436002", "VARIABLE_CHANGE_436009", "ENTER_REGION_436011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 436003, 436004, 436005, 436006, 436007, 436008, 436010 },
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
function condition_EVENT_VARIABLE_CHANGE_436002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为1
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_436002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308436, 2)
	
	-- 触发镜头注目，注目位置为坐标{x=-1424.618, y=58.01387, z=4541.208}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1424.618, y=58.01387, z=4541.208}
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
function condition_EVENT_VARIABLE_CHANGE_436009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"HourGlass_InTime"为0
	if ScriptLib.GetGroupVariableValue(context, "HourGlass_InTime") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_436009(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133308436, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_436011(context, evt)
	if evt.param1 ~= 436011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_436011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7024, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Desert_HourGlass"
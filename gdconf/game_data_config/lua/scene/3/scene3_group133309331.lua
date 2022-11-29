-- 基础信息
local base_info = {
	group_id = 133309331
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 331002,
	gadget_receiver_2 = 331003
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
	331012,
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
	-- 接收装置#1
	{ config_id = 331002, gadget_id = 70330281, pos = { x = -2429.007, y = 61.937, z = 5296.999 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 接收装置#2
	{ config_id = 331003, gadget_id = 70330281, pos = { x = -2441.897, y = 61.937, z = 5285.055 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 331004, gadget_id = 70330417, pos = { x = -2448.001, y = 62.059, z = 5296.999 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 331006, gadget_id = 70330406, pos = { x = -2441.772, y = 61.964, z = 5284.743 }, rot = { x = 2.668, y = 187.430, z = 348.895 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 331010, gadget_id = 70330256, pos = { x = -2438.302, y = 67.745, z = 5312.291 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 接收装置#3
	{ config_id = 331012, gadget_id = 70330281, pos = { x = -2442.614, y = 61.937, z = 5310.182 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
}

-- 区域
regions = {
	{ config_id = 331011, shape = RegionShape.CUBIC, size = { x = 30.000, y = 20.000, z = 30.000 }, pos = { x = -2434.698, y = 67.067, z = 5298.558 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 接收装置#1激活-锁定元能基座
	{ config_id = 1331001, name = "GADGET_STATE_CHANGE_331001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331001", action = "action_EVENT_GADGET_STATE_CHANGE_331001", trigger_count = 0 },
	-- 接收装置#1取消激活-解锁元能基座
	{ config_id = 1331005, name = "GADGET_STATE_CHANGE_331005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331005", action = "action_EVENT_GADGET_STATE_CHANGE_331005", trigger_count = 0 },
	-- 接收装置#2激活-开启大门
	{ config_id = 1331007, name = "GADGET_STATE_CHANGE_331007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331007", action = "action_EVENT_GADGET_STATE_CHANGE_331007", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1331008, name = "VARIABLE_CHANGE_331008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_331008", action = "action_EVENT_VARIABLE_CHANGE_331008" },
	-- 接收装置#3激活-开启风扇
	{ config_id = 1331009, name = "GADGET_STATE_CHANGE_331009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331009", action = "action_EVENT_GADGET_STATE_CHANGE_331009", trigger_count = 0 },
	{ config_id = 1331011, name = "ENTER_REGION_331011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_331011", action = "action_EVENT_ENTER_REGION_331011" },
	-- 接收装置#1激活-关闭风扇
	{ config_id = 1331015, name = "GADGET_STATE_CHANGE_331015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331015", action = "action_EVENT_GADGET_STATE_CHANGE_331015", trigger_count = 0 },
	-- 开门保底
	{ config_id = 1331016, name = "GROUP_LOAD_331016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_331016", action = "action_EVENT_GROUP_LOAD_331016", trigger_count = 0 },
	-- 接收装置#2激活-注目
	{ config_id = 1331017, name = "GADGET_STATE_CHANGE_331017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331017", action = "action_EVENT_GADGET_STATE_CHANGE_331017" },
	-- sparkReach为1时操作
	{ config_id = 1331018, name = "VARIABLE_CHANGE_331018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_331018", action = "action_EVENT_VARIABLE_CHANGE_331018", trigger_count = 0 },
	-- sparkReach为1时保底
	{ config_id = 1331019, name = "GROUP_LOAD_331019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_331019", action = "action_EVENT_GROUP_LOAD_331019", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 5, name = "isOpen", value = 0, no_refresh = true },
	{ config_id = 4, name = "sparkReach", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1331013, name = "GADGET_STATE_CHANGE_331013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331013", action = "action_EVENT_GADGET_STATE_CHANGE_331013", trigger_count = 0 },
		{ config_id = 1331014, name = "GADGET_STATE_CHANGE_331014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_331014", action = "action_EVENT_GADGET_STATE_CHANGE_331014" }
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
		gadgets = { 331002, 331003, 331004, 331006, 331010, 331012 },
		regions = { 331011 },
		triggers = { "GADGET_STATE_CHANGE_331001", "GADGET_STATE_CHANGE_331005", "GADGET_STATE_CHANGE_331007", "VARIABLE_CHANGE_331008", "GADGET_STATE_CHANGE_331009", "ENTER_REGION_331011", "GADGET_STATE_CHANGE_331015", "GROUP_LOAD_331016", "GADGET_STATE_CHANGE_331017", "VARIABLE_CHANGE_331018", "GROUP_LOAD_331019" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_331001(context, evt)
	if 331002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"sparkReach"为0
	if ScriptLib.GetGroupVariableValue(context, "sparkReach") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_331001(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 1, 133309329) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_331005(context, evt)
	if 331002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"sparkReach"为0
	if ScriptLib.GetGroupVariableValue(context, "sparkReach") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_331005(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 0, 133309329) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_331007(context, evt)
	if 331003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isOpen"为0
	if ScriptLib.GetGroupVariableValue(context, "isOpen") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_331007(context, evt)
	-- 将本组内变量名为 "isOpen" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isOpen", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 331004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5020, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_331008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"sparkReach"为1
	if ScriptLib.GetGroupVariableValue(context, "sparkReach") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_331008(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_331009(context, evt)
	if 331012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_331009(context, evt)
	-- 将configid为 331010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_331011(context, evt)
	if evt.param1 ~= 331011 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_331011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7021, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_331015(context, evt)
	if 331003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_331015(context, evt)
	-- 将configid为 331010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_331016(context, evt)
	-- 判断变量"isOpen"为1
	if ScriptLib.GetGroupVariableValue(context, "isOpen") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_331016(context, evt)
	-- 将configid为 331004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_331017(context, evt)
	if 331003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_331017(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-2448.001, y=65.15718, z=5296.999}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2448.001, y=65.15718, z=5296.999}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_331018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"sparkReach"为1
	if ScriptLib.GetGroupVariableValue(context, "sparkReach") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_331018(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 2, 133309329) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 331002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_331019(context, evt)
	-- 判断变量"sparkReach"为1
	if ScriptLib.GetGroupVariableValue(context, "sparkReach") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_331019(context, evt)
	-- 将本组内变量名为 "isLocked" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "isLocked", 2, 133309329) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 331002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
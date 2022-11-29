-- 基础信息
local base_info = {
	group_id = 133309748
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 748002,
	gadget_receiver_2 = 748003
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
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
	{ config_id = 748002, gadget_id = 70330281, pos = { x = -2816.800, y = 179.382, z = 5970.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	-- 接收装置#2
	{ config_id = 748003, gadget_id = 70330312, pos = { x = -2816.496, y = 179.392, z = 5995.176 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 748006, gadget_id = 70330416, pos = { x = -2816.768, y = 179.687, z = 5960.218 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 运营埋点
	{ config_id = 1748001, name = "GADGET_STATE_CHANGE_748001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_748001", action = "action_EVENT_GADGET_STATE_CHANGE_748001" },
	-- 房间内激活 开门
	{ config_id = 1748004, name = "GADGET_STATE_CHANGE_748004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_748004", action = "action_EVENT_GADGET_STATE_CHANGE_748004" },
	-- 同时激活判定
	{ config_id = 1748005, name = "GADGET_STATE_CHANGE_748005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_748005", action = "action_EVENT_GADGET_STATE_CHANGE_748005" },
	-- 玩法完成表现
	{ config_id = 1748008, name = "VARIABLE_CHANGE_748008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_748008", action = "action_EVENT_VARIABLE_CHANGE_748008" },
	-- 玩法完成保底
	{ config_id = 1748010, name = "GROUP_LOAD_748010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_748010", action = "action_EVENT_GROUP_LOAD_748010", trigger_count = 0 },
	-- 保底刷宝箱
	{ config_id = 1748012, name = "GROUP_LOAD_748012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_748012", action = "action_EVENT_GROUP_LOAD_748012", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1748013, name = "VARIABLE_CHANGE_748013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_748013", action = "action_EVENT_VARIABLE_CHANGE_748013" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1748009, name = "VARIABLE_CHANGE_748009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_748009", action = "" }
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
		gadgets = { 748002, 748003, 748006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_748001", "GADGET_STATE_CHANGE_748004", "GADGET_STATE_CHANGE_748005", "VARIABLE_CHANGE_748008", "GROUP_LOAD_748010", "GROUP_LOAD_748012", "VARIABLE_CHANGE_748013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_748001(context, evt)
	-- 检测config_id为748003的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 748003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_748001(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330312) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_748004(context, evt)
	if 748003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_748004(context, evt)
	-- 触发镜头注目，注目位置为坐标{x=-2816.768, y=179.6866, z=5960.218}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2816.768, y=179.6866, z=5960.218}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将configid为 748006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 748006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_748005(context, evt)
	
	for _,v in pairs(defs.receiverList) do
	  if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309748, v) then
	    return false
	  end
	
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_748005(context, evt)
	-- 将本组内变量名为 "isActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isActive", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2816.79, y=183, z=5985.2}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2816.79, y=183, z=5985.2}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 将本组内变量名为 "forceActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "forceActive", 1, 133309491) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_748008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_748008(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133309748中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309748, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_748010(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_748010(context, evt)
	for _,v in pairs(defs.receiverList)do
	  -- 改变指定group组133309748中， configid为609002的gadget的state
	  if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309748, v, GadgetState.GearAction1)then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
	  end 
	end
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_748012(context, evt)
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_748012(context, evt)
	-- 将本组内变量名为 "forceActive" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "forceActive", 1, 133309491) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_748013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_748013(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31007, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Mark"
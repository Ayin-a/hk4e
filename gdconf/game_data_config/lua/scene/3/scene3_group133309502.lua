-- 基础信息
local base_info = {
	group_id = 133309502
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 502002,
	gadget_fireBase1 = 502001,
	gadget_fire1 = 502003,
	gadget_fireBase2 = 502004,
	gadget_fire2 = 502005,
	gadget_fireBase3 = 0,
	gadget_fire3 = 0,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0,
	point_camera = 502012,
	gadget_lookEntity = 502011,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,  --镜头的移动路径，球面0，直线1
    blend_duration = 1, --镜头的移动时间
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
	-- 1号基座
	{ config_id = 502001, gadget_id = 70330279, pos = { x = -3005.374, y = 153.002, z = 5402.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 502002, gadget_id = 70330278, pos = { x = -3003.477, y = 158.982, z = 5436.286 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 502003, gadget_id = 70330257, pos = { x = -3005.369, y = 154.792, z = 5402.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900198, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 502004, gadget_id = 70330279, pos = { x = -2985.136, y = 159.466, z = 5436.286 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 502005, gadget_id = 70330257, pos = { x = -2985.134, y = 161.256, z = 5436.286 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, route_id = 330900199, persistent = true, area_id = 27 },
	{ config_id = 502011, gadget_id = 70330287, pos = { x = -2992.898, y = 182.076, z = 5436.101 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 打镜头后延时消除电梯盖板
	{ config_id = 1502006, name = "TIME_AXIS_PASS_502006", event = EventType.EVENT_TIME_AXIS_PASS, source = "elevator", condition = "condition_EVENT_TIME_AXIS_PASS_502006", action = "action_EVENT_TIME_AXIS_PASS_502006" },
	-- 玩法完成
	{ config_id = 1502007, name = "GADGET_STATE_CHANGE_502007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502007", action = "action_EVENT_GADGET_STATE_CHANGE_502007" },
	-- 玩法开始埋点
	{ config_id = 1502009, name = "GADGET_STATE_CHANGE_502009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502009", action = "action_EVENT_GADGET_STATE_CHANGE_502009" },
	-- 玩法进度埋点
	{ config_id = 1502010, name = "GADGET_STATE_CHANGE_502010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_502010", action = "action_EVENT_GADGET_STATE_CHANGE_502010" },
	-- 保底打开盖板
	{ config_id = 1502013, name = "GROUP_LOAD_502013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_502013", action = "action_EVENT_GROUP_LOAD_502013", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 502012, pos = { x = -2992.875, y = 160.003, z = 5423.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1502008, name = "GROUP_LOAD_502008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_502008", action = "action_EVENT_GROUP_LOAD_502008", trigger_count = 0 }
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
		gadgets = { 502001, 502002, 502004, 502011 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_502006", "GADGET_STATE_CHANGE_502007", "GADGET_STATE_CHANGE_502009", "GADGET_STATE_CHANGE_502010", "GROUP_LOAD_502013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_502006(context, evt)
	if "elevator" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_502006(context, evt)
	-- 将configid为 502011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 502011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_502007(context, evt)
	if 502002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502007(context, evt)
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"elevator"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "elevator", {1}, false)
	
	
	-- 触发镜头注目，注目位置为坐标{x=-2992.898, y=182.0755, z=5436.101}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2992.898, y=182.0755, z=5436.101}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_502009(context, evt)
	if 502001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 7022, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_502010(context, evt)
	if 502004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_502010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_502013(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_502013(context, evt)
	-- 将configid为 502011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 502011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 502002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 502002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"
require "V3_0/CameraLook"
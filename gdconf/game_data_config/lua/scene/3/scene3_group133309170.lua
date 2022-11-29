-- 基础信息
local base_info = {
	group_id = 133309170
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 170002,
	gadget_fireBase1 = 170001,
	gadget_fire1 = 170003,
	gadget_fireBase2 = 170004,
	gadget_fire2 = 170005,
	gadget_fireBase3 = 0,
	gadget_fire3 = 0,
	gadget_fireBase4 = 0,
	gadget_fire4 = 0
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
	{ config_id = 170001, gadget_id = 70330279, pos = { x = -2395.278, y = 191.692, z = 5768.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 170002, gadget_id = 70330278, pos = { x = -2331.000, y = 191.860, z = 5745.998 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 170003, gadget_id = 70330257, pos = { x = -2395.276, y = 193.492, z = 5768.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900194, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 170004, gadget_id = 70330279, pos = { x = -2375.972, y = 191.692, z = 5760.929 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 170005, gadget_id = 70330257, pos = { x = -2375.971, y = 193.492, z = 5760.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900195, persistent = true, area_id = 27 },
	{ config_id = 170006, gadget_id = 70211001, pos = { x = -2321.298, y = 191.949, z = 5740.512 }, rot = { x = 0.000, y = 183.893, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1170007, name = "GADGET_STATE_CHANGE_170007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170007", action = "action_EVENT_GADGET_STATE_CHANGE_170007" },
	-- 保底
	{ config_id = 1170008, name = "GROUP_LOAD_170008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_170008", action = "action_EVENT_GROUP_LOAD_170008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1170009, name = "GADGET_STATE_CHANGE_170009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170009", action = "action_EVENT_GADGET_STATE_CHANGE_170009" },
	-- 玩法进度埋点
	{ config_id = 1170010, name = "GADGET_STATE_CHANGE_170010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170010", action = "action_EVENT_GADGET_STATE_CHANGE_170010" }
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
		gadgets = { 170001, 170002, 170004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_170007", "GROUP_LOAD_170008", "GADGET_STATE_CHANGE_170009", "GADGET_STATE_CHANGE_170010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170007(context, evt)
	if 170002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170007(context, evt)
	-- 创建id为170006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 170006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 针对当前group内变量名为 "spark" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "spark", 1, 133309435) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 触发镜头注目，注目位置为坐标{x=-2321.26, y=193.6415, z=5740.729}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2321.26, y=193.6415, z=5740.729}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_170008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309170, 170002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_170008(context, evt)
	-- 创建id为170006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 170006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170009(context, evt)
	if 170001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170009(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_170010(context, evt)
	if 170004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"
require "V3_1/Engineer_Mark"
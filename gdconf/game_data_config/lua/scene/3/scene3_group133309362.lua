-- 基础信息
local base_info = {
	group_id = 133309362
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 362002,
	gadget_fireBase1 = 362001,
	gadget_fire1 = 362003,
	gadget_fireBase2 = 362004,
	gadget_fire2 = 362005,
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
	{ config_id = 362001, gadget_id = 70330313, pos = { x = -2816.850, y = 203.412, z = 5953.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 362002, gadget_id = 70330278, pos = { x = -2795.768, y = 179.412, z = 5935.218 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 362003, gadget_id = 70330257, pos = { x = -2816.850, y = 205.387, z = 5953.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900220, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 362004, gadget_id = 70330279, pos = { x = -2806.771, y = 179.412, z = 5950.220 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 362005, gadget_id = 70330257, pos = { x = -2806.771, y = 181.212, z = 5950.220 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, route_id = 330900221, persistent = true, area_id = 27 },
	{ config_id = 362006, gadget_id = 70330395, pos = { x = -2826.771, y = 208.279, z = 5971.378 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 362009, gadget_id = 70330225, pos = { x = -2816.798, y = 205.135, z = 5970.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 362010, gadget_id = 70330395, pos = { x = -2806.729, y = 208.279, z = 5971.378 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 27 },
	{ config_id = 362011, gadget_id = 70330432, pos = { x = -2829.689, y = 203.412, z = 5972.523 }, rot = { x = 0.000, y = 47.584, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 362012, gadget_id = 70330432, pos = { x = -2829.299, y = 203.544, z = 5977.731 }, rot = { x = 347.891, y = 127.919, z = 15.672 }, level = 32, area_id = 27 },
	{ config_id = 362013, gadget_id = 70330432, pos = { x = -2804.165, y = 204.417, z = 5972.503 }, rot = { x = 316.887, y = 304.204, z = 1.057 }, level = 32, area_id = 27 },
	{ config_id = 362014, gadget_id = 70330432, pos = { x = -2808.342, y = 203.412, z = 5972.384 }, rot = { x = 0.000, y = 341.569, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 362018, gadget_id = 70330432, pos = { x = -2804.107, y = 203.412, z = 5977.616 }, rot = { x = 0.000, y = 44.460, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1362007, name = "GADGET_STATE_CHANGE_362007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_362007", action = "action_EVENT_GADGET_STATE_CHANGE_362007" },
	-- 保底
	{ config_id = 1362008, name = "GROUP_LOAD_362008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_362008", action = "action_EVENT_GROUP_LOAD_362008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1362015, name = "GADGET_STATE_CHANGE_362015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_362015", action = "action_EVENT_GADGET_STATE_CHANGE_362015" },
	-- 玩法进度埋点
	{ config_id = 1362016, name = "GADGET_STATE_CHANGE_362016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_362016", action = "action_EVENT_GADGET_STATE_CHANGE_362016" },
	-- 建筑完毕
	{ config_id = 1362017, name = "GADGET_STATE_CHANGE_362017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_362017", action = "action_EVENT_GADGET_STATE_CHANGE_362017" },
	-- 运营埋点
	{ config_id = 1362021, name = "GADGET_STATE_CHANGE_362021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_362021", action = "action_EVENT_GADGET_STATE_CHANGE_362021" },
	-- 保底开盖板
	{ config_id = 1362022, name = "GROUP_LOAD_362022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_362022", action = "action_EVENT_GROUP_LOAD_362022", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 362019, gadget_id = 70210101, pos = { x = -2829.195, y = 204.127, z = 5972.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 },
		{ config_id = 362020, gadget_id = 70210101, pos = { x = -2808.647, y = 204.181, z = 5972.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 }
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
		gadgets = { 362001, 362002, 362004, 362006, 362009, 362010, 362011, 362012, 362013, 362014, 362018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_362007", "GROUP_LOAD_362008", "GADGET_STATE_CHANGE_362015", "GADGET_STATE_CHANGE_362016", "GADGET_STATE_CHANGE_362017", "GADGET_STATE_CHANGE_362021", "GROUP_LOAD_362022" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_362007(context, evt)
	if 362002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_362007(context, evt)
	-- 将本组内变量名为 "open1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open1", 1, 133309623) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
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
function condition_EVENT_GROUP_LOAD_362008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309362, 362002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_362008(context, evt)
	-- 将本组内变量名为 "open1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "open1", 1, 133309623) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建id为362006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 362006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_362015(context, evt)
	if 362001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_362015(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_362016(context, evt)
	if 362004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_362016(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_362017(context, evt)
	if 362001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_362017(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "done", 1, 133309142) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_362021(context, evt)
	-- 检测config_id为362001的gadget是否从GadgetState.GearAction2变为GadgetState.GearStart
	if 362001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_362021(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330313) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_362022(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309362, 362001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_362022(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "done", 1, 133309142) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"
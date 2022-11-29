-- 基础信息
local base_info = {
	group_id = 133309073
}

-- Trigger变量
local defs = {
	interactOptionID = 430,
	gadget_fireTorch = 73002,
	gadget_fireBase1 = 73001,
	gadget_fire1 = 73003,
	gadget_fireBase2 = 73004,
	gadget_fire2 = 73005,
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
	{ config_id = 73001, gadget_id = 70330279, pos = { x = -2839.968, y = 213.913, z = 5812.748 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 },
	{ config_id = 73002, gadget_id = 70330278, pos = { x = -2834.574, y = 201.810, z = 5783.920 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 },
	-- 1号火种
	{ config_id = 73003, gadget_id = 70330257, pos = { x = -2839.968, y = 215.722, z = 5812.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900048, persistent = true, area_id = 27 },
	-- 2号基座
	{ config_id = 73004, gadget_id = 70330279, pos = { x = -2860.802, y = 189.950, z = 5823.878 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	-- 2号火种
	{ config_id = 73005, gadget_id = 70330257, pos = { x = -2860.802, y = 191.730, z = 5823.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 330900049, persistent = true, area_id = 27 },
	{ config_id = 73006, gadget_id = 70330416, pos = { x = -2840.594, y = 202.146, z = 5788.081 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 73009, gadget_id = 70330278, pos = { x = -2846.574, y = 201.826, z = 5783.920 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 玩法完成
	{ config_id = 1073007, name = "GADGET_STATE_CHANGE_73007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73007", action = "action_EVENT_GADGET_STATE_CHANGE_73007" },
	-- 保底
	{ config_id = 1073008, name = "GROUP_LOAD_73008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_73008", action = "action_EVENT_GROUP_LOAD_73008", trigger_count = 0 },
	-- 玩法开始埋点
	{ config_id = 1073010, name = "GADGET_STATE_CHANGE_73010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73010", action = "action_EVENT_GADGET_STATE_CHANGE_73010" },
	-- 玩法进度埋点
	{ config_id = 1073011, name = "GADGET_STATE_CHANGE_73011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73011", action = "action_EVENT_GADGET_STATE_CHANGE_73011" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 73012, gadget_id = 70950145, pos = { x = -2839.968, y = 214.413, z = 5812.748 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 73014, gadget_id = 70950145, pos = { x = -2860.802, y = 194.450, z = 5823.878 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, area_id = 27 }
	},
	triggers = {
		{ config_id = 1073013, name = "GADGET_STATE_CHANGE_73013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73013", action = "action_EVENT_GADGET_STATE_CHANGE_73013", trigger_count = 0 },
		{ config_id = 1073015, name = "GADGET_STATE_CHANGE_73015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73015", action = "action_EVENT_GADGET_STATE_CHANGE_73015", trigger_count = 0 },
		{ config_id = 1073016, name = "GADGET_STATE_CHANGE_73016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73016", action = "action_EVENT_GADGET_STATE_CHANGE_73016", trigger_count = 0 },
		{ config_id = 1073017, name = "GADGET_STATE_CHANGE_73017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_73017", action = "action_EVENT_GADGET_STATE_CHANGE_73017", trigger_count = 0 }
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
		gadgets = { 73001, 73002, 73004, 73006, 73009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_73007", "GROUP_LOAD_73008", "GADGET_STATE_CHANGE_73010", "GADGET_STATE_CHANGE_73011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_73007(context, evt)
	if 73002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_73007(context, evt)
	-- 将configid为 73006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5027, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_73008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309073, 73002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_73008(context, evt)
	-- 将configid为 73006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 5027, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_73010(context, evt)
	if 73001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_73010(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_73011(context, evt)
	if 73004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_73011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31004, 2, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "BlackBoxPlay/DesertEnergySpark"
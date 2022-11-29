-- 基础信息
local base_info = {
	group_id = 133308076
}

-- DEFS_MISCS
local engineerLaserConfigID = 76001
local turnOption = 435
local correctState = 0

local markList = {76007}

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
	{ config_id = 76001, gadget_id = 70330311, pos = { x = -1430.621, y = 13.424, z = 4745.264 }, rot = { x = 0.000, y = 10.627, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 },
	{ config_id = 76002, gadget_id = 70330281, pos = { x = -1425.700, y = 13.424, z = 4771.496 }, rot = { x = 0.000, y = 10.627, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 76003, gadget_id = 70330225, pos = { x = -1453.651, y = 17.050, z = 4740.856 }, rot = { x = 0.000, y = 102.251, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 76005, gadget_id = 70330416, pos = { x = -1438.430, y = 13.588, z = 4758.391 }, rot = { x = 0.000, y = 10.611, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 },
	{ config_id = 76007, gadget_id = 70330264, pos = { x = -1428.713, y = 18.193, z = 4757.087 }, rot = { x = 0.000, y = 190.262, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 76008, gadget_id = 70330315, pos = { x = -1433.863, y = 13.424, z = 4732.360 }, rot = { x = 0.000, y = 279.622, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 接收失败
	{ config_id = 1076006, name = "GADGET_STATE_CHANGE_76006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76006", action = "action_EVENT_GADGET_STATE_CHANGE_76006", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1076009, name = "GADGET_STATE_CHANGE_76009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76009", action = "action_EVENT_GADGET_STATE_CHANGE_76009" },
	-- 运营埋点
	{ config_id = 1076010, name = "GADGET_STATE_CHANGE_76010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76010", action = "action_EVENT_GADGET_STATE_CHANGE_76010" },
	{ config_id = 1076011, name = "GROUP_LOAD_76011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_76011", action = "action_EVENT_GROUP_LOAD_76011", trigger_count = 0 },
	-- 保底
	{ config_id = 1076012, name = "GROUP_LOAD_76012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_76012", action = "action_EVENT_GROUP_LOAD_76012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 2, name = "finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1076004, name = "GADGET_STATE_CHANGE_76004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76004", action = "action_EVENT_GADGET_STATE_CHANGE_76004", trigger_count = 0 }
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
		gadgets = { 76001, 76002, 76003, 76005, 76007, 76008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_76006", "GADGET_STATE_CHANGE_76009", "GADGET_STATE_CHANGE_76010", "GROUP_LOAD_76011", "GROUP_LOAD_76012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76006(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308076, 76001) then
		return false
	end
	
	if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 133308076, 76007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_76006(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 76005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76009(context, evt)
	-- 检测config_id为76001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 76001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_76009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330311) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76010(context, evt)
	-- 检测config_id为76008的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 76008 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_76010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330315) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_76011(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76011(context, evt)
	-- 将configid为 76005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_76012(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133308076, 76001) then
		return false
	end
	
	if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 133308076, 76007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76012(context, evt)
	-- 将configid为 76005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 76005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_1/Engineer_Laser"
require "V3_1/Transparent_Mark"
-- 基础信息
local base_info = {
	group_id = 133308266
}

-- DEFS_MISCS
local engineerLaserConfigID = 266001
local turnOption = 435
local correctState = 202

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
	{ config_id = 266001, gadget_id = 70330311, pos = { x = -2276.903, y = 59.112, z = 4470.330 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 },
	{ config_id = 266002, gadget_id = 70330312, pos = { x = -2265.903, y = 59.173, z = 4459.329 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 26 },
	{ config_id = 266003, gadget_id = 70330225, pos = { x = -2285.898, y = 61.071, z = 4461.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 },
	{ config_id = 266009, gadget_id = 70330225, pos = { x = -2274.910, y = 61.070, z = 4450.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 运营埋点
	{ config_id = 1266005, name = "GADGET_STATE_CHANGE_266005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_266005", action = "action_EVENT_GADGET_STATE_CHANGE_266005" },
	-- 开门/宝箱/标记完成
	{ config_id = 1266006, name = "GADGET_STATE_CHANGE_266006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_266006", action = "action_EVENT_GADGET_STATE_CHANGE_266006", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1266010, name = "GADGET_STATE_CHANGE_266010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_266010", action = "action_EVENT_GADGET_STATE_CHANGE_266010" },
	-- 运营埋点
	{ config_id = 1266011, name = "SELECT_OPTION_266011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_266011", action = "action_EVENT_SELECT_OPTION_266011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 266004, gadget_id = 70330416, pos = { x = -2263.367, y = 63.402, z = 4473.109 }, rot = { x = 0.000, y = 226.662, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 26 }
	},
	triggers = {
		{ config_id = 1266007, name = "GADGET_STATE_CHANGE_266007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_266007", action = "action_EVENT_GADGET_STATE_CHANGE_266007", trigger_count = 0 },
		{ config_id = 1266008, name = "VARIABLE_CHANGE_266008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_266008", action = "", trigger_count = 0 }
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
		gadgets = { 266001, 266002, 266003, 266009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_266005", "GADGET_STATE_CHANGE_266006", "GADGET_STATE_CHANGE_266010", "SELECT_OPTION_266011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_266005(context, evt)
	-- 检测config_id为266002的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 266002 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_266005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330312) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_266006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308266, 266002) then
		return false
	end
	
	-- 判断变量"Finish"为0
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_266006(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组133308689中， configid为689002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133308689, 689002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_266010(context, evt)
	-- 检测config_id为266001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 266001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_266010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330311) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_266011(context, evt)
	-- 判断是gadgetid 0 option_id 0
	if defs.gadget_engineerLaser ~= evt.param1 then
		return false	
	end
	
	if turnOption ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_266011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Laser"
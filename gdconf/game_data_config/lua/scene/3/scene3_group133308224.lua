-- 基础信息
local base_info = {
	group_id = 133308224
}

-- DEFS_MISCS
local engineerLaserConfigID = 224001
local turnOption = 435
local correctState = 0

local markList = {224009}

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
	{ config_id = 224001, gadget_id = 70330311, pos = { x = -1885.799, y = 135.466, z = 5311.462 }, rot = { x = 0.000, y = 0.078, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 224002, gadget_id = 70330281, pos = { x = -1885.784, y = 135.466, z = 5321.799 }, rot = { x = 0.000, y = 0.078, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 224003, gadget_id = 70330225, pos = { x = -1894.355, y = 137.344, z = 5301.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 224004, gadget_id = 70330314, pos = { x = -1890.588, y = 135.369, z = 5312.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearAction2, persistent = true, area_id = 27 },
	{ config_id = 224005, gadget_id = 70211102, pos = { x = -1890.041, y = 135.460, z = 5307.620 }, rot = { x = 0.000, y = 179.365, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 224009, gadget_id = 70330264, pos = { x = -1885.701, y = 140.669, z = 5317.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开门/宝箱/标记完成
	{ config_id = 1224006, name = "GADGET_STATE_CHANGE_224006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224006", action = "action_EVENT_GADGET_STATE_CHANGE_224006", trigger_count = 0 },
	-- 保底
	{ config_id = 1224008, name = "GROUP_LOAD_224008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_224008", action = "action_EVENT_GROUP_LOAD_224008", trigger_count = 0 },
	-- 运营埋点
	{ config_id = 1224010, name = "GADGET_STATE_CHANGE_224010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224010", action = "action_EVENT_GADGET_STATE_CHANGE_224010" },
	-- 运营埋点
	{ config_id = 1224011, name = "GADGET_STATE_CHANGE_224011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224011", action = "action_EVENT_GADGET_STATE_CHANGE_224011" },
	-- 运营埋点
	{ config_id = 1224012, name = "SELECT_OPTION_224012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_224012", action = "action_EVENT_SELECT_OPTION_224012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1224007, name = "GADGET_STATE_CHANGE_224007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224007", action = "action_EVENT_GADGET_STATE_CHANGE_224007", trigger_count = 0 }
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
		gadgets = { 224001, 224002, 224003, 224004, 224005, 224009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_224006", "GROUP_LOAD_224008", "GADGET_STATE_CHANGE_224010", "GADGET_STATE_CHANGE_224011", "SELECT_OPTION_224012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133308224, 224002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224006(context, evt)
	-- 将本组内变量名为 "Finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 224005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_224008(context, evt)
	-- 判断变量"Finish"为1
	if ScriptLib.GetGroupVariableValue(context, "Finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_224008(context, evt)
	-- 将configid为 224005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 224005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224010(context, evt)
	-- 检测config_id为224001的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 224001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330311) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_224011(context, evt)
	-- 检测config_id为224004的gadget是否从GadgetState.GearAction2变为GadgetState.Default
	if 224004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearAction2 ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224011(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31001, 3, 70330314) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_224012(context, evt)
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
function action_EVENT_SELECT_OPTION_224012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 31002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V3_1/Engineer_Laser"
require "V3_1/Transparent_Mark"
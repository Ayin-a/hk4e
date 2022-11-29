-- 基础信息
local base_info = {
	group_id = 220133104
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
	-- 交互切201
	{ config_id = 104001, gadget_id = 70290286, pos = { x = 90.421, y = 196.186, z = 653.952 }, rot = { x = 0.000, y = 216.489, z = 0.000 }, level = 1, persistent = true, server_global_value_config = { ["SGV_XinyanPortal_Pic"]= 324} },
	{ config_id = 104002, gadget_id = 70290264, pos = { x = 90.421, y = 196.186, z = 653.952 }, rot = { x = 0.000, y = 216.489, z = 0.000 }, level = 1 },
	{ config_id = 104008, gadget_id = 70290502, pos = { x = 90.421, y = 196.186, z = 653.952 }, rot = { x = 0.000, y = 216.489, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	-- 离开区域 把门关上
	{ config_id = 104006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 90.421, y = 196.186, z = 653.952 } }
}

-- 触发器
triggers = {
	-- 门开后 创localTrigger
	{ config_id = 1104005, name = "GADGET_STATE_CHANGE_104005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104005", action = "action_EVENT_GADGET_STATE_CHANGE_104005", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1104006, name = "LEAVE_REGION_104006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_104006", action = "action_EVENT_LEAVE_REGION_104006", trigger_count = 0 },
	-- 门初始状态重置
	{ config_id = 1104007, name = "GADGET_CREATE_104007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_104007", action = "action_EVENT_GADGET_CREATE_104007", trigger_count = 0 },
	-- if queststate 换真门
	{ config_id = 1104009, name = "GROUP_LOAD_104009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_104009", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1104010, name = "TIME_AXIS_PASS_104010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_104010", action = "action_EVENT_TIME_AXIS_PASS_104010", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 104003, gadget_id = 70310172, pos = { x = 86.768, y = 195.652, z = 651.199 }, rot = { x = 0.000, y = 54.714, z = 0.000 }, level = 1, isOneoff = true, interact_id = 126 }
	},
	triggers = {
		{ config_id = 1104004, name = "GADGET_STATE_CHANGE_104004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_104004", action = "action_EVENT_GADGET_STATE_CHANGE_104004", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		gadgets = { 104001 },
		regions = { 104006 },
		triggers = { "GADGET_STATE_CHANGE_104005", "LEAVE_REGION_104006", "GADGET_CREATE_104007", "GROUP_LOAD_104009", "TIME_AXIS_PASS_104010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 104008 },
		regions = { },
		triggers = { "GROUP_LOAD_104009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_104005(context, evt)
	-- 检测config_id为104001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 104001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104005(context, evt)
	-- 创建id为104002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 104002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"CloseTime"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CloseTime", {8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_104006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133104, 104001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_104006(context, evt)
	-- 将configid为 104001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133104, EntityType.GADGET, 104002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_104007(context, evt)
	if 104001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_104007(context, evt)
	-- 将configid为 104001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_104009(context, evt)
		    if ScriptLib.GetHostQuestState(context,4007010)==3 then
			ScriptLib.RefreshGroup(context, { group_id = 220133104, suite = 1 }) 
			end
		
		return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_104010(context, evt)
	if "CloseTime" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_104010(context, evt)
	-- 将configid为 104001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133104, EntityType.GADGET, 104002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
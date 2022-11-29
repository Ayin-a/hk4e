-- 基础信息
local base_info = {
	group_id = 220133056
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
	{ config_id = 56001, gadget_id = 70290286, pos = { x = 40.057, y = 156.859, z = 535.697 }, rot = { x = 352.622, y = 297.305, z = 348.402 }, level = 1, persistent = true, server_global_value_config = { ["SGV_XinyanPortal_Pic"]= 111} },
	{ config_id = 56002, gadget_id = 70290264, pos = { x = 40.057, y = 156.859, z = 535.697 }, rot = { x = 352.622, y = 297.305, z = 348.402 }, level = 1 },
	{ config_id = 56009, gadget_id = 70290502, pos = { x = 40.057, y = 156.859, z = 535.697 }, rot = { x = 352.622, y = 297.305, z = 348.402 }, level = 1, persistent = true }
}

-- 区域
regions = {
	-- 离开区域 把门关上
	{ config_id = 56006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 40.057, y = 156.859, z = 535.697 } }
}

-- 触发器
triggers = {
	-- 门开后 创localTrigger
	{ config_id = 1056005, name = "GADGET_STATE_CHANGE_56005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56005", action = "action_EVENT_GADGET_STATE_CHANGE_56005", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1056006, name = "LEAVE_REGION_56006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_56006", action = "action_EVENT_LEAVE_REGION_56006", trigger_count = 0 },
	-- 门初始状态重置
	{ config_id = 1056007, name = "GADGET_CREATE_56007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_56007", action = "action_EVENT_GADGET_CREATE_56007", trigger_count = 0 },
	-- if queststate 换真门
	{ config_id = 1056008, name = "GROUP_LOAD_56008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_56008", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1056010, name = "TIME_AXIS_PASS_56010", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_56010", action = "action_EVENT_TIME_AXIS_PASS_56010", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 56003, gadget_id = 70310172, pos = { x = 40.057, y = 156.859, z = 535.697 }, rot = { x = 352.622, y = 297.305, z = 348.402 }, level = 1, isOneoff = true, interact_id = 126 }
	},
	triggers = {
		{ config_id = 1056004, name = "GADGET_STATE_CHANGE_56004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56004", action = "action_EVENT_GADGET_STATE_CHANGE_56004", trigger_count = 0 }
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
		gadgets = { 56001 },
		regions = { 56006 },
		triggers = { "GADGET_STATE_CHANGE_56005", "LEAVE_REGION_56006", "GADGET_CREATE_56007", "GROUP_LOAD_56008", "TIME_AXIS_PASS_56010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 56009 },
		regions = { },
		triggers = { "GROUP_LOAD_56008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56005(context, evt)
	-- 检测config_id为56001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 56001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56005(context, evt)
	-- 创建id为56002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 56002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"CloseTime"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CloseTime", {8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_56006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133056, 56001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_56006(context, evt)
	-- 将configid为 56001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133056, EntityType.GADGET, 56002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_56007(context, evt)
	if 56001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_56007(context, evt)
	-- 将configid为 56001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_56008(context, evt)
		    if ScriptLib.GetHostQuestState(context,4007010)==3 then
			ScriptLib.RefreshGroup(context, { group_id = 220133056, suite = 1 }) 
			end
		
		return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_56010(context, evt)
	if "CloseTime" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_56010(context, evt)
	-- 将configid为 56001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133056, EntityType.GADGET, 56002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
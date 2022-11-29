-- 基础信息
local base_info = {
	group_id = 220133059
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
	{ config_id = 59001, gadget_id = 70290286, pos = { x = 25.554, y = 144.151, z = 637.178 }, rot = { x = 1.111, y = 232.565, z = 359.494 }, level = 1, persistent = true, server_global_value_config = { ["SGV_XinyanPortal_Pic"]= 201} },
	{ config_id = 59002, gadget_id = 70290264, pos = { x = 25.554, y = 144.151, z = 637.178 }, rot = { x = 1.111, y = 232.565, z = 359.494 }, level = 1 }
}

-- 区域
regions = {
	-- 离开区域 把门关上
	{ config_id = 59006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 25.554, y = 144.151, z = 637.178 } }
}

-- 触发器
triggers = {
	-- 门开后 创localTrigger
	{ config_id = 1059005, name = "GADGET_STATE_CHANGE_59005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59005", action = "action_EVENT_GADGET_STATE_CHANGE_59005", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1059006, name = "LEAVE_REGION_59006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_59006", action = "action_EVENT_LEAVE_REGION_59006", trigger_count = 0 },
	-- 门初始状态重置
	{ config_id = 1059007, name = "GADGET_CREATE_59007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_59007", action = "action_EVENT_GADGET_CREATE_59007", trigger_count = 0 },
	-- if queststate 切空suite
	{ config_id = 1059008, name = "GROUP_LOAD_59008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_59008", trigger_count = 0 },
	-- 离开区域 把门关上
	{ config_id = 1059009, name = "TIME_AXIS_PASS_59009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_59009", action = "action_EVENT_TIME_AXIS_PASS_59009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 59003, gadget_id = 70310172, pos = { x = 21.956, y = 143.474, z = 634.352 }, rot = { x = 0.000, y = 54.714, z = 0.000 }, level = 1, isOneoff = true, interact_id = 126 }
	},
	triggers = {
		{ config_id = 1059004, name = "GADGET_STATE_CHANGE_59004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59004", action = "action_EVENT_GADGET_STATE_CHANGE_59004", trigger_count = 0 }
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
		gadgets = { 59001 },
		regions = { 59006 },
		triggers = { "GADGET_STATE_CHANGE_59005", "LEAVE_REGION_59006", "GADGET_CREATE_59007", "GROUP_LOAD_59008", "TIME_AXIS_PASS_59009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = startSuit,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59005(context, evt)
	-- 检测config_id为59001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 59001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59005(context, evt)
	-- 创建id为59002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 59002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"CloseTime"，时间节点为{8}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "CloseTime", {8}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_59006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220133059, 59001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_59006(context, evt)
	-- 将configid为 59001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133059, EntityType.GADGET, 59002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_59007(context, evt)
	if 59001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_59007(context, evt)
	-- 将configid为 59001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_59008(context, evt)
		    if ScriptLib.GetHostQuestState(context,4006912)==3 then
			ScriptLib.RefreshGroup(context, { group_id = 220133059, suite = 2 }) 
			end
		
		return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_59009(context, evt)
	if "CloseTime" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_59009(context, evt)
	-- 将configid为 59001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 59001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220133059, EntityType.GADGET, 59002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
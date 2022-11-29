-- 基础信息
local base_info = {
	group_id = 220111012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12013, monster_id = 25050301, pos = { x = 29.504, y = 2.881, z = 120.135 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12014, monster_id = 25050301, pos = { x = 35.908, y = 2.881, z = 120.983 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12001, gadget_id = 70290140, pos = { x = 32.484, y = 2.940, z = 127.395 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12002, gadget_id = 70290145, pos = { x = 32.508, y = 9.076, z = 126.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 12003, gadget_id = 70290142, pos = { x = 32.501, y = 4.935, z = 126.973 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12004, gadget_id = 70290144, pos = { x = 33.061, y = 4.487, z = 126.932 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12005, gadget_id = 70290144, pos = { x = 32.493, y = 5.668, z = 126.942 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12006, gadget_id = 70290143, pos = { x = 31.967, y = 4.466, z = 126.944 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 12008, gadget_id = 70360001, pos = { x = 32.520, y = 3.887, z = 127.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 12015, shape = RegionShape.SPHERE, radius = 5, pos = { x = 88.097, y = -4.150, z = 114.010 } }
}

-- 触发器
triggers = {
	{ config_id = 1012007, name = "TIMER_EVENT_12007", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_12007" },
	{ config_id = 1012009, name = "GADGET_STATE_CHANGE_12009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12009", action = "action_EVENT_GADGET_STATE_CHANGE_12009" },
	{ config_id = 1012010, name = "GADGET_STATE_CHANGE_12010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12010", action = "action_EVENT_GADGET_STATE_CHANGE_12010" },
	{ config_id = 1012011, name = "GADGET_STATE_CHANGE_12011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12011", action = "action_EVENT_GADGET_STATE_CHANGE_12011" },
	{ config_id = 1012012, name = "SELECT_OPTION_12012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12012", action = "action_EVENT_SELECT_OPTION_12012" },
	{ config_id = 1012015, name = "ENTER_REGION_12015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_12015", action = "action_EVENT_ENTER_REGION_12015" }
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
		gadgets = { 12001, 12002, 12003, 12004, 12005, 12006, 12008 },
		regions = { 12015 },
		triggers = { "TIMER_EVENT_12007", "GADGET_STATE_CHANGE_12009", "GADGET_STATE_CHANGE_12010", "GADGET_STATE_CHANGE_12011", "SELECT_OPTION_12012", "ENTER_REGION_12015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 12013 },
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

-- 触发操作
function action_EVENT_TIMER_EVENT_12007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220111012, 12008, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组220111012中， configid为12003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12009(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 12001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12009(context, evt)
	-- 改变指定group组220111012中， configid为12004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12004, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12010(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 12001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12010(context, evt)
	-- 改变指定group组220111012中， configid为12005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12005, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12011(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.GearStop变为GadgetState.GearAction1
	if 12001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12011(context, evt)
	-- 改变指定group组220111012中， configid为12006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12006, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟1.5秒后,向groupId为：220111012的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220111012, "time3", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12012(context, evt)
	-- 判断是gadgetid 12008 option_id 1
	if 12008 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12012(context, evt)
	-- 改变指定group组220111012中， configid为12001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220111012中， configid为12003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12003, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220111012中， configid为12006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12006, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220111010, 14)
	
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111010, 15)
	
	-- 删除指定group： 220111012 ；指定config：12008；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 220111012, 12008, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 改变指定group组220111012中， configid为12004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12004, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220111012中， configid为12005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220111012, 12005, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_12015(context, evt)
	if evt.param1 ~= 12015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_12015(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220111012, 2)
	
	return 0
end
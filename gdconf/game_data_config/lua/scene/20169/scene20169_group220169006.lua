-- 基础信息
local base_info = {
	group_id = 220169006
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
	{ config_id = 6001, gadget_id = 70290140, pos = { x = 25.572, y = 77.038, z = -81.017 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70290145, pos = { x = 25.045, y = 83.199, z = -81.022 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 70290142, pos = { x = 25.315, y = 79.034, z = -81.019 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 70290144, pos = { x = 25.284, y = 78.567, z = -81.593 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 70290144, pos = { x = 25.284, y = 79.752, z = -81.022 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6006, gadget_id = 70290143, pos = { x = 25.269, y = 78.570, z = -80.492 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6007, gadget_id = 70360001, pos = { x = 25.608, y = 77.985, z = -81.225 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6016, gadget_id = 70290833, pos = { x = 68.739, y = 77.470, z = -81.017 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 创建退出点
	{ config_id = 6014, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 15.000 }, pos = { x = 47.916, y = 80.473, z = -81.017 } },
	-- 退出点传送
	{ config_id = 6015, shape = RegionShape.CUBIC, size = { x = 4.000, y = 6.000, z = 3.000 }, pos = { x = 68.739, y = 77.470, z = -81.017 } }
}

-- 触发器
triggers = {
	{ config_id = 1006008, name = "TIME_AXIS_PASS_6008", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_6008", action = "action_EVENT_TIME_AXIS_PASS_6008" },
	{ config_id = 1006009, name = "GADGET_STATE_CHANGE_6009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6009", action = "action_EVENT_GADGET_STATE_CHANGE_6009" },
	{ config_id = 1006010, name = "GADGET_STATE_CHANGE_6010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6010", action = "action_EVENT_GADGET_STATE_CHANGE_6010" },
	{ config_id = 1006011, name = "GADGET_STATE_CHANGE_6011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6011", action = "action_EVENT_GADGET_STATE_CHANGE_6011" },
	{ config_id = 1006012, name = "SELECT_OPTION_6012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_6012", action = "action_EVENT_SELECT_OPTION_6012" },
	{ config_id = 1006013, name = "QUEST_FINISH_6013", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_6013", action = "action_EVENT_QUEST_FINISH_6013" },
	-- 创建退出点
	{ config_id = 1006014, name = "ENTER_REGION_6014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6014", action = "action_EVENT_ENTER_REGION_6014" },
	-- 退出点传送
	{ config_id = 1006015, name = "ENTER_REGION_6015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6015", action = "action_EVENT_ENTER_REGION_6015" }
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
		gadgets = { 6001, 6002 },
		regions = { 6014 },
		triggers = { "QUEST_FINISH_6013", "ENTER_REGION_6014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6016 },
		regions = { 6015 },
		triggers = { "ENTER_REGION_6015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 通知任务进度
function TLA_add_quest_progress(context, evt, quest_param)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, quest_param) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	return 0
end

-- 刷新指定group至指定suite
function TLA_refresh_group_tosuite(context, evt, group_id, suite_id)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = group_id, suite = suite_id }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_6008(context, evt)
	if "timer1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_6008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 220169006, 6007, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组220169006中， configid为6003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220169006, 6003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6009(context, evt)
	-- 检测config_id为6001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 6001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6009(context, evt)
	-- 改变指定group组220169006中， configid为6004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220169006, 6004, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6010(context, evt)
	-- 检测config_id为6001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 6001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6010(context, evt)
	-- 改变指定group组220169006中， configid为6005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220169006, 6005, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6011(context, evt)
	-- 检测config_id为6001的gadget是否从GadgetState.GearStop变为GadgetState.GearAction1
	if 6001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6011(context, evt)
	-- 改变指定group组220169006中， configid为6006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220169006, 6006, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 创建标识为"timer1"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer1", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_6012(context, evt)
	-- 判断是gadgetid 6007 option_id 1
	if 6007 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_6012(context, evt)
	-- 改变指定group组220169006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220169006, 6001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 6005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_6013(context, evt)
	--检查ID为303118的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 303118 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_6013(context, evt)
	-- 将configid为 6001 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6001, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6014(context, evt)
	if evt.param1 ~= 6014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220169006, 2)
	
	-- 将configid为 6016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 6016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6015(context, evt)
	if evt.param1 ~= 6015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6015(context, evt)
	TLA_add_quest_progress(context, evt, "30311901")
	
	ScriptLib.SetWeatherAreaState(context, 10150, 1) 
	
	TLA_refresh_group_tosuite(context, evt, 220169013, 4)
	
	return 0
end
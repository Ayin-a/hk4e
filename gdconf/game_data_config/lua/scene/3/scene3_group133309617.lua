-- 基础信息
local base_info = {
	group_id = 133309617
}

-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 1,
	group_id = 133309617,
	gadget_controller_id = 617004,
	point_camera = 617017,
	gadget_lookEntity = 617016,
	look_duration = 4
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[617001] = { config_id = 617001, monster_id = 24040101, pos = { x = -2488.228, y = 195.452, z = 6048.746 }, rot = { x = 0.000, y = 178.998, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[617002] = { config_id = 617002, gadget_id = 70330438, pos = { x = -2488.415, y = 194.695, z = 6044.720 }, rot = { x = 0.000, y = 191.001, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[617003] = { config_id = 617003, gadget_id = 70330392, pos = { x = -2501.926, y = 195.502, z = 6036.230 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[617004] = { config_id = 617004, gadget_id = 70360001, pos = { x = -2488.425, y = 195.164, z = 6044.706 }, rot = { x = 0.000, y = 304.002, z = 0.000 }, level = 32, area_id = 27 },
	[617010] = { config_id = 617010, gadget_id = 70330392, pos = { x = -2501.926, y = 195.502, z = 6025.630 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[617011] = { config_id = 617011, gadget_id = 70330392, pos = { x = -2496.626, y = 195.502, z = 6030.930 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[617012] = { config_id = 617012, gadget_id = 70330392, pos = { x = -2507.226, y = 195.502, z = 6030.930 }, rot = { x = 90.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[617013] = { config_id = 617013, gadget_id = 70330392, pos = { x = -2501.926, y = 200.802, z = 6030.930 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[617016] = { config_id = 617016, gadget_id = 70310226, pos = { x = -2501.434, y = 193.576, z = 6030.312 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1617005, name = "GROUP_LOAD_617005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_617005", action = "action_EVENT_GROUP_LOAD_617005", trigger_count = 0 },
	{ config_id = 1617006, name = "CHALLENGE_SUCCESS_617006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_617006", trigger_count = 0 },
	{ config_id = 1617007, name = "CHALLENGE_FAIL_617007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_617007", trigger_count = 0 },
	{ config_id = 1617008, name = "GADGET_CREATE_617008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_617008", action = "action_EVENT_GADGET_CREATE_617008", trigger_count = 0 },
	{ config_id = 1617009, name = "SELECT_OPTION_617009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_617009", action = "action_EVENT_SELECT_OPTION_617009", trigger_count = 0 },
	-- 挑战成功后镜头
	{ config_id = 1617014, name = "GADGET_STATE_CHANGE_617014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_617014", action = "action_EVENT_GADGET_STATE_CHANGE_617014" },
	-- 新增保底
	{ config_id = 1617018, name = "GROUP_LOAD_617018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_617018", action = "action_EVENT_GROUP_LOAD_617018", trigger_count = 0 }
}

-- 点位
points = {
	[617017] = { config_id = 617017, pos = { x = -2480.379, y = 217.170, z = 6022.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 27 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1617015, name = "TIME_AXIS_PASS_617015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_617015", action = "action_EVENT_TIME_AXIS_PASS_617015" }
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
		gadgets = { 617002, 617003, 617004, 617010, 617011, 617012, 617013, 617016 },
		regions = { },
		triggers = { "GROUP_LOAD_617005", "CHALLENGE_SUCCESS_617006", "CHALLENGE_FAIL_617007", "GADGET_CREATE_617008", "SELECT_OPTION_617009", "GADGET_STATE_CHANGE_617014", "GROUP_LOAD_617018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 617001 },
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
function condition_EVENT_GROUP_LOAD_617005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_617005(context, evt)
	-- 将configid为 617002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为617004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 617004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309617, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_617006(context, evt)
	-- 改变指定group组133309091中， configid为91003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133309091, 91003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 617002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_617007(context, evt)
	-- 将configid为 617002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为617004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 617004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309617, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_617008(context, evt)
	if 617004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_617008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309617, 617004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_617009(context, evt)
	-- 判断是gadgetid 617004 option_id 177
	if 617004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_617009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 617002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 617002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_617014(context, evt)
	if 617002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_617014(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_617018(context, evt)
	-- 判断变量"isFinish"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_617018(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 617013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		end
	
	return 0
end

require "V3_0/CameraLook"
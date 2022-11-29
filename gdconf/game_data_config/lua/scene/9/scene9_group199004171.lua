-- 基础信息
local base_info = {
	group_id = 199004171
}

-- Trigger变量
local defs = {
	duration = 60,
	group_id = 199004171
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
	{ config_id = 171001, gadget_id = 70211111, pos = { x = -358.807, y = 257.012, z = -567.746 }, rot = { x = 0.000, y = 0.000, z = 340.646 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 171002, gadget_id = 70350083, pos = { x = -391.294, y = 119.766, z = -678.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 171003, gadget_id = 70360001, pos = { x = -391.294, y = 119.766, z = -678.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 171004, gadget_id = 70350292, pos = { x = -392.073, y = 120.801, z = -680.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 },
	{ config_id = 171012, gadget_id = 70900380, pos = { x = -394.485, y = 128.745, z = -678.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171013, gadget_id = 70900380, pos = { x = -394.485, y = 139.794, z = -678.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171014, gadget_id = 70900380, pos = { x = -394.485, y = 151.727, z = -678.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171015, gadget_id = 70900380, pos = { x = -384.661, y = 155.434, z = -677.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171016, gadget_id = 70900380, pos = { x = -378.031, y = 161.187, z = -673.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171017, gadget_id = 70690027, pos = { x = -364.554, y = 158.134, z = -667.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171018, gadget_id = 70690001, pos = { x = -364.584, y = 164.149, z = -666.884 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171019, gadget_id = 70690001, pos = { x = -364.584, y = 172.777, z = -666.884 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171020, gadget_id = 70690001, pos = { x = -364.584, y = 180.317, z = -666.884 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171021, gadget_id = 70690001, pos = { x = -364.584, y = 186.914, z = -666.884 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171023, gadget_id = 70690001, pos = { x = -368.778, y = 199.030, z = -659.597 }, rot = { x = 0.000, y = 349.077, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171024, gadget_id = 70690001, pos = { x = -370.346, y = 199.030, z = -651.470 }, rot = { x = 0.000, y = 349.077, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171025, gadget_id = 70690001, pos = { x = -371.705, y = 199.030, z = -644.426 }, rot = { x = 0.000, y = 349.077, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171026, gadget_id = 70350292, pos = { x = -382.422, y = 192.414, z = -619.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 400 },
	{ config_id = 171027, gadget_id = 70900380, pos = { x = -381.541, y = 198.566, z = -621.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171029, gadget_id = 70900380, pos = { x = -381.541, y = 208.807, z = -621.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 171030, gadget_id = 70900380, pos = { x = -381.541, y = 221.545, z = -621.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171005, name = "CHALLENGE_SUCCESS_171005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_171005", trigger_count = 0 },
	{ config_id = 1171006, name = "CHALLENGE_FAIL_171006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_171006", trigger_count = 0 },
	{ config_id = 1171007, name = "GADGET_STATE_CHANGE_171007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171007", action = "action_EVENT_GADGET_STATE_CHANGE_171007", trigger_count = 0 },
	{ config_id = 1171008, name = "GADGET_STATE_CHANGE_171008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_171008", action = "", tag = "202" },
	{ config_id = 1171009, name = "GADGET_CREATE_171009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_171009", action = "action_EVENT_GADGET_CREATE_171009", trigger_count = 0 },
	{ config_id = 1171010, name = "SELECT_OPTION_171010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_171010", action = "action_EVENT_SELECT_OPTION_171010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1171011, name = "GROUP_LOAD_171011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_171011", trigger_count = 0 }
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
	end_suite = 3,
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
		gadgets = { 171002, 171003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_171005", "CHALLENGE_FAIL_171006", "GADGET_STATE_CHANGE_171007", "GADGET_STATE_CHANGE_171008", "GADGET_CREATE_171009", "SELECT_OPTION_171010", "GROUP_LOAD_171011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 171001, 171004, 171012, 171013, 171014, 171015, 171016, 171017, 171018, 171019, 171020, 171021, 171023, 171024, 171025, 171026, 171027, 171029, 171030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 171002 },
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
function action_EVENT_CHALLENGE_SUCCESS_171005(context, evt)
	-- 将configid为 171002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199004171, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004171, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_171006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004171, 2)
	
	-- 将configid为 171002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为171003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 171003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171007(context, evt)
	if 171002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_171007(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 202, defs.duration, 7, 202, 1) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_171008(context, evt)
	if 171001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_171009(context, evt)
	if 171003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_171009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004171, 171003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_171010(context, evt)
	-- 判断是gadgetid 171003 option_id 177
	if 171003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_171010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 171003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 171002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_171011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004171, 2)
	
	-- 将configid为 171002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为171003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 171003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

require "V2_0/ElectricCore"
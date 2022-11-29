-- 基础信息
local base_info = {
	group_id = 199004185
}

-- Trigger变量
local defs = {
	duration = 45,
	group_id = 199004185
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
	{ config_id = 185001, gadget_id = 70211111, pos = { x = -292.417, y = 162.925, z = -621.129 }, rot = { x = 2.359, y = 279.283, z = 0.385 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, autopick = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 185002, gadget_id = 70350083, pos = { x = -392.101, y = 119.911, z = -674.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 185003, gadget_id = 70360001, pos = { x = -392.101, y = 120.876, z = -674.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 185004, gadget_id = 70690027, pos = { x = -391.898, y = 120.567, z = -675.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185012, gadget_id = 70690001, pos = { x = -393.331, y = 126.121, z = -674.654 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185013, gadget_id = 70690001, pos = { x = -393.331, y = 136.019, z = -674.654 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185014, gadget_id = 70690001, pos = { x = -393.331, y = 146.575, z = -674.654 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185015, gadget_id = 70690001, pos = { x = -393.331, y = 157.505, z = -674.654 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185016, gadget_id = 70690001, pos = { x = -393.331, y = 167.048, z = -674.654 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185017, gadget_id = 70360046, pos = { x = -390.197, y = 169.071, z = -663.263 }, rot = { x = 0.000, y = 56.123, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185018, gadget_id = 70360046, pos = { x = -381.475, y = 168.291, z = -657.407 }, rot = { x = 0.000, y = 56.123, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185019, gadget_id = 70360046, pos = { x = -372.804, y = 168.189, z = -651.586 }, rot = { x = 0.000, y = 56.123, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185020, gadget_id = 70690010, pos = { x = -363.448, y = 120.000, z = -644.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185021, gadget_id = 70360046, pos = { x = -333.562, y = 162.229, z = -625.239 }, rot = { x = 0.000, y = 56.123, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185022, gadget_id = 70360046, pos = { x = -324.395, y = 161.942, z = -620.692 }, rot = { x = 0.000, y = 75.258, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185023, gadget_id = 70360046, pos = { x = -313.551, y = 162.229, z = -618.986 }, rot = { x = 0.000, y = 110.432, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185024, gadget_id = 70360046, pos = { x = -300.066, y = 162.229, z = -621.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185029, gadget_id = 70360046, pos = { x = -306.892, y = 162.229, z = -620.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 185030, gadget_id = 70360046, pos = { x = -292.848, y = 162.229, z = -621.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1185005, name = "CHALLENGE_SUCCESS_185005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_185005", trigger_count = 0 },
	{ config_id = 1185006, name = "CHALLENGE_FAIL_185006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_185006", trigger_count = 0 },
	{ config_id = 1185007, name = "GADGET_STATE_CHANGE_185007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_185007", action = "action_EVENT_GADGET_STATE_CHANGE_185007", trigger_count = 0 },
	{ config_id = 1185008, name = "GADGET_STATE_CHANGE_185008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_185008", action = "", tag = "202" },
	{ config_id = 1185009, name = "GADGET_CREATE_185009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_185009", action = "action_EVENT_GADGET_CREATE_185009", trigger_count = 0 },
	{ config_id = 1185010, name = "SELECT_OPTION_185010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_185010", action = "action_EVENT_SELECT_OPTION_185010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1185011, name = "GROUP_LOAD_185011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_185011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 185025, gadget_id = 70690001, pos = { x = -285.382, y = 159.317, z = -626.809 }, rot = { x = 4.400, y = 121.511, z = 358.822 }, level = 20, area_id = 400 },
		{ config_id = 185026, gadget_id = 70690001, pos = { x = -267.972, y = 153.529, z = -638.069 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 185027, gadget_id = 70690001, pos = { x = -267.972, y = 144.529, z = -638.069 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
		{ config_id = 185028, gadget_id = 70690001, pos = { x = -267.972, y = 134.096, z = -638.069 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
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
		gadgets = { 185002, 185003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_185005", "CHALLENGE_FAIL_185006", "GADGET_STATE_CHANGE_185007", "GADGET_STATE_CHANGE_185008", "GADGET_CREATE_185009", "SELECT_OPTION_185010", "GROUP_LOAD_185011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 185001, 185004, 185012, 185013, 185014, 185015, 185016, 185017, 185018, 185019, 185020, 185021, 185022, 185023, 185024, 185029, 185030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 185002 },
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
function action_EVENT_CHALLENGE_SUCCESS_185005(context, evt)
	-- 将configid为 185002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 185002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199004185, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004185, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_185006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004185, 2)
	
	-- 将configid为 185002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 185002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为185003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 185003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_185007(context, evt)
	if 185002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_185007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_185008(context, evt)
	if 185001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_185009(context, evt)
	if 185003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_185009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004185, 185003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_185010(context, evt)
	-- 判断是gadgetid 185003 option_id 177
	if 185003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_185010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 185003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 185002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 185002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_185011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004185, 2)
	
	-- 将configid为 185002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 185002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为185003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 185003 }) then
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
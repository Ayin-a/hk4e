-- 基础信息
local base_info = {
	group_id = 199004162
}

-- Trigger变量
local defs = {
	duration = 45,
	group_id = 199004162
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
	{ config_id = 162001, gadget_id = 70211111, pos = { x = -352.603, y = 227.558, z = -635.073 }, rot = { x = 0.000, y = 216.937, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 162002, gadget_id = 70350083, pos = { x = -391.448, y = 120.257, z = -680.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 162003, gadget_id = 70360001, pos = { x = -391.448, y = 120.257, z = -680.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 162004, gadget_id = 70690011, pos = { x = -390.807, y = 119.862, z = -679.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162012, gadget_id = 70690001, pos = { x = -391.134, y = 133.728, z = -679.866 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162013, gadget_id = 70690001, pos = { x = -391.134, y = 152.517, z = -679.866 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162014, gadget_id = 70690001, pos = { x = -391.134, y = 165.192, z = -679.866 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162015, gadget_id = 70690001, pos = { x = -391.134, y = 180.993, z = -679.866 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162016, gadget_id = 70690001, pos = { x = -391.134, y = 190.246, z = -679.866 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162017, gadget_id = 70690001, pos = { x = -388.836, y = 198.626, z = -663.468 }, rot = { x = 0.000, y = 18.040, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162019, gadget_id = 70350277, pos = { x = -352.121, y = 204.758, z = -648.038 }, rot = { x = 0.000, y = 54.821, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162023, gadget_id = 70690011, pos = { x = -381.170, y = 191.074, z = -635.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162024, gadget_id = 70690001, pos = { x = -381.524, y = 206.368, z = -635.704 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 162025, gadget_id = 70690001, pos = { x = -381.524, y = 222.150, z = -635.704 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1162005, name = "CHALLENGE_SUCCESS_162005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_162005", trigger_count = 0 },
	{ config_id = 1162006, name = "CHALLENGE_FAIL_162006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_162006", trigger_count = 0 },
	{ config_id = 1162007, name = "GADGET_STATE_CHANGE_162007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162007", action = "action_EVENT_GADGET_STATE_CHANGE_162007", trigger_count = 0 },
	{ config_id = 1162008, name = "GADGET_STATE_CHANGE_162008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_162008", action = "", tag = "202" },
	{ config_id = 1162009, name = "GADGET_CREATE_162009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_162009", action = "action_EVENT_GADGET_CREATE_162009", trigger_count = 0 },
	{ config_id = 1162010, name = "SELECT_OPTION_162010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_162010", action = "action_EVENT_SELECT_OPTION_162010", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1162011, name = "GROUP_LOAD_162011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_162011", trigger_count = 0 }
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
		gadgets = { 162002, 162003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_162005", "CHALLENGE_FAIL_162006", "GADGET_STATE_CHANGE_162007", "GADGET_STATE_CHANGE_162008", "GADGET_CREATE_162009", "SELECT_OPTION_162010", "GROUP_LOAD_162011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 162001, 162004, 162012, 162013, 162014, 162015, 162016, 162017, 162019, 162023, 162024, 162025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 162002 },
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
function action_EVENT_CHALLENGE_SUCCESS_162005(context, evt)
	-- 将configid为 162002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199004162, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199004162, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_162006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004162, 2)
	
	-- 将configid为 162002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为162003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 162003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_162007(context, evt)
	if 162002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_162007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_162008(context, evt)
	if 162001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_162009(context, evt)
	if 162003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_162009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199004162, 162003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_162010(context, evt)
	-- 判断是gadgetid 162003 option_id 177
	if 162003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_162010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 162003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 162002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_162011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004162, 2)
	
	-- 将configid为 162002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 162002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为162003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 162003 }) then
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
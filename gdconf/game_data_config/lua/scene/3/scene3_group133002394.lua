-- 基础信息
local base_info = {
	group_id = 133002394
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 133002394
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 394011, monster_id = 20010801, pos = { x = 1806.245, y = 233.200, z = -894.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100, area_id = 3 },
	{ config_id = 394012, monster_id = 20010801, pos = { x = 1798.359, y = 233.200, z = -899.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100, area_id = 3 },
	{ config_id = 394013, monster_id = 20010801, pos = { x = 1794.083, y = 233.200, z = -890.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_id = 1000100, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 394001, gadget_id = 70211101, pos = { x = 1792.572, y = 236.116, z = -914.038 }, rot = { x = 0.000, y = 15.901, z = 0.000 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 394002, gadget_id = 70350083, pos = { x = 1842.406, y = 242.081, z = -822.470 }, rot = { x = 0.000, y = 311.688, z = 0.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 394003, gadget_id = 70360001, pos = { x = 1842.406, y = 243.045, z = -822.476 }, rot = { x = 0.000, y = 240.023, z = 0.000 }, level = 10, persistent = true, area_id = 3 },
	{ config_id = 394004, gadget_id = 70900201, pos = { x = 1792.669, y = 236.981, z = -913.652 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1394005, name = "CHALLENGE_SUCCESS_394005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_394005" },
	{ config_id = 1394006, name = "CHALLENGE_FAIL_394006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_394006", trigger_count = 0 },
	{ config_id = 1394007, name = "GADGET_STATE_CHANGE_394007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_394007", action = "action_EVENT_GADGET_STATE_CHANGE_394007", trigger_count = 0 },
	{ config_id = 1394008, name = "GADGET_STATE_CHANGE_394008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_394008", action = "", tag = "202" },
	{ config_id = 1394009, name = "GADGET_CREATE_394009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_394009", action = "action_EVENT_GADGET_CREATE_394009", trigger_count = 0 },
	{ config_id = 1394010, name = "SELECT_OPTION_394010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_394010", action = "action_EVENT_SELECT_OPTION_394010", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 394002, 394003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_394005", "CHALLENGE_FAIL_394006", "GADGET_STATE_CHANGE_394007", "GADGET_STATE_CHANGE_394008", "GADGET_CREATE_394009", "SELECT_OPTION_394010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 394011, 394012, 394013 },
		gadgets = { 394001, 394004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 394002 },
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
function action_EVENT_CHALLENGE_SUCCESS_394005(context, evt)
	-- 将configid为 394002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 394002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133002394, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133002394, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_394006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133002394, 2)
	
	-- 将configid为 394002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 394002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为394003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 394003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_394007(context, evt)
	if 394002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_394007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_394008(context, evt)
	if 394001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_394009(context, evt)
	if 394003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_394009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133002394, 394003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_394010(context, evt)
	-- 判断是gadgetid 394003 option_id 177
	if 394003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_394010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 394003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 394002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 394002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
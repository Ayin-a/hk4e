-- 基础信息
local base_info = {
	group_id = 133007261
}

-- Trigger变量
local defs = {
	duration = 50,
	group_id = 133007261
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
	{ config_id = 261001, gadget_id = 70211111, pos = { x = 2694.198, y = 238.484, z = 233.239 }, rot = { x = 1.270, y = 10.697, z = 359.524 }, level = 21, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, oneoff_reset_version = 2, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 261002, gadget_id = 70350083, pos = { x = 2761.632, y = 239.017, z = 399.655 }, rot = { x = 0.000, y = 306.504, z = 0.000 }, level = 23, persistent = true, area_id = 4 },
	{ config_id = 261003, gadget_id = 70360001, pos = { x = 2761.632, y = 239.982, z = 399.649 }, rot = { x = 0.000, y = 306.504, z = 0.000 }, level = 23, persistent = true, area_id = 4 },
	{ config_id = 261004, gadget_id = 70690006, pos = { x = 2758.536, y = 240.443, z = 393.562 }, rot = { x = 0.000, y = 132.108, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 261011, gadget_id = 70690001, pos = { x = 2756.127, y = 269.000, z = 387.299 }, rot = { x = 0.000, y = 15.422, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 261012, gadget_id = 70690001, pos = { x = 2749.117, y = 266.500, z = 359.698 }, rot = { x = 0.000, y = 19.247, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 261013, gadget_id = 70690001, pos = { x = 2736.785, y = 264.000, z = 329.710 }, rot = { x = 0.000, y = 19.062, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 261014, gadget_id = 70690001, pos = { x = 2719.854, y = 261.500, z = 292.354 }, rot = { x = 0.000, y = 20.616, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 261015, gadget_id = 70690001, pos = { x = 2708.921, y = 260.700, z = 265.779 }, rot = { x = 0.000, y = 24.987, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1261005, name = "CHALLENGE_SUCCESS_261005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_261005" },
	{ config_id = 1261006, name = "CHALLENGE_FAIL_261006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_261006", trigger_count = 0 },
	{ config_id = 1261007, name = "GADGET_STATE_CHANGE_261007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261007", action = "action_EVENT_GADGET_STATE_CHANGE_261007", trigger_count = 0 },
	{ config_id = 1261008, name = "GADGET_STATE_CHANGE_261008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_261008", action = "", tag = "202" },
	{ config_id = 1261009, name = "GADGET_CREATE_261009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_261009", action = "action_EVENT_GADGET_CREATE_261009", trigger_count = 0 },
	{ config_id = 1261010, name = "SELECT_OPTION_261010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_261010", action = "action_EVENT_SELECT_OPTION_261010", trigger_count = 0 }
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
		gadgets = { 261002, 261003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_261005", "CHALLENGE_FAIL_261006", "GADGET_STATE_CHANGE_261007", "GADGET_STATE_CHANGE_261008", "GADGET_CREATE_261009", "SELECT_OPTION_261010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 261001, 261004, 261011, 261012, 261013, 261014, 261015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 261002 },
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
function action_EVENT_CHALLENGE_SUCCESS_261005(context, evt)
	-- 将configid为 261002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133007261, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133007261, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_261006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133007261, 2)
	
	-- 将configid为 261002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为261003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 261003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_261007(context, evt)
	if 261002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_261007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_261008(context, evt)
	if 261001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_261009(context, evt)
	if 261003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_261009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133007261, 261003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_261010(context, evt)
	-- 判断是gadgetid 261003 option_id 177
	if 261003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_261010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 261003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 261002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 261002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
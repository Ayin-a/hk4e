-- 基础信息
local base_info = {
	group_id = 144002094
}

-- Trigger变量
local defs = {
	duration = 30,
	group_id = 144002094
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
	{ config_id = 94001, gadget_id = 70211111, pos = { x = 206.153, y = 210.715, z = 141.906 }, rot = { x = 6.876, y = 0.000, z = 348.935 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 94004, gadget_id = 70690001, pos = { x = 188.822, y = 208.786, z = 252.262 }, rot = { x = 1.833, y = 179.194, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 94011, gadget_id = 70690001, pos = { x = 188.934, y = 208.531, z = 244.279 }, rot = { x = 1.833, y = 179.194, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 94012, gadget_id = 70690001, pos = { x = 189.031, y = 208.310, z = 237.380 }, rot = { x = 354.829, y = 179.194, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 94013, gadget_id = 70690001, pos = { x = 189.168, y = 209.191, z = 227.639 }, rot = { x = 354.829, y = 179.194, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 94014, gadget_id = 70690001, pos = { x = 189.319, y = 210.162, z = 216.909 }, rot = { x = 354.829, y = 179.194, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 94015, gadget_id = 70690001, pos = { x = 189.468, y = 211.120, z = 206.326 }, rot = { x = 354.829, y = 179.194, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 94016, gadget_id = 70690001, pos = { x = 189.720, y = 212.742, z = 188.409 }, rot = { x = 354.872, y = 171.836, z = 0.661 }, level = 1, area_id = 102 },
	{ config_id = 94017, gadget_id = 70690001, pos = { x = 191.611, y = 213.937, z = 175.230 }, rot = { x = 354.872, y = 171.836, z = 0.661 }, level = 1, area_id = 102 },
	{ config_id = 94018, gadget_id = 70690001, pos = { x = 193.551, y = 215.163, z = 161.704 }, rot = { x = 355.049, y = 162.383, z = 1.494 }, level = 1, area_id = 102 },
	{ config_id = 94019, gadget_id = 70690001, pos = { x = 196.961, y = 216.139, z = 150.967 }, rot = { x = 355.049, y = 162.383, z = 1.494 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094005, name = "CHALLENGE_SUCCESS_94005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_94005" },
	{ config_id = 1094006, name = "CHALLENGE_FAIL_94006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_94006", trigger_count = 0 },
	{ config_id = 1094007, name = "GADGET_STATE_CHANGE_94007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94007", action = "action_EVENT_GADGET_STATE_CHANGE_94007", trigger_count = 0 },
	{ config_id = 1094008, name = "GADGET_STATE_CHANGE_94008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_94008", action = "", tag = "202" },
	{ config_id = 1094009, name = "GADGET_CREATE_94009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_94009", action = "", trigger_count = 0 },
	{ config_id = 1094010, name = "SELECT_OPTION_94010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_94010", action = "action_EVENT_SELECT_OPTION_94010", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_94005(context, evt)
	-- 将configid为 94002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002094, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002094, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_94006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002094, 2)
	
	-- 将configid为 94002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为94003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 94003 }) then
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
function condition_EVENT_GADGET_STATE_CHANGE_94007(context, evt)
	if 94002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_94007(context, evt)
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
function condition_EVENT_GADGET_STATE_CHANGE_94008(context, evt)
	if 94001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_94009(context, evt)
	if 94003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_94010(context, evt)
	-- 判断是gadgetid 94003 option_id 177
	if 94003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_94010(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 94002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
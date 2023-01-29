-- 基础信息
local base_info = {
	group_id = 251010002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2005, monster_id = 21010101, pos = { x = 33.175, y = 9.072, z = 51.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 2009, monster_id = 21020101, pos = { x = 46.668, y = 9.072, z = 56.742 }, rot = { x = 0.000, y = 209.025, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 2010, monster_id = 20010601, pos = { x = 48.108, y = 9.072, z = 41.354 }, rot = { x = 0.000, y = 301.706, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 2011, monster_id = 20010901, pos = { x = 50.316, y = 9.072, z = 49.723 }, rot = { x = 0.000, y = 269.864, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 2012, monster_id = 22010102, pos = { x = 30.001, y = 9.072, z = 36.928 }, rot = { x = 0.000, y = 228.311, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70350082, pos = { x = 39.534, y = 9.072, z = 45.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1 },
	{ config_id = 2002, gadget_id = 70360001, pos = { x = 39.534, y = 10.096, z = 45.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70211011, pos = { x = 50.207, y = 10.395, z = 28.453 }, rot = { x = 0.000, y = 309.430, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", isOneoff = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002003, name = "GADGET_CREATE_2003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2003", action = "action_EVENT_GADGET_CREATE_2003", trigger_count = 0 },
	{ config_id = 1002004, name = "SELECT_OPTION_2004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2004", action = "action_EVENT_SELECT_OPTION_2004", trigger_count = 0 },
	{ config_id = 1002007, name = "CHALLENGE_SUCCESS_2007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "111", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_2007", trigger_count = 0 },
	{ config_id = 1002008, name = "CHALLENGE_FAIL_2008", event = EventType.EVENT_CHALLENGE_FAIL, source = "111", condition = "", action = "action_EVENT_CHALLENGE_FAIL_2008", trigger_count = 0 }
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
		gadgets = { 2001, 2002 },
		regions = { },
		triggers = { "GADGET_CREATE_2003", "SELECT_OPTION_2004", "CHALLENGE_SUCCESS_2007", "CHALLENGE_FAIL_2008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2005, 2009, 2010, 2011, 2012 },
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
function condition_EVENT_GADGET_CREATE_2003(context, evt)
	if 2002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 251010002, 2002, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2004(context, evt)
	-- 判断是gadgetid 2002 option_id 177
	if 2002 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2004(context, evt)
	-- 创建编号为111（该挑战的识别id),挑战内容为2的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 111, 2, 60, 251010002, 5, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 251010002, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_2007(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 改变指定group组251010004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 251010004, 4002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_2008(context, evt)
	-- 将configid为 2001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 251010002, 2)
	
	return 0
end
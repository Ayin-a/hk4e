-- 基础信息
local base_info = {
	group_id = 144004016
}

-- Trigger变量
local defs = {
	duration = 90,
	group_id = 144004016
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
	{ config_id = 16001, gadget_id = 70211111, pos = { x = -762.232, y = 119.825, z = 74.785 }, rot = { x = 0.000, y = 285.229, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 16002, gadget_id = 70350093, pos = { x = -708.780, y = 137.856, z = -61.050 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, persistent = true, area_id = 103 },
	{ config_id = 16003, gadget_id = 70360001, pos = { x = -708.780, y = 137.856, z = -61.050 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, persistent = true, area_id = 103 },
	{ config_id = 16004, gadget_id = 70360094, pos = { x = -707.334, y = 135.983, z = -55.521 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, area_id = 103 },
	{ config_id = 16005, gadget_id = 70360094, pos = { x = -701.702, y = 133.213, z = -36.196 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, area_id = 103 },
	{ config_id = 16006, gadget_id = 70360094, pos = { x = -685.049, y = 138.716, z = 1.953 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, area_id = 103 },
	{ config_id = 16007, gadget_id = 70360094, pos = { x = -703.738, y = 148.995, z = 20.081 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, area_id = 103 },
	{ config_id = 16008, gadget_id = 70360094, pos = { x = -696.121, y = 142.313, z = 10.497 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, area_id = 103 },
	{ config_id = 16009, gadget_id = 70360094, pos = { x = -732.665, y = 154.069, z = 38.382 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, area_id = 103 },
	{ config_id = 16010, gadget_id = 70360094, pos = { x = -736.274, y = 151.603, z = 53.099 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, area_id = 103 },
	{ config_id = 16011, gadget_id = 70360094, pos = { x = -754.201, y = 120.962, z = 72.661 }, rot = { x = 21.229, y = 3.006, z = 15.939 }, level = 20, area_id = 103 },
	{ config_id = 16018, gadget_id = 70690001, pos = { x = -706.485, y = 135.219, z = -52.767 }, rot = { x = 0.000, y = 14.690, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 16020, gadget_id = 70690001, pos = { x = -699.089, y = 131.469, z = -31.471 }, rot = { x = 334.376, y = 21.451, z = 4.243 }, level = 1, area_id = 103 },
	{ config_id = 16021, gadget_id = 70690001, pos = { x = -696.043, y = 133.977, z = -26.437 }, rot = { x = 343.097, y = 24.880, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 16022, gadget_id = 70690001, pos = { x = -691.853, y = 137.003, z = -17.404 }, rot = { x = 343.097, y = 24.880, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 16024, gadget_id = 70690001, pos = { x = -708.969, y = 148.667, z = 25.082 }, rot = { x = 346.535, y = 303.453, z = 0.688 }, level = 1, area_id = 103 },
	{ config_id = 16025, gadget_id = 70690001, pos = { x = -713.853, y = 150.069, z = 28.309 }, rot = { x = 346.535, y = 303.453, z = 0.688 }, level = 1, area_id = 103 },
	{ config_id = 16026, gadget_id = 70690001, pos = { x = -721.960, y = 152.395, z = 33.665 }, rot = { x = 346.535, y = 303.453, z = 0.688 }, level = 1, area_id = 103 },
	{ config_id = 16028, gadget_id = 70690001, pos = { x = -741.459, y = 146.296, z = 57.887 }, rot = { x = 57.603, y = 309.656, z = 7.480 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016012, name = "CHALLENGE_SUCCESS_16012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_16012" },
	{ config_id = 1016013, name = "CHALLENGE_FAIL_16013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_16013", trigger_count = 0 },
	{ config_id = 1016014, name = "GADGET_STATE_CHANGE_16014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_16014", action = "action_EVENT_GADGET_STATE_CHANGE_16014", trigger_count = 0 },
	{ config_id = 1016015, name = "ANY_GADGET_DIE_16015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1016016, name = "GADGET_CREATE_16016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_16016", action = "action_EVENT_GADGET_CREATE_16016", trigger_count = 0 },
	{ config_id = 1016017, name = "SELECT_OPTION_16017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_16017", action = "action_EVENT_SELECT_OPTION_16017", trigger_count = 0 },
	{ config_id = 1016023, name = "ANY_GADGET_DIE_16023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_16023", action = "action_EVENT_ANY_GADGET_DIE_16023", trigger_count = 0 },
	{ config_id = 1016027, name = "ANY_GADGET_DIE_16027", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_16027", action = "action_EVENT_ANY_GADGET_DIE_16027", trigger_count = 0 },
	{ config_id = 1016029, name = "ANY_GADGET_DIE_16029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_16029", action = "action_EVENT_ANY_GADGET_DIE_16029", trigger_count = 0 }
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
		gadgets = { 16002, 16003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_16012", "CHALLENGE_FAIL_16013", "GADGET_STATE_CHANGE_16014", "ANY_GADGET_DIE_16015", "GADGET_CREATE_16016", "SELECT_OPTION_16017", "ANY_GADGET_DIE_16023", "ANY_GADGET_DIE_16027", "ANY_GADGET_DIE_16029" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 16004, 16005, 16006, 16007, 16008, 16009, 16010, 16011, 16018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 16002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 16020, 16021, 16022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 16024, 16025, 16026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 16028 },
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
function action_EVENT_CHALLENGE_SUCCESS_16012(context, evt)
	-- 将configid为 16002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004016, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004016, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为16001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 16001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004016, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004016, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004016, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_16013(context, evt)
	-- 将configid为 16002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为16003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 16003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004016, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004016, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004016, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004016, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_16014(context, evt)
	if 16002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 218, defs.duration, 2, 218, 8) then
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
function condition_EVENT_GADGET_CREATE_16016(context, evt)
	if 16003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_16016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004016, 16003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_16017(context, evt)
	-- 判断是gadgetid 16003 option_id 177
	if 16003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_16017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 16003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 16002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 16002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_16023(context, evt)
	if 16005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_16023(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004016, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_16027(context, evt)
	if 16007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_16027(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004016, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_16029(context, evt)
	if 16010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_16029(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004016, 6)
	
	return 0
end
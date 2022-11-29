-- 基础信息
local base_info = {
	group_id = 133220609
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133220609
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
	{ config_id = 609001, gadget_id = 70211101, pos = { x = -3197.622, y = 223.611, z = -3950.642 }, rot = { x = 3.220, y = 85.650, z = 14.545 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 609002, gadget_id = 70350093, pos = { x = -3013.211, y = 208.425, z = -3936.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
	{ config_id = 609003, gadget_id = 70360001, pos = { x = -3013.211, y = 209.390, z = -3936.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
	{ config_id = 609004, gadget_id = 70290150, pos = { x = -3033.117, y = 200.000, z = -3935.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 609005, gadget_id = 70290150, pos = { x = -3057.163, y = 200.000, z = -3938.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 609006, gadget_id = 70290150, pos = { x = -3087.156, y = 200.000, z = -3942.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 609007, gadget_id = 70290150, pos = { x = -3117.911, y = 200.000, z = -3943.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 609008, gadget_id = 70290150, pos = { x = -3146.583, y = 200.000, z = -3944.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 609009, gadget_id = 70290150, pos = { x = -3186.595, y = 201.706, z = -3946.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 609010, gadget_id = 70290150, pos = { x = -3186.465, y = 214.168, z = -3946.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 609011, gadget_id = 70290150, pos = { x = -3194.470, y = 224.507, z = -3949.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	{ config_id = 609019, gadget_id = 70360001, pos = { x = -3196.723, y = 223.598, z = -3950.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1609012, name = "CHALLENGE_SUCCESS_609012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_609012", trigger_count = 0 },
	{ config_id = 1609013, name = "CHALLENGE_FAIL_609013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_609013", trigger_count = 0 },
	{ config_id = 1609014, name = "GADGET_STATE_CHANGE_609014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_609014", action = "action_EVENT_GADGET_STATE_CHANGE_609014", trigger_count = 0 },
	{ config_id = 1609015, name = "ANY_GADGET_DIE_609015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1609016, name = "GADGET_CREATE_609016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_609016", action = "action_EVENT_GADGET_CREATE_609016", trigger_count = 0 },
	{ config_id = 1609017, name = "SELECT_OPTION_609017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_609017", action = "action_EVENT_SELECT_OPTION_609017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1609018, name = "GROUP_LOAD_609018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_609018", trigger_count = 0 }
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
		gadgets = { 609002, 609003, 609019 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_609012", "CHALLENGE_FAIL_609013", "GADGET_STATE_CHANGE_609014", "ANY_GADGET_DIE_609015", "GADGET_CREATE_609016", "SELECT_OPTION_609017", "GROUP_LOAD_609018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 609004, 609005, 609006, 609007, 609008, 609009, 609010, 609011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 609002, 609019 },
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
function action_EVENT_CHALLENGE_SUCCESS_609012(context, evt)
	-- 将configid为 609002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 609002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133220609, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220609, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为609001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 609001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_609013(context, evt)
	-- 将configid为 609002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 609002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为609003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 609003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220609, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_609014(context, evt)
	if 609002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_609014(context, evt)
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, 8) then
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
function condition_EVENT_GADGET_CREATE_609016(context, evt)
	if 609003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_609016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220609, 609003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_609017(context, evt)
	-- 判断是gadgetid 609003 option_id 177
	if 609003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_609017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 609003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 609002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 609002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_609018(context, evt)
	-- 将configid为 609002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 609002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为609003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 609003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220609, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
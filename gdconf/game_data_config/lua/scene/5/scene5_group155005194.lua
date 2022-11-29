-- 基础信息
local base_info = {
	group_id = 155005194
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 155005194,
	collectable_sum = 8
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
	{ config_id = 194001, gadget_id = 70211111, pos = { x = 276.427, y = 348.204, z = 274.766 }, rot = { x = 2.667, y = 6.399, z = 0.299 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 194002, gadget_id = 70350093, pos = { x = 297.340, y = 325.260, z = 318.317 }, rot = { x = 0.006, y = 0.022, z = 0.057 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 194003, gadget_id = 70360001, pos = { x = 297.497, y = 324.961, z = 318.048 }, rot = { x = 346.884, y = 0.718, z = 353.758 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 194004, gadget_id = 70290150, pos = { x = 294.076, y = 326.691, z = 324.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 194005, gadget_id = 70290150, pos = { x = 286.498, y = 326.379, z = 325.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 194006, gadget_id = 70290150, pos = { x = 280.292, y = 329.122, z = 314.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 194007, gadget_id = 70290150, pos = { x = 279.546, y = 333.337, z = 307.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 194008, gadget_id = 70290150, pos = { x = 279.426, y = 337.309, z = 301.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 194009, gadget_id = 70290150, pos = { x = 279.426, y = 341.626, z = 301.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 194010, gadget_id = 70290150, pos = { x = 279.426, y = 346.420, z = 301.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 194011, gadget_id = 70290150, pos = { x = 277.343, y = 349.325, z = 281.992 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 194019, gadget_id = 70690006, pos = { x = 279.426, y = 336.647, z = 301.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1194012, name = "CHALLENGE_SUCCESS_194012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_194012", trigger_count = 0 },
	{ config_id = 1194013, name = "CHALLENGE_FAIL_194013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_194013", trigger_count = 0 },
	{ config_id = 1194014, name = "GADGET_STATE_CHANGE_194014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_194014", action = "action_EVENT_GADGET_STATE_CHANGE_194014", trigger_count = 0 },
	{ config_id = 1194015, name = "ANY_GADGET_DIE_194015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1194016, name = "GADGET_CREATE_194016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_194016", action = "action_EVENT_GADGET_CREATE_194016", trigger_count = 0 },
	{ config_id = 1194017, name = "SELECT_OPTION_194017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_194017", action = "action_EVENT_SELECT_OPTION_194017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1194018, name = "GROUP_LOAD_194018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_194018", trigger_count = 0 }
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
		gadgets = { 194002, 194003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_194012", "CHALLENGE_FAIL_194013", "GADGET_STATE_CHANGE_194014", "ANY_GADGET_DIE_194015", "GADGET_CREATE_194016", "SELECT_OPTION_194017", "GROUP_LOAD_194018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 194004, 194005, 194006, 194007, 194008, 194009, 194010, 194011, 194019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 194002 },
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
function action_EVENT_CHALLENGE_SUCCESS_194012(context, evt)
	-- 将configid为 194002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 155005194, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005194, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为194001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 194001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_194013(context, evt)
	-- 将configid为 194002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为194003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 194003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155005194, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_194014(context, evt)
	if 194002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_194014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_194016(context, evt)
	if 194003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_194016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005194, 194003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_194017(context, evt)
	-- 判断是gadgetid 194003 option_id 177
	if 194003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_194017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 194003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 194002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_194018(context, evt)
	-- 将configid为 194002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 194002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为194003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 194003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155005194, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
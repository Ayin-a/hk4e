-- 基础信息
local base_info = {
	group_id = 133225140
}

-- Trigger变量
local defs = {
	duration = 70,
	kill_sum = 3,
	group_id = 133225140,
	gadget_controller_id = 140004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 24020101, pos = { x = -6416.273, y = 249.889, z = -2506.986 }, rot = { x = 0.000, y = 31.856, z = 0.000 }, level = 32, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 140011, monster_id = 24020101, pos = { x = -6409.714, y = 251.766, z = -2502.524 }, rot = { x = 0.000, y = 220.109, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 140013, monster_id = 24010101, pos = { x = -6414.545, y = 251.017, z = -2501.543 }, rot = { x = 0.000, y = 135.870, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 100, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140002, gadget_id = 70350082, pos = { x = -6410.928, y = 250.144, z = -2508.874 }, rot = { x = 354.531, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 18 },
	{ config_id = 140003, gadget_id = 70211011, pos = { x = -6411.376, y = 250.967, z = -2505.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 140004, gadget_id = 70360001, pos = { x = -6410.937, y = 251.790, z = -2508.888 }, rot = { x = 354.531, y = 0.000, z = 0.000 }, level = 32, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1140005, name = "GROUP_LOAD_140005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_140005", action = "action_EVENT_GROUP_LOAD_140005", trigger_count = 0 },
	{ config_id = 1140006, name = "CHALLENGE_SUCCESS_140006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_140006", trigger_count = 0 },
	{ config_id = 1140007, name = "CHALLENGE_FAIL_140007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_140007", trigger_count = 0 },
	{ config_id = 1140008, name = "GADGET_CREATE_140008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_140008", action = "action_EVENT_GADGET_CREATE_140008", trigger_count = 0 },
	{ config_id = 1140009, name = "SELECT_OPTION_140009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_140009", action = "action_EVENT_SELECT_OPTION_140009", trigger_count = 0 },
	{ config_id = 1140012, name = "ANY_MONSTER_DIE_140012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140012", action = "action_EVENT_ANY_MONSTER_DIE_140012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 140010, monster_id = 22040201, pos = { x = -6408.775, y = 250.376, z = -2511.219 }, rot = { x = 0.000, y = 349.906, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 },
		{ config_id = 140014, monster_id = 22050201, pos = { x = -6405.699, y = 251.657, z = -2509.185 }, rot = { x = 0.000, y = 307.241, z = 0.000 }, level = 33, drop_id = 1000100, pose_id = 101, climate_area_id = 7, area_id = 18 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 140002, 140004 },
		regions = { },
		triggers = { "GROUP_LOAD_140005", "CHALLENGE_SUCCESS_140006", "CHALLENGE_FAIL_140007", "GADGET_CREATE_140008", "SELECT_OPTION_140009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 140001, 140011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_140012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 140013 },
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
function condition_EVENT_GROUP_LOAD_140005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_140005(context, evt)
	-- 将configid为 140002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为140004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225140, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225140, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_140006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 140002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为140003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_140007(context, evt)
	-- 将configid为 140002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为140004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225140, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225140, 3)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_140008(context, evt)
	if 140004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_140008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133225140, 140004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_140009(context, evt)
	-- 判断是gadgetid 140004 option_id 177
	if 140004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_140009(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_140012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140012(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225140, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225140, 3)
	
	return 0
end
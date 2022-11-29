-- 基础信息
local base_info = {
	group_id = 133315206
}

-- Trigger变量
local defs = {
	duration = 80,
	kill_sum = 3,
	group_id = 133315206,
	gadget_controller_id = 206004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 206001, monster_id = 26120301, pos = { x = -90.630, y = 305.789, z = 2149.599 }, rot = { x = 0.000, y = 139.549, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 206010, monster_id = 26120301, pos = { x = -92.351, y = 305.963, z = 2141.158 }, rot = { x = 0.000, y = 47.974, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 206011, monster_id = 26120301, pos = { x = -83.456, y = 306.700, z = 2144.256 }, rot = { x = 0.000, y = 274.886, z = 0.000 }, level = 27, drop_id = 1000100, pose_id = 101, area_id = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 206002, gadget_id = 70350082, pos = { x = -88.222, y = 305.889, z = 2145.133 }, rot = { x = 0.000, y = 302.061, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 206003, gadget_id = 70211001, pos = { x = -86.119, y = 305.857, z = 2145.777 }, rot = { x = 0.000, y = 72.442, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 206004, gadget_id = 70360001, pos = { x = -88.231, y = 306.358, z = 2145.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1206005, name = "GROUP_LOAD_206005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_206005", action = "action_EVENT_GROUP_LOAD_206005", trigger_count = 0 },
	{ config_id = 1206006, name = "CHALLENGE_SUCCESS_206006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_206006", trigger_count = 0 },
	{ config_id = 1206007, name = "CHALLENGE_FAIL_206007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_206007", trigger_count = 0 },
	{ config_id = 1206008, name = "GADGET_CREATE_206008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_206008", action = "action_EVENT_GADGET_CREATE_206008", trigger_count = 0 },
	{ config_id = 1206009, name = "SELECT_OPTION_206009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_206009", action = "action_EVENT_SELECT_OPTION_206009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
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
		gadgets = { 206002, 206004 },
		regions = { },
		triggers = { "GROUP_LOAD_206005", "CHALLENGE_SUCCESS_206006", "CHALLENGE_FAIL_206007", "GADGET_CREATE_206008", "SELECT_OPTION_206009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 206001, 206010, 206011 },
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
function condition_EVENT_GROUP_LOAD_206005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_206005(context, evt)
	-- 将configid为 206002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为206004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 206004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315206, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_206006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 206002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为206003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 206003 }) then
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
function action_EVENT_CHALLENGE_FAIL_206007(context, evt)
	-- 将configid为 206002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为206004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 206004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315206, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_206008(context, evt)
	if 206004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_206008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315206, 206004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_206009(context, evt)
	-- 判断是gadgetid 206004 option_id 177
	if 206004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_206009(context, evt)
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
		
	
	-- 将configid为 206002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 206002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end
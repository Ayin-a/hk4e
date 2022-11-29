-- 基础信息
local base_info = {
	group_id = 133222332
}

-- Trigger变量
local defs = {
	duration = 180,
	kill_sum = 4,
	group_id = 133222332,
	gadget_controller_id = 332004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332001, monster_id = 24020101, pos = { x = -4270.708, y = 198.176, z = -4278.404 }, rot = { x = 2.797, y = 332.998, z = 359.579 }, level = 32, drop_id = 1000100, pose_id = 100, area_id = 14 },
	{ config_id = 332010, monster_id = 24020201, pos = { x = -4269.885, y = 198.200, z = -4270.893 }, rot = { x = 0.000, y = 215.277, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 100, area_id = 14 },
	{ config_id = 332011, monster_id = 24020301, pos = { x = -4277.327, y = 198.375, z = -4270.176 }, rot = { x = 10.015, y = 137.727, z = 0.475 }, level = 30, drop_id = 1000100, pose_id = 100, area_id = 14 },
	{ config_id = 332012, monster_id = 24020401, pos = { x = -4277.084, y = 198.047, z = -4278.061 }, rot = { x = 0.895, y = 359.986, z = 358.210 }, level = 30, drop_id = 1000100, pose_id = 100, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332002, gadget_id = 70350082, pos = { x = -4272.979, y = 198.005, z = -4274.554 }, rot = { x = 0.000, y = 290.355, z = 0.000 }, level = 32, persistent = true, area_id = 14 },
	{ config_id = 332003, gadget_id = 70211021, pos = { x = -4267.718, y = 198.124, z = -4274.833 }, rot = { x = 3.577, y = 270.019, z = 0.001 }, level = 26, drop_tag = "战斗高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 332004, gadget_id = 70360001, pos = { x = -4272.989, y = 199.027, z = -4274.568 }, rot = { x = 0.000, y = 290.355, z = 0.000 }, level = 32, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1332005, name = "GROUP_LOAD_332005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_332005", action = "action_EVENT_GROUP_LOAD_332005", trigger_count = 0 },
	{ config_id = 1332006, name = "CHALLENGE_SUCCESS_332006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_332006", trigger_count = 0 },
	{ config_id = 1332007, name = "CHALLENGE_FAIL_332007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_332007", trigger_count = 0 },
	{ config_id = 1332008, name = "GADGET_CREATE_332008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_332008", action = "action_EVENT_GADGET_CREATE_332008", trigger_count = 0 },
	{ config_id = 1332009, name = "SELECT_OPTION_332009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_332009", action = "action_EVENT_SELECT_OPTION_332009", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 332002, 332004 },
		regions = { },
		triggers = { "GROUP_LOAD_332005", "CHALLENGE_SUCCESS_332006", "CHALLENGE_FAIL_332007", "GADGET_CREATE_332008", "SELECT_OPTION_332009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 332001, 332010, 332011, 332012 },
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
function condition_EVENT_GROUP_LOAD_332005(context, evt)
	-- 判断变量"isFinish"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_332005(context, evt)
	-- 将configid为 332002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为332004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 332004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222332, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_332006(context, evt)
	-- 将本组内变量名为 "isFinish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 332002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为332003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 332003 }) then
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
function action_EVENT_CHALLENGE_FAIL_332007(context, evt)
	-- 将configid为 332002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为332004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 332004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133222332, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_332008(context, evt)
	if 332004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_332008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133222332, 332004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_332009(context, evt)
	-- 判断是gadgetid 332004 option_id 177
	if 332004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_332009(context, evt)
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
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end
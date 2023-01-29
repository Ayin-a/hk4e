-- 基础信息
local base_info = {
	group_id = 111101306
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 306002, monster_id = 21020202, pos = { x = 2227.430, y = 246.373, z = -1605.900 }, rot = { x = 0.000, y = 307.370, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 306003, monster_id = 21020202, pos = { x = 2221.600, y = 245.775, z = -1607.889 }, rot = { x = 0.000, y = 0.674, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 306001, gadget_id = 70350082, pos = { x = 2223.109, y = 245.500, z = -1603.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 306004, gadget_id = 70211021, pos = { x = 2224.401, y = 245.926, z = -1605.497 }, rot = { x = 0.000, y = 346.910, z = 0.000 }, level = 11, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 306005, gadget_id = 70950145, pos = { x = 2223.087, y = 245.782, z = -1603.992 }, rot = { x = 7.673, y = 359.785, z = 356.801 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1306006, name = "GADGET_CREATE_306006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_306006", action = "action_EVENT_GADGET_CREATE_306006", trigger_count = 0 },
	{ config_id = 1306007, name = "SELECT_OPTION_306007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_306007", action = "action_EVENT_SELECT_OPTION_306007", trigger_count = 0 },
	{ config_id = 1306008, name = "CHALLENGE_SUCCESS_306008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_306008", trigger_count = 0 },
	{ config_id = 1306009, name = "CHALLENGE_FAIL_306009", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_306009", trigger_count = 0 }
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
		gadgets = { 306001, 306005 },
		regions = { },
		triggers = { "GADGET_CREATE_306006", "SELECT_OPTION_306007", "CHALLENGE_SUCCESS_306008", "CHALLENGE_FAIL_306009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 306002, 306003 },
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
function condition_EVENT_GADGET_CREATE_306006(context, evt)
	if 306005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_306006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101306, 306005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_306007(context, evt)
	-- 判断是gadgetid 306005 option_id 177
	if 306005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_306007(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 60, 111101306, 2, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101306, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 306005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_306008(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为306004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 306004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_306009(context, evt)
	-- 将configid为 306001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 306001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为306005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 306005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101306, 2)
	
	return 0
end
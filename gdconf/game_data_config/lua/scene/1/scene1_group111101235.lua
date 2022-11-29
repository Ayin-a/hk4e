-- 基础信息
local base_info = {
	group_id = 111101235
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 235002, monster_id = 21010101, pos = { x = 2237.792, y = 244.120, z = -1583.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235003, monster_id = 21010101, pos = { x = 2241.217, y = 244.120, z = -1580.700 }, rot = { x = 0.000, y = 288.086, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235004, monster_id = 21010101, pos = { x = 2241.353, y = 244.120, z = -1576.101 }, rot = { x = 0.000, y = 244.991, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235005, monster_id = 21010101, pos = { x = 2237.788, y = 244.120, z = -1573.518 }, rot = { x = 0.000, y = 169.467, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235006, monster_id = 21010101, pos = { x = 2234.155, y = 244.120, z = -1575.034 }, rot = { x = 0.000, y = 144.489, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235007, monster_id = 21010101, pos = { x = 2233.255, y = 244.120, z = -1578.510 }, rot = { x = 0.000, y = 89.567, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235008, monster_id = 21010101, pos = { x = 2234.228, y = 244.120, z = -1582.120 }, rot = { x = 0.000, y = 29.969, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235009, monster_id = 20010901, pos = { x = 2244.668, y = 244.120, z = -1578.633 }, rot = { x = 0.000, y = 268.961, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235010, monster_id = 21011301, pos = { x = 2241.650, y = 244.120, z = -1572.063 }, rot = { x = 0.000, y = 221.819, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 235011, monster_id = 21010401, pos = { x = 2241.705, y = 244.120, z = -1585.008 }, rot = { x = 0.000, y = 325.170, z = 0.000 }, level = 1, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 235001, gadget_id = 70350082, pos = { x = 2237.862, y = 244.120, z = -1578.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 235012, gadget_id = 70211001, pos = { x = 2235.636, y = 244.120, z = -1578.564 }, rot = { x = 0.000, y = 269.677, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 235013, gadget_id = 70360001, pos = { x = 2240.117, y = 244.120, z = -1578.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1235014, name = "GADGET_CREATE_235014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_235014", action = "action_EVENT_GADGET_CREATE_235014", trigger_count = 0 },
	{ config_id = 1235015, name = "SELECT_OPTION_235015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_235015", action = "action_EVENT_SELECT_OPTION_235015", trigger_count = 0 },
	{ config_id = 1235016, name = "CHALLENGE_SUCCESS_235016", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_235016", trigger_count = 0 },
	{ config_id = 1235017, name = "CHALLENGE_FAIL_235017", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_235017", trigger_count = 0 }
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
		gadgets = { 235001, 235013 },
		regions = { },
		triggers = { "GADGET_CREATE_235014", "SELECT_OPTION_235015", "CHALLENGE_FAIL_235017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 235002, 235003, 235004, 235005, 235006, 235007, 235008, 235009, 235010, 235011 },
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
		triggers = { "CHALLENGE_SUCCESS_235016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_235014(context, evt)
	if 235013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_235014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101235, 235013, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_235015(context, evt)
	-- 判断是gadgetid 235013 option_id 177
	if 235013 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_235015(context, evt)
	-- 创建编号为180（该挑战的识别id),挑战内容为180的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 120, 111101235, 10, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101235, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 235013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 235001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_235016(context, evt)
	-- 将configid为 235001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为235012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 235012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_235017(context, evt)
	-- 将configid为 235001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 235001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为235013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 235013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101235, 2)
	
	return 0
end
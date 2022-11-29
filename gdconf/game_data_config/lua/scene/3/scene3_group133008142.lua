-- 基础信息
local base_info = {
	group_id = 133008142
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 142003, monster_id = 22010201, pos = { x = 1334.370, y = 268.527, z = -1168.717 }, rot = { x = 0.000, y = 165.214, z = 0.000 }, level = 30, drop_id = 1000100, isElite = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 142004, monster_id = 22010201, pos = { x = 1336.059, y = 268.478, z = -1176.235 }, rot = { x = 0.000, y = 33.663, z = 0.000 }, level = 30, drop_id = 1000100, isElite = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 142010, monster_id = 22010301, pos = { x = 1339.041, y = 268.487, z = -1175.772 }, rot = { x = 0.000, y = 320.861, z = 0.000 }, level = 30, drop_id = 1000100, isElite = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 142001, gadget_id = 70360105, pos = { x = 1332.783, y = 268.607, z = -1170.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 142006, gadget_id = 70211131, pos = { x = 1334.120, y = 268.856, z = -1173.779 }, rot = { x = 6.827, y = 57.628, z = 4.096 }, level = 26, chest_drop_id = 1050106, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 142008, gadget_id = 70360001, pos = { x = 1334.646, y = 269.730, z = -1171.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142002, name = "SELECT_OPTION_142002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_142002", action = "action_EVENT_SELECT_OPTION_142002" },
	{ config_id = 1142005, name = "CHALLENGE_SUCCESS_142005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_142005" },
	{ config_id = 1142007, name = "CHALLENGE_FAIL_142007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_142007" },
	{ config_id = 1142009, name = "GADGET_CREATE_142009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_142009", action = "action_EVENT_GADGET_CREATE_142009", trigger_count = 0 },
	{ config_id = 1142011, name = "ANY_MONSTER_DIE_142011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142011", action = "action_EVENT_ANY_MONSTER_DIE_142011", trigger_count = 0 }
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
		gadgets = { 142008 },
		regions = { },
		triggers = { "SELECT_OPTION_142002", "CHALLENGE_SUCCESS_142005", "CHALLENGE_FAIL_142007", "GADGET_CREATE_142009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 142003 },
		gadgets = { 142001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_142011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 142006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 142004, 142010 },
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
function condition_EVENT_SELECT_OPTION_142002(context, evt)
	-- 判断是gadgetid 142008 option_id 47
	if 142008 ~= evt.param1 then
		return false	
	end
	
	if 47 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_142002(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, 60, 133008142, 3, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : challenge_KilMonster_InTime")
	  return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008142, 2)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 142008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_142005(context, evt)
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008142, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_142007(context, evt)
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008142, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_142009(context, evt)
	if 142008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_142009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008142, 142008, {47}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_142011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_142011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133008142, 4)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133307100
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
	{ config_id = 100002, gadget_id = 70710350, pos = { x = -1203.309, y = 24.662, z = 5278.015 }, rot = { x = 0.000, y = 350.592, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 100003, gadget_id = 70220048, pos = { x = -1206.031, y = 20.024, z = 5287.717 }, rot = { x = 26.295, y = 17.436, z = 355.785 }, level = 32, area_id = 32 },
	{ config_id = 100004, gadget_id = 70220048, pos = { x = -1205.703, y = 19.852, z = 5285.843 }, rot = { x = 5.168, y = 358.871, z = 355.932 }, level = 32, area_id = 32 },
	{ config_id = 100005, gadget_id = 70710414, pos = { x = -1191.187, y = 13.157, z = 5296.739 }, rot = { x = 26.084, y = 152.523, z = 342.455 }, level = 32, area_id = 32 },
	{ config_id = 100007, gadget_id = 70330416, pos = { x = -1222.590, y = 3.904, z = 5317.416 }, rot = { x = 0.000, y = 74.844, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 100009, gadget_id = 70710548, pos = { x = -1191.291, y = 14.270, z = 5296.433 }, rot = { x = 3.170, y = 15.115, z = 0.856 }, level = 32, area_id = 32 },
	{ config_id = 100010, gadget_id = 70300093, pos = { x = -1200.323, y = 22.581, z = 5279.842 }, rot = { x = 351.531, y = 179.557, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 100013, gadget_id = 70360001, pos = { x = -1197.532, y = 19.006, z = 5287.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100001, name = "QUEST_START_100001", event = EventType.EVENT_QUEST_START, source = "7322501", condition = "", action = "action_EVENT_QUEST_START_100001", trigger_count = 0 },
	{ config_id = 1100006, name = "QUEST_FINISH_100006", event = EventType.EVENT_QUEST_FINISH, source = "7322511", condition = "", action = "action_EVENT_QUEST_FINISH_100006", trigger_count = 0 },
	{ config_id = 1100008, name = "QUEST_FINISH_100008", event = EventType.EVENT_QUEST_FINISH, source = "7322526", condition = "", action = "action_EVENT_QUEST_FINISH_100008" },
	{ config_id = 1100011, name = "GROUP_LOAD_100011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_100011", action = "action_EVENT_GROUP_LOAD_100011" }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = true }
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
		-- description = ,
		monsters = { },
		gadgets = { 100013 },
		regions = { },
		triggers = { "QUEST_START_100001", "QUEST_FINISH_100006", "QUEST_FINISH_100008", "GROUP_LOAD_100011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 100002, 100003, 100004, 100005, 100007, 100009, 100010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
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

-- 触发操作
function action_EVENT_QUEST_START_100001(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133307100, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_100006(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133307100, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_100008(context, evt)
	-- 将configid为 100007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_100011(context, evt)
	-- 判断变量"open"为1
	if ScriptLib.GetGroupVariableValue(context, "open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_100011(context, evt)
	-- 将configid为 100007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
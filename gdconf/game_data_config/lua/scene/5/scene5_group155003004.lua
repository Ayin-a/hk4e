-- 基础信息
local base_info = {
	group_id = 155003004
}

-- Trigger变量
local defs = {
	duration = 20,
	group_id = 155003004,
	collectable_sum = 8,
	managerGroupID = 155003001
}

-- DEFS_MISCS
local gameplayStateFuncitons = 
{
	["0"] = function(context)

	end,
	["1"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, 4003, {177})
		ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.Default)
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	end,
	["2"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id,4)
		ScriptLib.KillExtraGroupSuite(context, 155003004, 3)
		ScriptLib.SetGadgetStateByConfigId(context, 4002, GadgetState.GearStop)
		--ScriptLib.SetGroupVariableValueByGroup(context, "gameplayState", 2, 155003005)
	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 4002, gadget_id = 70350093, pos = { x = 1150.844, y = 227.391, z = -652.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
		{ config_id = 4003, gadget_id = 70360001, pos = { x = 1150.845, y = 227.874, z = -652.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
		{ config_id = 4004, gadget_id = 70290150, pos = { x = 1150.347, y = 228.749, z = -659.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 4005, gadget_id = 70290150, pos = { x = 1149.476, y = 230.261, z = -666.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 4006, gadget_id = 70290150, pos = { x = 1147.157, y = 232.896, z = -674.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 4007, gadget_id = 70290150, pos = { x = 1144.240, y = 234.146, z = -681.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 4008, gadget_id = 70290150, pos = { x = 1143.472, y = 237.251, z = -687.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 4009, gadget_id = 70290150, pos = { x = 1145.311, y = 240.207, z = -692.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 4010, gadget_id = 70290150, pos = { x = 1149.150, y = 242.615, z = -698.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 4011, gadget_id = 70290150, pos = { x = 1147.268, y = 244.605, z = -708.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, area_id = 200 },
		{ config_id = 4016, gadget_id = 70211111, pos = { x = 1145.844, y = 243.259, z = -711.010 }, rot = { x = 0.000, y = 29.885, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1004001, name = "GROUP_LOAD_4001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4001", trigger_count = 0 },
		{ config_id = 1004012, name = "CHALLENGE_SUCCESS_4012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "condition_EVENT_CHALLENGE_SUCCESS_4012", action = "action_EVENT_CHALLENGE_SUCCESS_4012", trigger_count = 0 },
		{ config_id = 1004013, name = "CHALLENGE_FAIL_4013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4013", trigger_count = 0 },
		{ config_id = 1004014, name = "GADGET_STATE_CHANGE_4014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4014", action = "action_EVENT_GADGET_STATE_CHANGE_4014", trigger_count = 0 },
		{ config_id = 1004015, name = "ANY_GADGET_DIE_4015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
		{ config_id = 1004017, name = "SELECT_OPTION_4017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4017", action = "action_EVENT_SELECT_OPTION_4017", trigger_count = 0 },
		{ config_id = 1004019, name = "VARIABLE_CHANGE_4019", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_4019", action = "action_EVENT_VARIABLE_CHANGE_4019", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
		gadgets = { },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
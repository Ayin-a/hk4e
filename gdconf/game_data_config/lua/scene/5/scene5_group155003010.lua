-- 基础信息
local base_info = {
	group_id = 155003010
}

-- Trigger变量
local defs = {
	duration = 90,
	totalcount = 7,
	group_id = 155003010,
	gadget_controller_id = 10003,
	managerGroupID = 155003001
}

-- DEFS_MISCS
gadgetlist = 
{
	
	10011,
	10012,
	10013,
	10014,
	10015,
	10016,
	10017
	
}

function SetGadgetListState(context,list,state)
	for i=1,#list do
		ScriptLib.SetGadgetStateByConfigId(context, list[i], state)
	end
end

local gameplayStateFuncitons = 
{
	["0"] = function(context)

	end,
	["1"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, 10003, {177})
		ScriptLib.SetGadgetStateByConfigId(context, 10002, GadgetState.Default)
		ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
	end,
	["2"] = function(context)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id,4)
		ScriptLib.KillExtraGroupSuite(context, 155003010, 3)
		ScriptLib.SetGadgetStateByConfigId(context, 10002, GadgetState.GearStop)
		SetGadgetListState(context,gadgetlist,201)
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
		{ config_id = 10002, gadget_id = 70350082, pos = { x = 1297.060, y = 258.620, z = -660.128 }, rot = { x = 358.800, y = 326.442, z = 358.118 }, level = 36, persistent = true, area_id = 200 },
		{ config_id = 10003, gadget_id = 70360001, pos = { x = 1297.020, y = 258.621, z = -660.117 }, rot = { x = 356.874, y = 359.789, z = 7.728 }, level = 36, area_id = 200 },
		{ config_id = 10011, gadget_id = 70310011, pos = { x = 1298.089, y = 259.299, z = -647.481 }, rot = { x = 356.605, y = 19.410, z = 342.608 }, level = 36, area_id = 200 },
		{ config_id = 10012, gadget_id = 70310011, pos = { x = 1289.311, y = 259.341, z = -656.102 }, rot = { x = 351.262, y = 358.968, z = 8.069 }, level = 36, area_id = 200 },
		{ config_id = 10013, gadget_id = 70310011, pos = { x = 1317.171, y = 256.455, z = -665.365 }, rot = { x = 359.912, y = 358.868, z = 355.533 }, level = 36, area_id = 200 },
		{ config_id = 10014, gadget_id = 70310011, pos = { x = 1321.610, y = 259.671, z = -652.933 }, rot = { x = 345.841, y = 1.935, z = 9.816 }, level = 36, area_id = 200 },
		{ config_id = 10015, gadget_id = 70310011, pos = { x = 1333.501, y = 262.527, z = -647.583 }, rot = { x = 356.198, y = 355.045, z = 355.717 }, level = 36, area_id = 200 },
		{ config_id = 10016, gadget_id = 70310011, pos = { x = 1333.113, y = 263.150, z = -656.934 }, rot = { x = 347.696, y = 357.934, z = 28.980 }, level = 36, area_id = 200 },
		{ config_id = 10017, gadget_id = 70310011, pos = { x = 1339.353, y = 262.185, z = -659.029 }, rot = { x = 347.821, y = 12.158, z = 352.725 }, level = 36, area_id = 200 }
	},
	triggers = {
		{ config_id = 1010004, name = "CHALLENGE_SUCCESS_10004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "condition_EVENT_CHALLENGE_SUCCESS_10004", action = "action_EVENT_CHALLENGE_SUCCESS_10004", trigger_count = 0 },
		{ config_id = 1010005, name = "CHALLENGE_FAIL_10005", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10005", trigger_count = 0 },
		{ config_id = 1010006, name = "GROUP_LOAD_10006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_10006", trigger_count = 0 },
		{ config_id = 1010007, name = "SELECT_OPTION_10007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_10007", action = "action_EVENT_SELECT_OPTION_10007", trigger_count = 0 },
		{ config_id = 1010008, name = "VARIABLE_CHANGE_10008", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_10008", action = "action_EVENT_VARIABLE_CHANGE_10008", trigger_count = 0 },
		{ config_id = 1010009, name = "GADGET_STATE_CHANGE_10009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10009", action = "action_EVENT_GADGET_STATE_CHANGE_10009", trigger_count = 0 },
		{ config_id = 1010010, name = "GADGET_STATE_CHANGE_10010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10010", action = "", trigger_count = 0, tag = "999" }
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
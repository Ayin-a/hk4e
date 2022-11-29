-- 基础信息
local base_info = {
	group_id = 155006059
}

-- Trigger变量
local defs = {
	group_ID = 155006059,
	gadget_controller = 59006,
	gadget_point_01 = 59014,
	gadget_point_02 = 59015,
	gadget_point_03 = 59016,
	gadget_point_04 = 59017,
	gadget_point_05 = 59018,
	gadget_point_06 = 59019,
	gadget_point_07 = 59020,
	gadget_point_08 = 59021,
	gadget_point_09 = 59022,
	gadget_mask_01 = 59005,
	countdowntime = 15
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_mask_01}
local NightAppearGadgets = {defs.gadget_controller}
local TriggerInsertWhitelist = {1}



local gadgetlist = 
{
	defs.gadget_point_01,
	defs.gadget_point_02,
	defs.gadget_point_03,
	defs.gadget_point_04,
	defs.gadget_point_05,
	defs.gadget_point_06,
	defs.gadget_point_07,
	defs.gadget_point_08,
	defs.gadget_point_09
}

defs.totalcount = #gadgetlist

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.PrintContextLog(context, "----GameplayState[0]----")
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)

	end,
	["1"] = function(context)
		ScriptLib.PrintContextLog(context, "----GameplayState[1]----")
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	end,
	["2"] = function(context)
		ScriptLib.PrintContextLog(context, "----GameplayState[2]----")
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID,5)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_controller, 201)
	end
}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function Initial(context)
	ScriptLib.PrintContextLog(context, "----Initial Start----")
	ScriptLib.SetGroupVariableValue(context, "activecount", 0)
	ScriptLib.SetGroupVariableValue(context, "activeindex", 1)

	ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
	ScriptLib.PrintContextLog(context, "----Initial End----")
end
function Reset(context)
	ScriptLib.PrintContextLog(context, "----Reset Start----")
	ScriptLib.SetGroupVariableValue(context, "activecount", 0)
	ScriptLib.SetGroupVariableValue(context, "activeindex", 1)
	--ScriptLib.RemoveEntityByConfigId(context, 305011009, EntityType.GADGET, 9001 )
	if  ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_controller) ~= -1 then 
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_controller, GadgetState.Action01)
	end
	ScriptLib.RemoveExtraGroupSuite(context, defs.group_ID, 3)
	ScriptLib.PrintContextLog(context, "----Reset End----")
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
	{ config_id = 59005, gadget_id = 70290229, pos = { x = 409.650, y = 167.623, z = -129.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 59006, gadget_id = 70900049, pos = { x = 409.650, y = 165.599, z = -129.451 }, rot = { x = 9.236, y = 359.281, z = 351.122 }, level = 36, state = GadgetState.Action01, area_id = 200 },
	{ config_id = 59014, gadget_id = 70290150, pos = { x = 409.356, y = 168.098, z = -134.669 }, rot = { x = 19.247, y = 359.277, z = 355.740 }, level = 36, area_id = 200 },
	{ config_id = 59015, gadget_id = 70290150, pos = { x = 412.823, y = 167.610, z = -134.122 }, rot = { x = 15.080, y = 359.352, z = 355.107 }, level = 36, area_id = 200 },
	{ config_id = 59016, gadget_id = 70290150, pos = { x = 415.148, y = 165.822, z = -130.961 }, rot = { x = 27.412, y = 358.652, z = 354.476 }, level = 36, area_id = 200 },
	{ config_id = 59017, gadget_id = 70290150, pos = { x = 414.799, y = 165.161, z = -126.758 }, rot = { x = 18.760, y = 359.041, z = 354.197 }, level = 36, area_id = 200 },
	{ config_id = 59018, gadget_id = 70290150, pos = { x = 411.843, y = 164.542, z = -124.040 }, rot = { x = 16.858, y = 358.592, z = 350.519 }, level = 36, area_id = 200 },
	{ config_id = 59019, gadget_id = 70290150, pos = { x = 408.131, y = 165.137, z = -124.317 }, rot = { x = 14.231, y = 359.160, z = 353.281 }, level = 36, area_id = 200 },
	{ config_id = 59020, gadget_id = 70290150, pos = { x = 404.570, y = 166.907, z = -129.709 }, rot = { x = 11.944, y = 359.083, z = 351.248 }, level = 36, area_id = 200 },
	{ config_id = 59021, gadget_id = 70290150, pos = { x = 406.269, y = 167.727, z = -132.953 }, rot = { x = 19.247, y = 359.277, z = 355.740 }, level = 36, area_id = 200 },
	{ config_id = 59022, gadget_id = 70290150, pos = { x = 405.496, y = 165.979, z = -126.250 }, rot = { x = 14.687, y = 359.061, z = 352.719 }, level = 36, area_id = 200 },
	{ config_id = 59023, gadget_id = 70211111, pos = { x = 409.271, y = 166.611, z = -132.149 }, rot = { x = 20.755, y = 357.726, z = 354.912 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1059001, name = "GROUP_LOAD_59001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_59001", trigger_count = 0 },
	{ config_id = 1059002, name = "VARIABLE_CHANGE_59002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_59002", trigger_count = 0 },
	-- 开启玩法
	{ config_id = 1059003, name = "GADGET_STATE_CHANGE_59003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_59003", action = "action_EVENT_GADGET_STATE_CHANGE_59003", trigger_count = 0 },
	-- 完成挑战
	{ config_id = 1059004, name = "VARIABLE_CHANGE_59004", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_59004", action = "action_EVENT_VARIABLE_CHANGE_59004", trigger_count = 0 },
	-- 重置玩法
	{ config_id = 1059008, name = "TIME_AXIS_PASS_59008", event = EventType.EVENT_TIME_AXIS_PASS, source = "startcountdown", condition = "condition_EVENT_TIME_AXIS_PASS_59008", action = "action_EVENT_TIME_AXIS_PASS_59008", trigger_count = 0 },
	-- 雷微粒死亡计数
	{ config_id = 1059009, name = "ANY_GADGET_DIE_59009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_59009", action = "action_EVENT_ANY_GADGET_DIE_59009", trigger_count = 0 },
	-- 方碑创建时重置玩法
	{ config_id = 1059024, name = "GADGET_CREATE_59024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_59024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "activecount", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_59001", "VARIABLE_CHANGE_59002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_59003", "VARIABLE_CHANGE_59004", "TIME_AXIS_PASS_59008", "ANY_GADGET_DIE_59009", "GADGET_CREATE_59024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 59014, 59015, 59016, 59017, 59018, 59019, 59020, 59021, 59022 },
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
		gadgets = { 59006, 59023 },
		regions = { },
		triggers = { "GADGET_CREATE_59024" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_59001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_59002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_59003(context, evt)
	if GadgetState.Action02 ~= ScriptLib.GetGadgetStateByConfigId(context, 155006059, 59006) then
		return false
	end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_59003(context, evt)
			--ScriptLib.ChangeGroupVariableValue(context, "activecount", 1)
			
				--CreateGadget(context, {config_id = gadgetlist[ScriptLib.GetGroupVariableValue(context, "activeindex")]})
				ScriptLib.PrintContextLog(context, "----CountDownStart----")
				ScriptLib.InitTimeAxis(context, "startcountdown", {defs.countdowntime}, false)
				Initial(context)
				return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_59004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为9
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 9 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_59004(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 停止标识为"startcountdown"的时间轴
	ScriptLib.EndTimeAxis(context, "startcountdown")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_59008(context, evt)
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_59008(context, evt)
		ScriptLib.PrintContextLog(context, "----TimeUp----")
	
			Reset(context)
			return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_59009(context, evt)
		ScriptLib.PrintContextLog(context, "DIE ID = "..evt.param1)
		for i=1,#gadgetlist do
		ScriptLib.PrintContextLog(context, "gadget id = "..gadgetlist[i])
			if gadgetlist[i] == evt.param1 then 
				ScriptLib.PrintContextLog(context, "Return true")
				return true
			end
		end
		return false
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_59009(context, evt)
		ScriptLib.PrintContextLog(context, "----ActiveCount++----")
		ScriptLib.ChangeGroupVariableValue(context, "activecount", 1)
		return 0
end

-- 触发操作
function action_EVENT_GADGET_CREATE_59024(context, evt)
	
		local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
		if (current_env_state_id == 2) then
			if 2 == ScriptLib.GetGroupVariableValue(context, "gameplayState") then 
				ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_controller, 201)
			end
		elseif (current_env_state_id == 1) then
			if 1 == ScriptLib.GetGroupVariableValue(context, "gameplayState") then 
				ScriptLib.PrintContextLog(context, "----Gadget create with reset----")
				Reset(context)
			end
		end 
	return 0
end

require "V2_4/EnvState"
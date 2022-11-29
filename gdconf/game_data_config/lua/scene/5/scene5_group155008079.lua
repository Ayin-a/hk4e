-- 基础信息
local base_info = {
	group_id = 155008079
}

-- Trigger变量
local defs = {
	group_ID = 155008079
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {79004,79005,79006,79010,79011,79012}
local Worktops = {}
local DayAppearGadgets = {79003}
local NightAppearGadgets = {}


--[[
	Variable:
	ScriptLib.GetGroupVariableValue(context, name)
	ScriptLib.GetGroupVariableValueByGroup(context, name, group_id)
	ScriptLib.SetGroupVariableValue(context, name, value)
	ScriptLib.SetGroupVariableValueByGroup(context, name, value, group_id)

	GadgetState:
	ScriptLib.GetGadgetStateByConfigId(context, group_id, config_id)
	ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, gadget_state)

	Option:
	ScriptLib.SetWorktopOptionsByGroupId(context, group_id, config_id, {option_table})
	ScriptLib.DelWorktopOptionByGroupId(context, group_id, config_id, option_id)

	SuiteControll:
	ScriptLib.GoToGroupSuite(context, group_id, suite_index)
	ScriptLib.AddExtraGroupSuite(context, group_id, suite_index)

	TimeAxis:
	ScriptLib.InitTimeAxis(context, key, timer, is_loop)
	ScriptLib.EndTimeAxis(context, key)
	ScriptLib.PauseTimeAxis(context, key)
	ScriptLib.ContinueTimeAxis(context, key)

	ScriptLib.SetPlatformPointArray(context, gadget_id, pointarray_id, {pointarrayindexlist}, { route_type = 0 })
]]


local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
		DayNight_Gadget_Unlock(context,79010)
		DayNight_Gadget_Unlock(context,79012)
		DayNight_Gadget_Unlock(context,79011)
		
	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		
	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function GadgetStateSwitcher(context,group_id,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, group_id, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, group_id, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, gadget_id, state[1])
	end 

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
	{ config_id = 79003, gadget_id = 70360314, pos = { x = -212.704, y = 243.052, z = 467.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 79004, gadget_id = 70290169, pos = { x = -200.956, y = 248.882, z = 484.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 79005, gadget_id = 70290169, pos = { x = -212.235, y = 248.947, z = 484.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 79006, gadget_id = 70290169, pos = { x = -217.850, y = 248.903, z = 467.548 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 79007, gadget_id = 70290281, pos = { x = -212.284, y = 248.702, z = 461.707 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 79008, gadget_id = 70350006, pos = { x = -217.869, y = 247.864, z = 478.415 }, rot = { x = 0.000, y = 90.000, z = 180.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 79010, gadget_id = 70360305, pos = { x = -211.922, y = 242.909, z = 478.607 }, rot = { x = 0.000, y = 90.573, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 79011, gadget_id = 70360304, pos = { x = -223.458, y = 242.588, z = 467.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 79012, gadget_id = 70360305, pos = { x = -212.132, y = 242.930, z = 467.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 79015, gadget_id = 70211111, pos = { x = -212.596, y = 243.024, z = 456.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1079001, name = "GROUP_LOAD_79001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_79001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1079002, name = "VARIABLE_CHANGE_79002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_79002", trigger_count = 0 },
	-- 开启宝箱门
	{ config_id = 1079013, name = "GADGET_STATE_CHANGE_79013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79013", action = "action_EVENT_GADGET_STATE_CHANGE_79013", trigger_count = 0 },
	-- 开启双边铁栅栏门
	{ config_id = 1079014, name = "GADGET_STATE_CHANGE_79014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_79014", action = "action_EVENT_GADGET_STATE_CHANGE_79014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 79009, gadget_id = 70290281, pos = { x = -195.455, y = 237.329, z = 478.569 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 36, persistent = true, area_id = 200 }
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
		-- description = 静态逻辑,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_79001", "VARIABLE_CHANGE_79002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 79004, 79005, 79006, 79007, 79008, 79010, 79011, 79012, 79015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_79013", "GADGET_STATE_CHANGE_79014" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 79008, 79010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_79014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_79001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_79002(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79013(context, evt)
	if evt.param2 ~= 79012 then 
	return false
	end
	if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155008079, 79012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79013(context, evt)
	-- 将configid为 79007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 79007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_79014(context, evt)
	if evt.param2 ~= 79010 then 
	return false
	end	
	if 222 ~= ScriptLib.GetGadgetStateByConfigId(context, 155008079, 79010) then
			return false
		end
		
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_79014(context, evt)
			GadgetStateSwitcher(context,defs.group_ID,79008,{0,201})
			
		return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"
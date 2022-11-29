-- 基础信息
local base_info = {
	group_id = 111101239
}

-- Trigger变量
local defs = {
	pointarray_route = 110100045,
	gadget_controller_1 = 239014,
	gadget_controller_2 = 239017,
	gadget_controller_3 = 239015,
	gadget_controller_4 = 239016,
	gadget_wall_1 = 239002,
	gadget_wall_2 = 239001,
	gadget_wall_3 = 239004,
	gadget_wall_4 = 239003,
	blocker_1 = 239020,
	blocker_2 = 239019
}

-- DEFS_MISCS
local EnvControlGadgets = {239014,239015,239016,239017,239021,239022}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

MaxSize = 12

ControllerWallMap = 
{
	{defs.gadget_controller_1,
		{
			{defs.gadget_wall_1,{2,7,12}}, 
			{defs.gadget_wall_2,{1,6,11}}
		}
	},
	{defs.gadget_controller_2,
		{
			{defs.gadget_wall_1,{12,7,2}}, 
			{defs.gadget_wall_2,{11,6,1}}
		}
	},
	{defs.gadget_controller_3,
		{
			{defs.gadget_wall_3,{8,9,10}}, 
			{defs.gadget_wall_4,{3,4,5}}
		}
	},
	{defs.gadget_controller_4,
		{
			{defs.gadget_wall_3,{10,9,8}}, 
			{defs.gadget_wall_4,{5,4,3}}
		}
	}
}

--初始wall表，把所有的wall都填入
StartWallMap = 
{
    {defs.gadget_wall_1, 7},
    {defs.gadget_wall_2, 6},
    {defs.gadget_wall_3, 9},
    {defs.gadget_wall_4, 4}, 
}
--初始blocker表，把所有的block都填入
StartBlockerMap = 
{
    {defs.blocker_1,1,0},
    {defs.blocker_2,12,0}
}

--目标解法，如果填了就会有完成事件
TargetSolution = 
{
     12,11,10,5
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
	{ config_id = 239001, gadget_id = 70290170, pos = { x = 2799.480, y = 271.371, z = -1474.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 239002, gadget_id = 70290170, pos = { x = 2809.793, y = 271.371, z = -1474.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 239003, gadget_id = 70290170, pos = { x = 2804.592, y = 271.371, z = -1469.112 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 239004, gadget_id = 70290170, pos = { x = 2804.692, y = 271.500, z = -1479.640 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 239005, gadget_id = 70220006, pos = { x = 2804.640, y = 271.371, z = -1474.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239006, gadget_id = 70220006, pos = { x = 2794.510, y = 271.371, z = -1463.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239007, gadget_id = 70220006, pos = { x = 2814.777, y = 271.432, z = -1463.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239008, gadget_id = 70220006, pos = { x = 2794.431, y = 271.371, z = -1484.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239009, gadget_id = 70220006, pos = { x = 2814.951, y = 272.274, z = -1484.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239010, gadget_id = 70220006, pos = { x = 2804.556, y = 271.371, z = -1463.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239011, gadget_id = 70220006, pos = { x = 2794.308, y = 271.371, z = -1474.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239012, gadget_id = 70220006, pos = { x = 2814.804, y = 272.078, z = -1474.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239013, gadget_id = 70220006, pos = { x = 2804.676, y = 271.688, z = -1484.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239014, gadget_id = 70360305, pos = { x = 2803.153, y = 271.989, z = -1451.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239015, gadget_id = 70360305, pos = { x = 2781.647, y = 270.736, z = -1474.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239016, gadget_id = 70360305, pos = { x = 2821.537, y = 271.671, z = -1474.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239017, gadget_id = 70360305, pos = { x = 2805.055, y = 271.651, z = -1492.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239019, gadget_id = 70350006, pos = { x = 2810.236, y = 271.253, z = -1483.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239020, gadget_id = 70350006, pos = { x = 2799.188, y = 270.610, z = -1462.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239021, gadget_id = 70360305, pos = { x = 2810.616, y = 272.035, z = -1491.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239022, gadget_id = 70360305, pos = { x = 2799.307, y = 270.610, z = -1458.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 239025, gadget_id = 70211021, pos = { x = 2804.800, y = 277.462, z = -1474.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1239018, name = "GROUP_LOAD_239018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_239018", trigger_count = 0 },
	{ config_id = 1239023, name = "GADGET_STATE_CHANGE_239023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_239023", action = "action_EVENT_GADGET_STATE_CHANGE_239023", trigger_count = 0 },
	{ config_id = 1239024, name = "GADGET_STATE_CHANGE_239024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_239024", action = "action_EVENT_GADGET_STATE_CHANGE_239024", trigger_count = 0 },
	{ config_id = 1239026, name = "VARIABLE_CHANGE_239026", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_239026", action = "action_EVENT_VARIABLE_CHANGE_239026" }
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
		gadgets = { 239001, 239002, 239003, 239004, 239005, 239006, 239007, 239008, 239009, 239010, 239011, 239012, 239013, 239014, 239015, 239016, 239017, 239019, 239020, 239021, 239022, 239025 },
		regions = { },
		triggers = { "GROUP_LOAD_239018", "GADGET_STATE_CHANGE_239023", "GADGET_STATE_CHANGE_239024", "VARIABLE_CHANGE_239026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_239018(context, evt)
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (239014 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239014,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239014,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (239015 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239015,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239015,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (239016 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239016,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239016,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (239017 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239017,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239017,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (239021 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239021,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239021,302)
	end
	
	
	--lua层调用，将指定gadget转到一个合适的昼夜激活状态
	local is_daynight_gadget = false
	for i = 1 ,#EnvControlGadgets do
	  if (239022 == EnvControlGadgets[i]) then
	    is_daynight_gadget = true
	  end
	end
	
	if (not is_daynight_gadget) then 
	    ScriptLib.PrintContextLog(context,"EnvState: 错误的传入了一个不在昼夜列表中的物件！！！")
	    return -1 
	end
	local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 1)[1]
	local current_env_state = ScriptLib.GetLevelTagNameById(context,current_env_state_id)
	if (current_env_state == "2_4_Day") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239022,202)
	end
	if (current_env_state == "2_4_Night") then
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0,239022,302)
	end
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_239023(context, evt)
	if 239021 ~= evt.param2 or 222 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_239023(context, evt)
	-- 将configid为 239019 的物件更改为状态 GadgetState.GearStart
	local state = ScriptLib.GetGadgetStateByConfigId(context,0,239019)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239019, 201-state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_239024(context, evt)
	if 239022 ~= evt.param2 or 222 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_239024(context, evt)
	-- 将configid为 239020 的物件更改为状态 GadgetState.GearStart
	local state = ScriptLib.GetGadgetStateByConfigId(context,0,239020)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239020, 201-state) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_239026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"has_succeeded"为1
	if ScriptLib.GetGroupVariableValue(context, "has_succeeded") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_239026(context, evt)
	-- 将configid为 239025 的物件更改为状态 GadgetState.ChestOpened
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 239025, GadgetState.ChestOpened) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_4/WallMaze"
require "V2_4/EnvState"
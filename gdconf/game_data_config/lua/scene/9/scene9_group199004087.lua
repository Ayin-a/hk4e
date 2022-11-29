-- 基础信息
local base_info = {
	group_id = 199004087
}

-- DEFS_MISCS
local  defs = {
    
    group_id = 199004087,
    gadget_riddle_hint = 87001,
    gadget_riddle_1 = 87002,
    gadget_riddle_2 = 87003,
    gadget_riddle_3 = 87004, 
    gadget_riddle_4 = 87005,
    gadget_chest = 87006,

    --本Group用哪组LevelTag控制，请查LevelTagData表
    levelTagGroupID = 3,

    --是否由re-quire控制切suite，填0则不需要配置switchByLevelTag_suites
    switchByLevelTag = 1, 

    --切入该LevelTag时，加载且仅加载的suite。
    --注意，被此操作Remove掉的物件不会保留GadgetState
    switchByLevelTag_suites = {
        ["2_8_BuDing_MDLY"] = {},
        ["2_8_BuDing_MDDQ"] = {},
        ["2_8_BuDing_MDMD"] = {1,3,4},
        ["2_8_BuDing_DQDQ"] = {1,2,4},
        ["2_8_BuDing_LYDQ"] = {},
        ["2_8_BuDing_Default"] = {},
        ["2_8_BuDing_DQLY"] = {1,2,4},
        ["2_8_BuDing_LYLY"] = {},
        ["2_8_BuDing_LYMD"] = {1,3,4},
        ["2_8_BuDing_DQMD"] = {1,2,3,4},

    },

    --需要保存gadgetState的物件configID，最多9个
    saved_gadget = 
    {  
    	87002,87005,87003,87004,87001,87006
    }
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
	{ config_id = 87001, gadget_id = 70310012, pos = { x = -391.574, y = 118.236, z = -669.389 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 87002, gadget_id = 70310011, pos = { x = -391.537, y = 118.926, z = -684.130 }, rot = { x = 0.000, y = 276.100, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 87003, gadget_id = 70310011, pos = { x = -406.301, y = 119.949, z = -665.477 }, rot = { x = 0.000, y = 317.500, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 87004, gadget_id = 70310011, pos = { x = -394.081, y = 120.562, z = -657.343 }, rot = { x = 359.727, y = 254.934, z = 357.906 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 87005, gadget_id = 70310011, pos = { x = -381.210, y = 120.044, z = -671.230 }, rot = { x = 351.205, y = 14.100, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
	{ config_id = 87006, gadget_id = 70211112, pos = { x = -391.793, y = 118.677, z = -669.448 }, rot = { x = 0.000, y = 228.178, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 87010, gadget_id = 70360001, pos = { x = -384.456, y = 120.692, z = -672.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1087007, name = "GADGET_STATE_CHANGE_87007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87007", action = "action_EVENT_GADGET_STATE_CHANGE_87007", trigger_count = 0 },
	{ config_id = 1087008, name = "VARIABLE_CHANGE_87008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_87008", action = "action_EVENT_VARIABLE_CHANGE_87008", trigger_count = 0 },
	{ config_id = 1087009, name = "GROUP_LOAD_87009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_87009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
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
		gadgets = { 87010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_87007", "VARIABLE_CHANGE_87008", "GROUP_LOAD_87009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 87002, 87005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 87003, 87004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 87001, 87006 },
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
function condition_EVENT_GADGET_STATE_CHANGE_87007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_87007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_87008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_87008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_87009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

require "V2_8/DreamLandSuiteState"
-- 基础信息
local base_info = {
	group_id = 220140016
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        16001
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [16001] = 1,
                },

                --Key为操作台。value为发射器。允许有多个操作台控制同一个发射器
                controlRelation = {
                },

                --左右旋转的SelectOptionID
                selectID_horizon = 613,

                --上下俯仰的SelectOptionID
                selectID_vertical = 612,

                --定义左右旋转的步长,key为传递装置configID，value为GadgetState
                horizon_steps = {
                        [16005] = {0, 102, 103, 104},
                        [16010] = {0, 102, 103, 104},	        

                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
                        [16005] = {0, 302, 303, 304},
                        [16010] = {0, 302, 303, 304},

 	        
                },
              serve_items = {16002}
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
	{ config_id = 16001, gadget_id = 70310158, pos = { x = -35.832, y = -2.849, z = -63.227 }, rot = { x = 0.000, y = 0.000, z = 346.740 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 16002, gadget_id = 70290374, pos = { x = -35.831, y = -4.544, z = -36.594 }, rot = { x = 10.000, y = 25.000, z = 346.740 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 16003, gadget_id = 70310188, pos = { x = -35.644, y = -3.903, z = -36.556 }, rot = { x = 10.000, y = 25.000, z = 346.740 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 16005, gadget_id = 70310159, pos = { x = -35.832, y = -2.849, z = -59.523 }, rot = { x = 355.000, y = 325.000, z = 346.740 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 16007, gadget_id = 70690027, pos = { x = -25.316, y = -7.041, z = -32.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 16010, gadget_id = 70310159, pos = { x = -42.249, y = -1.866, z = -50.358 }, rot = { x = 9.163, y = 25.057, z = 349.164 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 16012, gadget_id = 70290373, pos = { x = -28.707, y = -5.922, z = -37.384 }, rot = { x = 347.580, y = 278.923, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1016004, name = "ANY_GADGET_DIE_16004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_16004", trigger_count = 0 },
	{ config_id = 1016006, name = "GROUP_LOAD_16006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_16006", action = "action_EVENT_GROUP_LOAD_16006", trigger_count = 0 },
	{ config_id = 1016013, name = "GADGET_STATE_CHANGE_16013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_16013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "temp", value = 0, no_refresh = true },
	{ config_id = 2, name = "isLock_1", value = 1, no_refresh = true }
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
		gadgets = { 16001, 16002, 16003, 16005, 16010, 16012 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_16004", "GROUP_LOAD_16006", "GADGET_STATE_CHANGE_16013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 16007 },
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
function action_EVENT_ANY_GADGET_DIE_16004(context, evt)
	if evt.param1 == 16003 then
		ScriptLib.SetGroupVariableValue(context, "isLock_1", 0)
		
		ScriptLib.SetGadgetStateByConfigId(context,16002, GadgetState.GearStart)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_16006(context, evt)
	-- 判断变量"temp"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "temp", 220140016) ~= 1 then
			return false
	end
	
	-- 判断变量"load"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "load", 220140003) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_16006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140016, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_16013(context, evt)
	if evt.param2 == 16012 and ScriptLib.GetGadgetStateByConfigId(context, 0, 16012) == 201 then
		ScriptLib.SetGroupVariableValueByGroup(context, "option1", 1, 220140003)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "unlock", 1, 220140017)
		
		ScriptLib.SetGroupVariableValueByGroup(context, "isLock_1", 0, 220140017)
		
		ScriptLib.SetGroupVariableValue(context, "temp", 1)
		
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220140017, 17002, GadgetState.Default)
		
		ScriptLib.SetGroupGadgetStateByConfigId(context, 220140017, 17003, GadgetState.GearStart)
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220140017, config_id=17012, entity_type=EntityType.GADGET})
		
		ScriptLib.KillEntityByConfigId(context, {group_id=220140017, config_id=17013, entity_type=EntityType.GADGET})
	end
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/KazuhaServeItem"
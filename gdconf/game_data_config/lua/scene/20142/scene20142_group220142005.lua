-- 基础信息
local base_info = {
	group_id = 220142005
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                       5001
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [5001] = 1,
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
 	        [5006] = {0, 102, 103, 104},
 	        [5008] = {0, 102, 103, 104},
 	        [5013] = {0, 102, 103, 104},
                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
 	        [5006] = {0, 302, 303, 304},
 	        [5008] = {0, 302, 303, 304},
 	        [5013] = {0, 302, 303, 304},
                },

                --反射装置初始state
                init_state = {
                },
    --本Group用哪组LevelTag控制，请查LevelTagData表
    levelTagGroupID = 7,

    --是否由re-quire控制切suite，填0则不需要配置switchByLevelTag_suites
    switchByLevelTag = 1, 

    --切入该LevelTag时，加载且仅加载的suite。
    --注意，被此操作Remove掉的物件不会保留GadgetState
    switchByLevelTag_suites = {
        ["2_8_Kazuha_04"] = {1,2},
        ["2_8_Kazuha_01"] = {1},
        ["2_8_Kazuha_02"] = {1,2},
        ["2_8_Kazuha_03"] = {1,2},
        ["2_8_Kazuha_05"] = {1,2},
        ["2_8_Kazuha_06"] = {1,2},
        ["2_8_Kazuha_07"] = {1,2},
    },

    --需要保存gadgetState的物件configID，最多9个
    saved_gadget = 
    {  
    	5003,5005,5001
    },
    --特判万叶晶石物件，这些物件在GroupLoad时，若为State 202则切成
    spec_gadget=
    {
    	5005
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
	{ config_id = 5001, gadget_id = 70310158, pos = { x = 67.355, y = 1.076, z = 92.498 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5003, gadget_id = 70211001, pos = { x = 71.607, y = 0.688, z = 100.009 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, autopick = true },
	{ config_id = 5004, gadget_id = 70310188, pos = { x = 57.521, y = 1.951, z = 92.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 5005, gadget_id = 70310164, pos = { x = 57.521, y = 1.459, z = 92.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 5006, gadget_id = 70310159, pos = { x = 61.282, y = 1.387, z = 92.482 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 5008, gadget_id = 70310159, pos = { x = 61.282, y = 1.314, z = 106.952 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 5011, gadget_id = 70310188, pos = { x = 71.675, y = 1.009, z = 100.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, persistent = true },
	{ config_id = 5013, gadget_id = 70310159, pos = { x = 65.530, y = 1.346, z = 106.876 }, rot = { x = 0.000, y = 141.396, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 5002, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 8.000 }, pos = { x = 63.235, y = 0.538, z = 107.968 } },
	{ config_id = 5007, shape = RegionShape.CUBIC, size = { x = 15.000, y = 10.000, z = 8.000 }, pos = { x = 65.502, y = 0.538, z = 92.591 } },
	{ config_id = 5009, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 20.000 }, pos = { x = 87.047, y = 4.668, z = 50.065 } }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "ENTER_REGION_5002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_5002", trigger_count = 0 },
	{ config_id = 1005007, name = "ENTER_REGION_5007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_5007" },
	{ config_id = 1005009, name = "ENTER_REGION_5009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_5009", trigger_count = 0 },
	{ config_id = 1005014, name = "ANY_GADGET_DIE_5014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5014", action = "action_EVENT_ANY_GADGET_DIE_5014" },
	{ config_id = 1005015, name = "ANY_GADGET_DIE_5015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5015", action = "action_EVENT_ANY_GADGET_DIE_5015" }
}

-- 变量
variables = {
	{ config_id = 2, name = "show", value = 0, no_refresh = true }
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
		gadgets = { 5001, 5004, 5005, 5006, 5008, 5013 },
		regions = { 5002, 5007, 5009 },
		triggers = { "ENTER_REGION_5002", "ENTER_REGION_5007", "ENTER_REGION_5009", "ANY_GADGET_DIE_5015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5003, 5011 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_5014" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_5002(context, evt)
	if evt.param1 == 5002 and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.TryRecordActivityPushTips(context, 2014002) == 0 then
		ScriptLib.ShowClientTutorial(context, 1178, {})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_5007(context, evt)
	if evt.param1 == 5007 and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.TryRecordActivityPushTips(context, 2014002) == 0 then
		ScriptLib.ShowClientTutorial(context, 1178, {})
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_5009(context, evt)
	if evt.param1 == 5009 and ScriptLib.GetRegionEntityCount(context, {region_eid = evt.source_eid, entity_type = EntityType.AVATAR}) == 1 and ScriptLib.TryRecordActivityPushTips(context, 2014002) == 0 then
		ScriptLib.ShowClientTutorial(context, 1178, {})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5014(context, evt)
	if 5011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5014(context, evt)
	-- 将configid为 5003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5015(context, evt)
	if 5004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5015(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/DreamLandSuiteState_Spec"
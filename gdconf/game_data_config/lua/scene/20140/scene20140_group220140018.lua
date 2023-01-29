-- 基础信息
local base_info = {
	group_id = 220140018
}

-- DEFS_MISCS
local        defs = {

                --本Group中发射器gadget的configID，最多3个,
                fireMachineList = {
                        18002
                },

                --key为发射器configID，value为ColorDefine
                initConfig = {
                        [18002] = 1,
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
                        [18003] = {0, 102, 103, 104},
                        [18004] = {0, 102, 103, 104},
                        [18005] = {0, 102, 103, 104},
                        [18006] = {0, 102, 103, 104},
                        [18007] = {0, 102, 103, 104},
                        [18008] = {0, 102, 103, 104},		        

                },

                --定义上下俯仰的步长,key为传递装置configID，value为GadgetState
                vertical_steps = {
                        [18003] = {0, 302, 303, 304},
                        [18004] = {0, 302, 303, 304},
                        [18005] = {0, 302, 303, 304},
                        [18006] = {0, 302, 303, 304},
                        [18007] = {0, 302, 303, 304},
                        [18008] = {0, 302, 303, 304},
 	        
                },

    --本Group用哪组LevelTag控制，请查LevelTagData表
    levelTagGroupID = 10,

    --是否由re-quire控制切suite，填0则不需要配置switchByLevelTag_suites
    switchByLevelTag = 1, 

    --切入该LevelTag时，加载且仅加载的suite。
    --注意，被此操作Remove掉的物件不会保留GadgetState
    switchByLevelTag_suites = {
        ["2_8_Kazuha03_01"] = {},
        ["2_8_Kazuha03_02"] = {2},
        ["2_8_Kazuha03_03"] = {2},
        ["2_8_Kazuha03_05"] = {2},
    },
    --需要保存gadgetState的物件configID，最多9个
    saved_gadget = 
    {  
            18009,18012
    },
              serve_items = {18009}
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
	{ config_id = 18001, gadget_id = 70360001, pos = { x = 0.037, y = 38.498, z = 278.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 18002, gadget_id = 70310158, pos = { x = -0.823, y = 38.497, z = 279.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 18003, gadget_id = 70310159, pos = { x = -0.609, y = 38.497, z = 283.913 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 18004, gadget_id = 70310159, pos = { x = -5.036, y = 38.497, z = 288.340 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 18005, gadget_id = 70310159, pos = { x = 3.824, y = 38.497, z = 297.200 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 613 } } },
	{ config_id = 18006, gadget_id = 70310159, pos = { x = -8.962, y = 38.497, z = 309.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 612 } } },
	{ config_id = 18009, gadget_id = 70290374, pos = { x = -8.789, y = 38.977, z = 316.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true },
	{ config_id = 18010, gadget_id = 70310188, pos = { x = -8.789, y = 39.779, z = 316.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 18012, gadget_id = 70290373, pos = { x = -1.337, y = 44.623, z = 339.549 }, rot = { x = 358.156, y = 283.304, z = 9.922 }, level = 1, persistent = true },
	{ config_id = 18015, gadget_id = 70211111, pos = { x = -4.843, y = 38.636, z = 277.459 }, rot = { x = 0.000, y = 57.658, z = 0.000 }, level = 16, drop_tag = "解谜中级群岛", isOneoff = true, persistent = true },
	{ config_id = 18019, gadget_id = 70211001, pos = { x = 51.680, y = 55.108, z = 337.431 }, rot = { x = 0.000, y = 248.537, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1018007, name = "GADGET_STATE_CHANGE_18007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18007", action = "action_EVENT_GADGET_STATE_CHANGE_18007", trigger_count = 0 },
	-- 4006708 任务保底
	{ config_id = 1018008, name = "QUEST_START_18008", event = EventType.EVENT_QUEST_START, source = "4006708", condition = "condition_EVENT_QUEST_START_18008", action = "action_EVENT_QUEST_START_18008", trigger_count = 0 },
	{ config_id = 1018011, name = "ANY_GADGET_DIE_18011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_18011", action = "action_EVENT_ANY_GADGET_DIE_18011", trigger_count = 0 },
	{ config_id = 1018013, name = "GADGET_STATE_CHANGE_18013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_18013", action = "action_EVENT_GADGET_STATE_CHANGE_18013", trigger_count = 0 },
	{ config_id = 1018014, name = "LUA_NOTIFY_18014", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_18014", action = "action_EVENT_LUA_NOTIFY_18014", trigger_count = 0 },
	{ config_id = 1018016, name = "TIME_AXIS_PASS_18016", event = EventType.EVENT_TIME_AXIS_PASS, source = "message", condition = "condition_EVENT_TIME_AXIS_PASS_18016", action = "action_EVENT_TIME_AXIS_PASS_18016", trigger_count = 0 },
	-- 4006708 包括了任务保底
	{ config_id = 1018017, name = "GROUP_LOAD_18017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_18017", trigger_count = 0 },
	{ config_id = 1018018, name = "TIME_AXIS_PASS_18018", event = EventType.EVENT_TIME_AXIS_PASS, source = "temp", condition = "condition_EVENT_TIME_AXIS_PASS_18018", action = "action_EVENT_TIME_AXIS_PASS_18018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "message", value = 0, no_refresh = true },
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
		gadgets = { 18001 },
		regions = { },
		triggers = { "QUEST_START_18008", "GROUP_LOAD_18017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 18002, 18003, 18004, 18005, 18006, 18009, 18010, 18012, 18015, 18019 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_18007", "ANY_GADGET_DIE_18011", "GADGET_STATE_CHANGE_18013", "LUA_NOTIFY_18014", "TIME_AXIS_PASS_18016", "TIME_AXIS_PASS_18018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18007(context, evt)
	if 18009 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18007(context, evt)
	-- 将本组内变量名为 "extra" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "extra", 2, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_18008(context, evt)
	-- 判断变量"message"为1
	if ScriptLib.GetGroupVariableValue(context, "message") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_18008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006708") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_18011(context, evt)
	if 18010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_18011(context, evt)
	-- 将本组内变量名为 "isLock_1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLock_1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 18009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 18009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_18013(context, evt)
	if 18012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_18013(context, evt)
	-- 将本组内变量名为 "temp" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "temp", 1, 220140012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "plat" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "plat", 4, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "message" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "message", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 220140012, monsters = {}, gadgets = {12001} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	-- 创建标识为"message"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "message", {1}, false)
	
	
	-- 创建标识为"temp"，时间节点为{2,4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "temp", {2,4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_LUA_NOTIFY_18014(context, evt)
	-- 判断变量"plat"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "plat", 220140004) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_18014(context, evt)
	-- 将本组内变量名为 "plat" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "plat", 3, 220140004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18016(context, evt)
	if "message" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4006708") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_18017(context, evt)
	if ScriptLib.CheckSceneTag(context, 20140,1070 ) then
		ScriptLib.AddExtraGroupSuite(context, 0, 2)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "message") == 1 then
		ScriptLib.AddQuestProgress(context, "4006708")
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_18018(context, evt)
	if "temp" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_18018(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220140012, 3)
	
	return 0
end

require "V2_8/FireMachineColorHandle"
require "V2_8/DreamLandSuiteState"
require "V2_8/KazuhaServeItem"
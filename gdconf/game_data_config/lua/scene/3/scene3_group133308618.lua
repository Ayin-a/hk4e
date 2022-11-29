-- 基础信息
local base_info = {
	group_id = 133308618
}

-- DEFS_MISCS
--第一次交互的option，之后切为2
local optionID = {431}

--常用ID：
--{431,432} 开/关门
--{433} 启动电梯
--{438,439} 开/关风扇（权限等级3）
--{440} 权限操作台解除物件锁定

local isQuest = 1

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
	{ config_id = 618001, gadget_id = 70330418, pos = { x = -1487.036, y = 86.470, z = 4464.614 }, rot = { x = 0.000, y = 9.393, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 },
	{ config_id = 618002, gadget_id = 70330283, pos = { x = -1479.584, y = 85.740, z = 4472.433 }, rot = { x = 0.000, y = 8.853, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, server_global_value_config = {SGV_CHAINTYPE = 100006, SGV_CHAINLEVEL = 1}, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 点击misc中配置的option1
	{ config_id = 1618003, name = "SELECT_OPTION_618003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_618003", action = "action_EVENT_SELECT_OPTION_618003", trigger_count = 0 },
	-- 点击option1后的执行
	{ config_id = 1618004, name = "GADGET_STATE_CHANGE_618004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_618004", action = "action_EVENT_GADGET_STATE_CHANGE_618004", trigger_count = 0 },
	-- 点击option1后的保底
	{ config_id = 1618005, name = "GROUP_LOAD_618005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_618005", action = "action_EVENT_GROUP_LOAD_618005", trigger_count = 0 },
	-- 开门
	{ config_id = 1618006, name = "QUEST_FINISH_618006", event = EventType.EVENT_QUEST_FINISH, source = "7305557", condition = "", action = "action_EVENT_QUEST_FINISH_618006", trigger_count = 0 },
	-- 关门
	{ config_id = 1618007, name = "QUEST_FINISH_618007", event = EventType.EVENT_QUEST_FINISH, source = "7305556", condition = "", action = "action_EVENT_QUEST_FINISH_618007", trigger_count = 0 },
	{ config_id = 1618008, name = "QUEST_FINISH_618008", event = EventType.EVENT_QUEST_FINISH, source = "7308317", condition = "", action = "action_EVENT_QUEST_FINISH_618008", trigger_count = 0 },
	{ config_id = 1618009, name = "GADGET_CREATE_618009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_618009", action = "action_EVENT_GADGET_CREATE_618009", trigger_count = 0 }
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
	suite = 2,
	end_suite = 1,
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
		gadgets = { 618001, 618002 },
		regions = { },
		triggers = { "SELECT_OPTION_618003", "GADGET_STATE_CHANGE_618004", "GROUP_LOAD_618005", "QUEST_FINISH_618006", "QUEST_FINISH_618007", "QUEST_FINISH_618008", "GADGET_CREATE_618009" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_618003(context, evt)
	-- 判断是gadgetid 618002 option_id 431
	if 618002 ~= evt.param1 then
		return false	
	end
	
	if 431 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_618003(context, evt)
	-- 将configid为 618002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618002, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知场景上的所有玩家播放名字为111 的cutscene
	if 0 ~= ScriptLib.PlayCutScene(context, 111, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : play_cutscene")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_618004(context, evt)
	if 618002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_618004(context, evt)
	-- 将configid为 618001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_618005(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133308618, 618002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_618005(context, evt)
	-- 将configid为 618001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_618006(context, evt)
	-- 将configid为 618001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_618007(context, evt)
	-- 将configid为 618001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_618008(context, evt)
	-- 将configid为 618002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 618002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_618009(context, evt)
	if 618002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_618009(context, evt)
	LF_StOperatorState( context )
	
	return 0
end

require "V3_1/PermissonOperator"
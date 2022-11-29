-- 基础信息
local base_info = {
	group_id = 133303041
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
	{ config_id = 41001, gadget_id = 70290474, pos = { x = -1100.190, y = 206.094, z = 3644.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- group1
	{ config_id = 41002, gadget_id = 70360001, pos = { x = -1099.367, y = 205.616, z = 3642.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, worktop_config = { init_options = { 768 } }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 按下清除完成任务
	{ config_id = 1041003, name = "SELECT_OPTION_41003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41003", action = "action_EVENT_SELECT_OPTION_41003" },
	-- 任务通知孢子堆消失
	{ config_id = 1041004, name = "QUEST_FINISH_41004", event = EventType.EVENT_QUEST_FINISH, source = "7301522", condition = "condition_EVENT_QUEST_FINISH_41004", action = "action_EVENT_QUEST_FINISH_41004" }
}

-- 变量
variables = {
	{ config_id = 1, name = "sum", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 41005, gadget_id = 71700288, pos = { x = -1099.203, y = 201.324, z = 3642.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 41006, gadget_id = 70360001, pos = { x = -1102.662, y = 203.971, z = 3642.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, worktop_config = { init_options = { 768 } }, area_id = 23 },
		{ config_id = 41007, gadget_id = 71700288, pos = { x = -1102.630, y = 204.423, z = 3642.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 41008, gadget_id = 70360001, pos = { x = -1100.496, y = 204.847, z = 3645.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, worktop_config = { init_options = { 768 } }, area_id = 23 },
		{ config_id = 41009, gadget_id = 71700288, pos = { x = -1100.479, y = 205.247, z = 3645.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1041010, name = "SELECT_OPTION_41010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41010", action = "action_EVENT_SELECT_OPTION_41010" },
		{ config_id = 1041011, name = "SELECT_OPTION_41011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_41011", action = "action_EVENT_SELECT_OPTION_41011" },
		{ config_id = 1041012, name = "VARIABLE_CHANGE_41012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41012", action = "action_EVENT_VARIABLE_CHANGE_41012" },
		{ config_id = 1041013, name = "VARIABLE_CHANGE_41013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41013", action = "action_EVENT_VARIABLE_CHANGE_41013" },
		{ config_id = 1041014, name = "VARIABLE_CHANGE_41014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41014", action = "action_EVENT_VARIABLE_CHANGE_41014" }
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
		-- description = ,
		monsters = { },
		gadgets = { 41001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 41001, 41002 },
		regions = { },
		triggers = { "SELECT_OPTION_41003", "QUEST_FINISH_41004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_41003(context, evt)
	-- 判断是gadgetid 41002 option_id 768
	if 41002 ~= evt.param1 then
		return false	
	end
	
	if 768 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_41003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303041, EntityType.GADGET, 41002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301510_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_41004(context, evt)
	--检查ID为7301522的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 7301522 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_41004(context, evt)
	-- 将configid为 41001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
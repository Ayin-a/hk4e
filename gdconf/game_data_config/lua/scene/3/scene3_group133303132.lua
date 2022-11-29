-- 基础信息
local base_info = {
	group_id = 133303132
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
	{ config_id = 132001, gadget_id = 70330404, pos = { x = -2265.018, y = 275.685, z = 3932.582 }, rot = { x = 0.000, y = 141.398, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1132002, name = "GADGET_STATE_CHANGE_132002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_132002", action = "action_EVENT_GADGET_STATE_CHANGE_132002" },
	{ config_id = 1132003, name = "QUEST_FINISH_132003", event = EventType.EVENT_QUEST_FINISH, source = "302005", condition = "", action = "action_EVENT_QUEST_FINISH_132003" },
	{ config_id = 1132004, name = "QUEST_FINISH_132004", event = EventType.EVENT_QUEST_FINISH, source = "302020", condition = "", action = "action_EVENT_QUEST_FINISH_132004" }
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
		gadgets = { 132001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_132002", "QUEST_FINISH_132003", "QUEST_FINISH_132004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_132002(context, evt)
	if 132001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_132002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "302005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_132003(context, evt)
	-- 将configid为 132001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_132004(context, evt)
	-- 将configid为 132001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
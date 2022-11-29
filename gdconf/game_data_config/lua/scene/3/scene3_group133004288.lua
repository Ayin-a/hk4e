-- 基础信息
local base_info = {
	group_id = 133004288
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
	{ config_id = 288001, npc_id = 10099, pos = { x = 2191.472, y = 212.049, z = -874.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 288003, npc_id = 10112, pos = { x = 2191.416, y = 212.049, z = -874.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 }
}

-- 装置
gadgets = {
	{ config_id = 288002, gadget_id = 70710123, pos = { x = 2191.332, y = 212.133, z = -874.163 }, rot = { x = 0.000, y = 161.589, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 288005, gadget_id = 70360001, pos = { x = 2191.367, y = 212.049, z = -874.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1288004, name = "QUEST_FINISH_288004", event = EventType.EVENT_QUEST_FINISH, source = "1050210", condition = "condition_EVENT_QUEST_FINISH_288004", action = "action_EVENT_QUEST_FINISH_288004", trigger_count = 0 },
	{ config_id = 1288006, name = "GADGET_CREATE_288006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_288006", action = "action_EVENT_GADGET_CREATE_288006", trigger_count = 0 },
	{ config_id = 1288007, name = "SELECT_OPTION_288007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_288007", action = "action_EVENT_SELECT_OPTION_288007", trigger_count = 0 },
	{ config_id = 1288008, name = "QUEST_START_288008", event = EventType.EVENT_QUEST_START, source = "1050210", condition = "", action = "action_EVENT_QUEST_START_288008", trigger_count = 0 }
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
		gadgets = { 288002 },
		regions = { },
		triggers = { },
		npcs = { 288003 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 288002, 288005 },
		regions = { },
		triggers = { "QUEST_FINISH_288004", "GADGET_CREATE_288006", "SELECT_OPTION_288007", "QUEST_START_288008" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 288001 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_288004(context, evt)
	--检查ID为1050210的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1050210 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_288004(context, evt)
	-- 将configid为 288002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_288006(context, evt)
	if 288005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_288006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {205}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_288007(context, evt)
	-- 判断是gadgetid 288005 option_id 205
	if 288005 ~= evt.param1 then
		return false	
	end
	
	if 205 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_288007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300428801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 288005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_288008(context, evt)
	-- 将configid为 288002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
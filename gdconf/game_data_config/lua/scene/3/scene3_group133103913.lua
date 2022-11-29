-- 基础信息
local base_info = {
	group_id = 133103913
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 913003, monster_id = 20011401, pos = { x = 699.351, y = 411.448, z = 1877.077 }, rot = { x = 0.000, y = 333.651, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 },
	{ config_id = 913004, monster_id = 20011202, pos = { x = 706.631, y = 412.182, z = 1845.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 913001, gadget_id = 70360045, pos = { x = 706.453, y = 410.973, z = 1845.225 }, rot = { x = 0.000, y = 314.588, z = 0.000 }, level = 24, persistent = true, area_id = 6 },
	{ config_id = 913002, gadget_id = 70360045, pos = { x = 698.926, y = 410.448, z = 1877.153 }, rot = { x = 0.000, y = 318.747, z = 0.000 }, level = 24, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1913005, name = "GADGET_STATE_CHANGE_913005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_913005", action = "action_EVENT_GADGET_STATE_CHANGE_913005", trigger_count = 0 },
	{ config_id = 1913006, name = "GADGET_STATE_CHANGE_913006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_913006", action = "action_EVENT_GADGET_STATE_CHANGE_913006", trigger_count = 0 },
	{ config_id = 1913007, name = "QUEST_FINISH_913007", event = EventType.EVENT_QUEST_FINISH, source = "100808", condition = "condition_EVENT_QUEST_FINISH_913007", action = "action_EVENT_QUEST_FINISH_913007" }
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
		gadgets = { },
		regions = { },
		triggers = { "QUEST_FINISH_913007" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 913001, 913002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_913005", "GADGET_STATE_CHANGE_913006", "QUEST_FINISH_913007" },
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
function condition_EVENT_GADGET_STATE_CHANGE_913005(context, evt)
	-- 检测config_id为913001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 913001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_913005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 913004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_913006(context, evt)
	-- 检测config_id为913002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 913002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_913006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 913003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_913007(context, evt)
	--检查ID为100808的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 100808 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_913007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103913, EntityType.GADGET, 913001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103913, EntityType.GADGET, 913002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为913001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 913001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为913002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 913002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
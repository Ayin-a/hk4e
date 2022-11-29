-- 基础信息
local base_info = {
	group_id = 133004054
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
	-- 1 书堆
	{ config_id = 54001, gadget_id = 70710564, pos = { x = 1197.887, y = 374.350, z = -799.100 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 1 交互
	{ config_id = 54002, gadget_id = 70710545, pos = { x = 1198.241, y = 374.235, z = -798.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	-- 2 炼金器材
	{ config_id = 54003, gadget_id = 70710563, pos = { x = 1197.301, y = 374.210, z = -792.030 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 3 书堆
	{ config_id = 54004, gadget_id = 70710564, pos = { x = 1192.783, y = 374.210, z = -794.439 }, rot = { x = 0.000, y = 149.853, z = 0.000 }, level = 1, area_id = 10 },
	-- 3 交互
	{ config_id = 54006, gadget_id = 70710573, pos = { x = 1193.427, y = 374.210, z = -793.924 }, rot = { x = 0.000, y = 329.853, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 },
	-- 2 交互
	{ config_id = 54007, gadget_id = 70710574, pos = { x = 1198.113, y = 374.163, z = -790.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 完成交互1 任务4002626 交互70710545
	{ config_id = 1054005, name = "QUEST_FINISH_54005", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_54005", action = "action_EVENT_QUEST_FINISH_54005" },
	-- 完成交互2 任务4002627 交互70710573
	{ config_id = 1054008, name = "QUEST_FINISH_54008", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_54008", action = "action_EVENT_QUEST_FINISH_54008" },
	-- 完成交互3 任务4002628 交互70710574
	{ config_id = 1054009, name = "QUEST_FINISH_54009", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_54009", action = "action_EVENT_QUEST_FINISH_54009" }
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
		gadgets = { 54001, 54003, 54004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 54001, 54002, 54003, 54004, 54006, 54007 },
		regions = { },
		triggers = { "QUEST_FINISH_54005", "QUEST_FINISH_54008", "QUEST_FINISH_54009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_QUEST_FINISH_54005(context, evt)
	--检查ID为4002626的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4002626 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_54005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004054, EntityType.GADGET, 54001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_54008(context, evt)
	--检查ID为4002627的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4002627 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_54008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004054, EntityType.GADGET, 54004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_54009(context, evt)
	--检查ID为4002628的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4002628 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_54009(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133004054, EntityType.GADGET, 54003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 201071003
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
	{ config_id = 3001, gadget_id = 70900201, pos = { x = 5.404, y = -14.729, z = -19.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70900201, pos = { x = 77.114, y = -12.999, z = -19.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3003, gadget_id = 70900201, pos = { x = 148.574, y = -7.266, z = -19.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70900201, pos = { x = 134.669, y = -7.219, z = -18.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70900201, pos = { x = 144.171, y = -7.059, z = -19.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 进入房间1销毁指引点
	{ config_id = 3006, shape = RegionShape.SPHERE, radius = 12, pos = { x = 4.315, y = -13.144, z = -19.760 } },
	-- 进入房间2销毁指引点
	{ config_id = 3008, shape = RegionShape.SPHERE, radius = 12, pos = { x = 77.180, y = -12.946, z = -19.944 } },
	-- 进入房间3销毁指引点
	{ config_id = 3010, shape = RegionShape.SPHERE, radius = 10, pos = { x = 148.342, y = -9.190, z = -20.375 } }
}

-- 触发器
triggers = {
	-- 进入房间1销毁指引点
	{ config_id = 1003006, name = "ENTER_REGION_3006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3006", action = "action_EVENT_ENTER_REGION_3006" },
	-- 检查对话1结束添加suite2
	{ config_id = 1003007, name = "QUEST_FINISH_3007", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3007", action = "action_EVENT_QUEST_FINISH_3007" },
	-- 进入房间2销毁指引点
	{ config_id = 1003008, name = "ENTER_REGION_3008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3008", action = "action_EVENT_ENTER_REGION_3008" },
	-- 检查对话2结束添加suite3
	{ config_id = 1003009, name = "QUEST_FINISH_3009", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3009", action = "action_EVENT_QUEST_FINISH_3009" },
	-- 进入房间3销毁指引点
	{ config_id = 1003010, name = "ENTER_REGION_3010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3010", action = "action_EVENT_ENTER_REGION_3010" },
	-- 检查对话3结束添加suite4
	{ config_id = 1003011, name = "QUEST_FINISH_3011", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3011", action = "action_EVENT_QUEST_FINISH_3011" },
	-- 检查对话4结束删除指引点并添加suite5
	{ config_id = 1003012, name = "QUEST_FINISH_3012", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3012", action = "action_EVENT_QUEST_FINISH_3012" },
	-- 检查对话5结束删除指引点
	{ config_id = 1003013, name = "QUEST_FINISH_3013", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_3013", action = "action_EVENT_QUEST_FINISH_3013" }
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
		-- description = 房间1,
		monsters = { },
		gadgets = { 3001 },
		regions = { 3006 },
		triggers = { "ENTER_REGION_3006", "QUEST_FINISH_3007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 房间2,
		monsters = { },
		gadgets = { 3002 },
		regions = { 3008 },
		triggers = { "ENTER_REGION_3008", "QUEST_FINISH_3009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 房间3,
		monsters = { },
		gadgets = { 3003 },
		regions = { 3010 },
		triggers = { "ENTER_REGION_3010", "QUEST_FINISH_3011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 寻找万叶,
		monsters = { },
		gadgets = { 3004 },
		regions = { },
		triggers = { "QUEST_FINISH_3012" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 寻找妖刀,
		monsters = { },
		gadgets = { 3005 },
		regions = { },
		triggers = { "QUEST_FINISH_3013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_3006(context, evt)
	if evt.param1 ~= 3006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071003, EntityType.GADGET, 3001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3007(context, evt)
	--检查ID为1203906的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203906 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3008(context, evt)
	if evt.param1 ~= 3008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3008(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071003, EntityType.GADGET, 3002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3009(context, evt)
	--检查ID为1203908的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203908 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3009(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071003, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3010(context, evt)
	if evt.param1 ~= 3010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071003, EntityType.GADGET, 3003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3011(context, evt)
	--检查ID为1203912的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203912 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3011(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071003, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3012(context, evt)
	--检查ID为1203913的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203913 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071003, EntityType.GADGET, 3004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201071003, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_3013(context, evt)
	--检查ID为1203914的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1203914 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_3013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201071003, EntityType.GADGET, 3005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
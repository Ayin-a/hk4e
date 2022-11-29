-- 基础信息
local base_info = {
	group_id = 220139005
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
	{ config_id = 5001, gadget_id = 70310451, pos = { x = 62.025, y = 102.273, z = 70.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5005, gadget_id = 70690011, pos = { x = 44.079, y = 84.780, z = 52.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5006, gadget_id = 70690011, pos = { x = 27.861, y = 83.355, z = 40.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 5002, shape = RegionShape.CYLINDER, radius = 1, pos = { x = 62.025, y = 102.273, z = 70.606 }, height = 10.000 },
	-- 进入平台区域后移除Suite2
	{ config_id = 5004, shape = RegionShape.SPHERE, radius = 35, pos = { x = -32.175, y = 84.795, z = 20.759 } }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "ENTER_REGION_5002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5002", action = "action_EVENT_ENTER_REGION_5002" },
	{ config_id = 1005003, name = "ANY_GADGET_DIE_5003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5003", action = "action_EVENT_ANY_GADGET_DIE_5003", trigger_count = 0 },
	-- 进入平台区域后移除Suite2
	{ config_id = 1005004, name = "ENTER_REGION_5004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5004", action = "action_EVENT_ENTER_REGION_5004", trigger_count = 0 }
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
		gadgets = { 5001 },
		regions = { 5002 },
		triggers = { "ENTER_REGION_5002", "ANY_GADGET_DIE_5003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 收集到玩具部件B后刷出持续风场,
		monsters = { },
		gadgets = { 5005, 5006 },
		regions = { 5004 },
		triggers = { "ENTER_REGION_5004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5002(context, evt)
	if evt.param1 ~= 5002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5002(context, evt)
	-- 将本组内变量名为 "CastleToyB" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "CastleToyB", 1, 220139004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 5001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "4007307") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5003(context, evt)
	if 5001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220139005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_5004(context, evt)
	if evt.param1 ~= 5004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5004(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 220139005, 2)
	
	return 0
end
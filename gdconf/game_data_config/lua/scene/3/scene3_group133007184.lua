-- 基础信息
local base_info = {
	group_id = 133007184
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
	{ config_id = 650, gadget_id = 70900201, pos = { x = 2677.249, y = 239.242, z = 41.263 }, rot = { x = 0.000, y = 210.555, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 651, gadget_id = 70900201, pos = { x = 2728.749, y = 253.480, z = 179.377 }, rot = { x = 0.000, y = 309.000, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 652, gadget_id = 70900201, pos = { x = 2648.715, y = 262.439, z = 166.348 }, rot = { x = 0.000, y = 18.107, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 653, gadget_id = 70900201, pos = { x = 2661.588, y = 283.423, z = 111.896 }, rot = { x = 0.000, y = 160.378, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 958, gadget_id = 70900201, pos = { x = 2660.388, y = 301.649, z = 121.746 }, rot = { x = 0.000, y = 160.378, z = 0.000 }, level = 23, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 186, shape = RegionShape.SPHERE, radius = 13, pos = { x = 2683.216, y = 238.660, z = 41.662 }, area_id = 4 },
	{ config_id = 187, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2728.181, y = 252.480, z = 179.438 }, area_id = 4 },
	{ config_id = 188, shape = RegionShape.SPHERE, radius = 6, pos = { x = 2649.312, y = 261.386, z = 166.342 }, area_id = 4 },
	{ config_id = 189, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2661.467, y = 282.357, z = 111.689 }, area_id = 4 },
	{ config_id = 191, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2656.138, y = 300.649, z = 123.589 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1000186, name = "ENTER_REGION_186", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_186", action = "action_EVENT_ENTER_REGION_186", tlog_tag = "风龙_184_爬塔_一重门" },
	{ config_id = 1000187, name = "ENTER_REGION_187", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_187", action = "action_EVENT_ENTER_REGION_187", tlog_tag = "风龙_184_爬塔_中环入口" },
	{ config_id = 1000188, name = "ENTER_REGION_188", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_188", action = "action_EVENT_ENTER_REGION_188", tlog_tag = "风龙_184_爬塔_内环入口" },
	{ config_id = 1000189, name = "ENTER_REGION_189", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_189", action = "action_EVENT_ENTER_REGION_189", tlog_tag = "风龙_184_爬塔_塔中风场" },
	{ config_id = 1000190, name = "QUEST_FINISH_190", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_190", action = "action_EVENT_QUEST_FINISH_190", tlog_tag = "风龙_184_爬塔_城门" },
	{ config_id = 1000191, name = "ENTER_REGION_191", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191", action = "action_EVENT_ENTER_REGION_191", tlog_tag = "风龙_184_爬塔_塔顶" }
}

-- 变量
variables = {
	{ config_id = 1, name = "status", value = 0, no_refresh = false }
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
		regions = { 186, 187, 188, 189, 191 },
		triggers = { "ENTER_REGION_186", "ENTER_REGION_187", "ENTER_REGION_188", "ENTER_REGION_189", "QUEST_FINISH_190", "ENTER_REGION_191" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_186(context, evt)
	if evt.param1 ~= 186 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"status"为1
	if ScriptLib.GetGroupVariableValue(context, "status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_186(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	-- 创建id为651的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 651 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_187(context, evt)
	if evt.param1 ~= 187 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"status"为1
	if ScriptLib.GetGroupVariableValue(context, "status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_187(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	-- 创建id为652的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 652 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_188(context, evt)
	if evt.param1 ~= 188 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"status"为1
	if ScriptLib.GetGroupVariableValue(context, "status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_188(context, evt)
		-- 杀死Group内所有实体
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_ALL }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_group")
			return -1
		end
		
	
	-- 创建id为653的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 653 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_189(context, evt)
	if evt.param1 ~= 189 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"status"为1
	if ScriptLib.GetGroupVariableValue(context, "status") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_189(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	-- 创建id为958的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 958 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "status" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "status", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_190(context, evt)
	--检查ID为38903的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 38903 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_190(context, evt)
	-- 创建id为650的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 650 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将本组内变量名为 "status" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "status", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_191(context, evt)
	if evt.param1 ~= 191 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_191(context, evt)
		-- 杀死Group内所有gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133007184, kill_policy = GroupKillPolicy.GROUP_KILL_GADGET }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_gadget_by_group")
			return -1
		end
	
	-- 将本组内变量名为 "status" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "status", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 166001518
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
	{ config_id = 518002, gadget_id = 70290204, pos = { x = 484.054, y = 176.114, z = 1305.470 }, rot = { x = 5.726, y = 0.758, z = 15.068 }, level = 36, area_id = 300 },
	{ config_id = 518003, gadget_id = 70290233, pos = { x = 480.464, y = 177.263, z = 1310.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 518004, gadget_id = 70290266, pos = { x = 484.039, y = 176.207, z = 1305.383 }, rot = { x = 10.100, y = 1.823, z = 13.441 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1518001, name = "GROUP_LOAD_518001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_518001", action = "action_EVENT_GROUP_LOAD_518001", trigger_count = 0 },
	{ config_id = 1518005, name = "ANY_GADGET_DIE_518005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_518005", action = "action_EVENT_ANY_GADGET_DIE_518005", trigger_count = 0 },
	{ config_id = 1518006, name = "TIME_AXIS_PASS_518006", event = EventType.EVENT_TIME_AXIS_PASS, source = "reborn", condition = "condition_EVENT_TIME_AXIS_PASS_518006", action = "action_EVENT_TIME_AXIS_PASS_518006", trigger_count = 0 }
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
		gadgets = { 518002, 518003, 518004 },
		regions = { },
		triggers = { "GROUP_LOAD_518001", "ANY_GADGET_DIE_518005", "TIME_AXIS_PASS_518006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_518001(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001518}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_518001(context, evt)
	-- 创建id为518002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 518002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为518003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 518003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_518005(context, evt)
	if 518002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_518005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 518003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"reborn"，时间节点为{6}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reborn", {6}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_518006(context, evt)
	if "reborn" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_518006(context, evt)
	-- 创建id为518002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 518002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为518003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 518003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
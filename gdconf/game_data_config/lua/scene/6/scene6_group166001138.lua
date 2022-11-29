-- 基础信息
local base_info = {
	group_id = 166001138
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138001, monster_id = 22010101, pos = { x = 809.296, y = 706.475, z = 231.336 }, rot = { x = 0.000, y = 320.345, z = 0.000 }, level = 36, drop_tag = "深渊法师", pose_id = 9013, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 138003, gadget_id = 70290204, pos = { x = 804.652, y = 706.257, z = 234.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 138004, gadget_id = 70290233, pos = { x = 804.203, y = 706.506, z = 235.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 138005, gadget_id = 70290266, pos = { x = 804.667, y = 706.249, z = 234.189 }, rot = { x = 1.790, y = 0.838, z = 0.026 }, level = 32, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1138002, name = "ANY_GADGET_DIE_138002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_138002", action = "action_EVENT_ANY_GADGET_DIE_138002", trigger_count = 0 },
	{ config_id = 1138006, name = "GROUP_LOAD_138006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_138006", action = "action_EVENT_GROUP_LOAD_138006", trigger_count = 0 },
	{ config_id = 1138008, name = "TIME_AXIS_PASS_138008", event = EventType.EVENT_TIME_AXIS_PASS, source = "reborn", condition = "condition_EVENT_TIME_AXIS_PASS_138008", action = "action_EVENT_TIME_AXIS_PASS_138008", trigger_count = 0 }
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
		monsters = { 138001 },
		gadgets = { 138003, 138004, 138005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_138002", "GROUP_LOAD_138006", "TIME_AXIS_PASS_138008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_138002(context, evt)
	if 138003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_138002(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 138004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"reborn"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reborn", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_138006(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001138}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_138006(context, evt)
	-- 创建id为138003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_138008(context, evt)
	if "reborn" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_138008(context, evt)
	-- 创建id为138003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为138004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 138004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
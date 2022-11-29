-- 基础信息
local base_info = {
	group_id = 166001269
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
	{ config_id = 269001, gadget_id = 70290204, pos = { x = 942.018, y = 725.314, z = 209.366 }, rot = { x = 1.078, y = 9.004, z = 353.228 }, level = 32, area_id = 300 },
	{ config_id = 269002, gadget_id = 70290233, pos = { x = 942.229, y = 724.964, z = 210.754 }, rot = { x = 0.000, y = 267.644, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 269004, gadget_id = 70290266, pos = { x = 941.968, y = 725.279, z = 209.505 }, rot = { x = 1.915, y = 356.680, z = 359.715 }, level = 36, area_id = 300 },
	{ config_id = 269006, gadget_id = 70290347, pos = { x = 918.556, y = 716.741, z = 202.651 }, rot = { x = 0.000, y = 344.971, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1269003, name = "ANY_GADGET_DIE_269003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_269003", action = "action_EVENT_ANY_GADGET_DIE_269003", trigger_count = 0 },
	{ config_id = 1269005, name = "TIME_AXIS_PASS_269005", event = EventType.EVENT_TIME_AXIS_PASS, source = "time", condition = "condition_EVENT_TIME_AXIS_PASS_269005", action = "action_EVENT_TIME_AXIS_PASS_269005", trigger_count = 0 },
	{ config_id = 1269008, name = "GROUP_LOAD_269008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_269008", action = "action_EVENT_GROUP_LOAD_269008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 269007, gadget_id = 70360342, pos = { x = 934.656, y = 724.807, z = 206.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
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
		gadgets = { 269001, 269002, 269004, 269006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_269003", "TIME_AXIS_PASS_269005", "GROUP_LOAD_269008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_269003(context, evt)
	if 269001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_269003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 269002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建标识为"time"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "time", {4}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_269005(context, evt)
	if "time" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_269005(context, evt)
	-- 创建id为269001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 269001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为269002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 269002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_269008(context, evt)
	-- 判断指定group组剩余gadget数量是否是2 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001269}) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_269008(context, evt)
	-- 创建id为269001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 269001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为269002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 269002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
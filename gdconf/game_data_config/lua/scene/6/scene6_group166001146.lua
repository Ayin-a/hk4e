-- 基础信息
local base_info = {
	group_id = 166001146
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 146001, monster_id = 26030101, pos = { x = 692.498, y = 708.348, z = 385.596 }, rot = { x = 0.000, y = 125.702, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146002, gadget_id = 70290205, pos = { x = 699.468, y = 709.400, z = 397.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 146003, gadget_id = 70290233, pos = { x = 699.018, y = 709.778, z = 399.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 146006, gadget_id = 70211001, pos = { x = 698.468, y = 707.962, z = 387.463 }, rot = { x = 0.000, y = 190.751, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 146007, gadget_id = 70360342, pos = { x = 698.394, y = 707.780, z = 387.439 }, rot = { x = 0.000, y = 0.000, z = 352.982 }, level = 36, isOneoff = true, persistent = true, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1146004, name = "ANY_GADGET_DIE_146004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_146004", action = "action_EVENT_ANY_GADGET_DIE_146004" },
	{ config_id = 1146008, name = "GROUP_LOAD_146008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_146008", action = "action_EVENT_GROUP_LOAD_146008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 146005, monster_id = 26030101, pos = { x = 717.195, y = 707.304, z = 397.406 }, rot = { x = 0.000, y = 234.713, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 300 }
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
		monsters = { 146001 },
		gadgets = { 146002, 146003, 146007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_146004", "GROUP_LOAD_146008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_GADGET_DIE_146004(context, evt)
	if 146002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_146004(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 146003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 146007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为146006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_146008(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_146008(context, evt)
	-- 创建id为146006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 146006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
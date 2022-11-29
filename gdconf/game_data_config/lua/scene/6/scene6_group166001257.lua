-- 基础信息
local base_info = {
	group_id = 166001257
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 257007, monster_id = 20011401, pos = { x = 1127.985, y = 955.774, z = 478.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 },
	{ config_id = 257008, monster_id = 28020605, pos = { x = 1140.391, y = 958.039, z = 485.884 }, rot = { x = 0.000, y = 247.735, z = 0.000 }, level = 36, drop_tag = "走兽", isOneoff = true, area_id = 300 },
	{ config_id = 257010, monster_id = 20011401, pos = { x = 1136.330, y = 956.537, z = 471.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 257001, gadget_id = 70290204, pos = { x = 1132.223, y = 955.794, z = 474.499 }, rot = { x = 17.372, y = 9.068, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 257002, gadget_id = 70290233, pos = { x = 1133.477, y = 955.992, z = 477.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 257004, gadget_id = 70360342, pos = { x = 1137.288, y = 956.898, z = 468.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 257005, gadget_id = 70360342, pos = { x = 1140.611, y = 957.723, z = 486.063 }, rot = { x = 339.052, y = 357.870, z = 11.483 }, level = 36, isOneoff = true, persistent = true, area_id = 300 },
	{ config_id = 257006, gadget_id = 70211101, pos = { x = 1137.158, y = 957.446, z = 468.001 }, rot = { x = 17.559, y = 40.588, z = 5.674 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 257009, gadget_id = 70220048, pos = { x = 1132.734, y = 959.156, z = 460.771 }, rot = { x = 8.256, y = 289.099, z = 355.113 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1257003, name = "ANY_GADGET_DIE_257003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_257003", action = "action_EVENT_ANY_GADGET_DIE_257003" },
	{ config_id = 1257011, name = "GROUP_LOAD_257011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_257011", action = "action_EVENT_GROUP_LOAD_257011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
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
		monsters = { 257007, 257010 },
		gadgets = { 257001, 257002, 257004, 257005, 257009 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_257003", "GROUP_LOAD_257011" },
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
function condition_EVENT_ANY_GADGET_DIE_257003(context, evt)
	if 257001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_257003(context, evt)
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 257002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为257006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 257008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 257005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 257004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_257011(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_257011(context, evt)
	-- 创建id为257006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 257006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
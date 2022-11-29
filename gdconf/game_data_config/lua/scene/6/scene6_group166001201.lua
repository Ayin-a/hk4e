-- 基础信息
local base_info = {
	group_id = 166001201
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
	{ config_id = 201001, gadget_id = 70290395, pos = { x = 926.956, y = 1018.360, z = 992.550 }, rot = { x = 0.991, y = 266.777, z = 1.604 }, level = 32, isOneoff = true, area_id = 300 },
	{ config_id = 201002, gadget_id = 70290308, pos = { x = 924.729, y = 1017.143, z = 997.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 201003, gadget_id = 70290308, pos = { x = 921.442, y = 1016.774, z = 995.041 }, rot = { x = 0.000, y = 302.059, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 201004, gadget_id = 70290308, pos = { x = 924.492, y = 1016.720, z = 994.676 }, rot = { x = 0.000, y = 262.269, z = 0.000 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 201005, shape = RegionShape.SPHERE, radius = 10, pos = { x = 914.543, y = 1015.279, z = 1023.715 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1201005, name = "ENTER_REGION_201005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_201005" },
	{ config_id = 1201006, name = "ANY_GADGET_DIE_201006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_201006" }
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
		gadgets = { 201001 },
		regions = { 201005 },
		triggers = { "ENTER_REGION_201005", "ANY_GADGET_DIE_201006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_201005(context, evt)
	-- 创建id为201002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 201002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为201003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 201003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为201004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 201004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_201006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 201001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 166001196
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
	{ config_id = 196001, gadget_id = 70290301, pos = { x = 911.766, y = 838.032, z = 561.162 }, rot = { x = 358.524, y = 343.347, z = 25.070 }, level = 32, isOneoff = true, area_id = 300 },
	{ config_id = 196002, gadget_id = 70290324, pos = { x = 907.463, y = 832.021, z = 562.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 196005, gadget_id = 70290324, pos = { x = 901.338, y = 829.983, z = 564.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 196003, shape = RegionShape.SPHERE, radius = 20, pos = { x = 877.464, y = 810.559, z = 541.555 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1196003, name = "ENTER_REGION_196003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_196003" },
	{ config_id = 1196004, name = "ANY_GADGET_DIE_196004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_196004" }
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
		gadgets = { 196001 },
		regions = { 196003 },
		triggers = { "ENTER_REGION_196003", "ANY_GADGET_DIE_196004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_196003(context, evt)
	-- 创建id为196002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为196005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 196005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_196004(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 196001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 220129028
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
	{ config_id = 28001, gadget_id = 70290395, pos = { x = 288.700, y = 206.110, z = 510.700 }, rot = { x = 353.560, y = 57.200, z = 34.100 }, level = 1 },
	{ config_id = 28002, gadget_id = 70290308, pos = { x = 295.172, y = 206.145, z = 508.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28003, gadget_id = 70290308, pos = { x = 295.378, y = 206.424, z = 509.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 28004, gadget_id = 70290395, pos = { x = 287.900, y = 206.100, z = 284.100 }, rot = { x = 353.600, y = 57.240, z = 34.150 }, level = 1 },
	{ config_id = 28005, gadget_id = 70211101, pos = { x = 286.481, y = 207.897, z = 291.000 }, rot = { x = 0.000, y = 145.980, z = 8.719 }, level = 1, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true },
	{ config_id = 28006, gadget_id = 70290395, pos = { x = 288.000, y = 206.110, z = 82.000 }, rot = { x = 353.560, y = 50.000, z = 34.100 }, level = 1 },
	{ config_id = 28008, gadget_id = 70290395, pos = { x = 288.700, y = 206.100, z = 510.700 }, rot = { x = 353.600, y = 57.200, z = 34.100 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028007, name = "ANY_GADGET_DIE_28007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_28007", action = "action_EVENT_ANY_GADGET_DIE_28007" }
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
		gadgets = { 28001, 28002, 28003, 28004, 28006, 28008 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_28007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28005 },
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
function condition_EVENT_ANY_GADGET_DIE_28007(context, evt)
	if 28001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_28007(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220129028, EntityType.GADGET, 28004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220129028, EntityType.GADGET, 28006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为28005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 28005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
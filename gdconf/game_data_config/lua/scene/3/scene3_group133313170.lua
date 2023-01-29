-- 基础信息
local base_info = {
	group_id = 133313170
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
	{ config_id = 170001, gadget_id = 70330430, pos = { x = -698.701, y = -229.333, z = 5811.384 }, rot = { x = 0.000, y = 334.171, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 170002, gadget_id = 70210101, pos = { x = -698.405, y = -229.216, z = 5810.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 },
	{ config_id = 170003, gadget_id = 70210101, pos = { x = -699.714, y = -229.367, z = 5810.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1170004, name = "ANY_GADGET_DIE_170004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_170004", action = "action_EVENT_ANY_GADGET_DIE_170004" }
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
		gadgets = { 170001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_170004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_170004(context, evt)
	if 170001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_170004(context, evt)
	-- 创建id为170003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 170003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为170002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 170002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133008353
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
	{ config_id = 353001, gadget_id = 70360102, pos = { x = 947.194, y = 201.690, z = -1213.424 }, rot = { x = 345.873, y = 354.608, z = 11.818 }, level = 30, area_id = 10 },
	{ config_id = 353002, gadget_id = 70211101, pos = { x = 947.523, y = 201.475, z = -1213.678 }, rot = { x = 341.768, y = 41.675, z = 15.948 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1353003, name = "ANY_GADGET_DIE_353003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_353003", action = "action_EVENT_ANY_GADGET_DIE_353003" }
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
		gadgets = { 353001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_353003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_353003(context, evt)
	if 353001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_353003(context, evt)
	-- 创建id为353002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 353002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
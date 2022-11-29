-- 基础信息
local base_info = {
	group_id = 133304455
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
	{ config_id = 455002, gadget_id = 70330219, pos = { x = -1621.491, y = 129.110, z = 2078.308 }, rot = { x = 0.000, y = 334.154, z = 347.912 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 455005, gadget_id = 70217020, pos = { x = -1621.624, y = 129.730, z = 2078.336 }, rot = { x = 3.279, y = 326.345, z = 346.251 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1455004, name = "ANY_GADGET_DIE_455004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_455004", action = "action_EVENT_ANY_GADGET_DIE_455004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 455001, gadget_id = 70310198, pos = { x = -1618.935, y = 125.595, z = 2086.317 }, rot = { x = 0.000, y = 20.096, z = 0.000 }, level = 30, area_id = 21 }
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
		gadgets = { 455002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_455004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_455004(context, evt)
	if 455002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_455004(context, evt)
	-- 创建id为455005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 455005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
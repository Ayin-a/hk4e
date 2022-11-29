-- 基础信息
local base_info = {
	group_id = 133302314
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
	{ config_id = 314002, gadget_id = 70217020, pos = { x = -423.217, y = 143.895, z = 2214.867 }, rot = { x = 12.343, y = 356.577, z = 357.074 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 24 },
	{ config_id = 314007, gadget_id = 70330218, pos = { x = -424.025, y = 143.420, z = 2213.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1314001, name = "ANY_GADGET_DIE_314001", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_314001", action = "action_EVENT_ANY_GADGET_DIE_314001" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 314004, gadget_id = 70217020, pos = { x = -423.217, y = 143.895, z = 2214.867 }, rot = { x = 12.527, y = 0.984, z = 358.023 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, explore = { name = "chest", exp = 4 }, area_id = 24 }
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
		gadgets = { 314007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_314001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_314001(context, evt)
	if 314007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_314001(context, evt)
	-- 创建id为314002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 314002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
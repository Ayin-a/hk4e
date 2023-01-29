-- 基础信息
local base_info = {
	group_id = 133003165
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
	{ config_id = 4037, gadget_id = 70380002, pos = { x = 2441.220, y = 211.659, z = -1155.619 }, rot = { x = 0.000, y = 28.251, z = 0.000 }, level = 2, route_id = 3003231, persistent = true, area_id = 1 },
	{ config_id = 4038, gadget_id = 70211101, pos = { x = 2444.895, y = 207.322, z = -1150.739 }, rot = { x = 351.037, y = 33.254, z = 0.180 }, level = 1, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000500, name = "ANY_GADGET_DIE_500", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_500", action = "action_EVENT_ANY_GADGET_DIE_500" },
	{ config_id = 1000503, name = "ANY_GADGET_DIE_503", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_503", action = "action_EVENT_ANY_GADGET_DIE_503", tlog_tag = "新手区_风史莱姆宝箱get" }
}

-- 变量
variables = {
	{ config_id = 1, name = "v2669", value = 0, no_refresh = false },
	{ config_id = 2, name = "v2670", value = 0, no_refresh = false }
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
		gadgets = { 4037 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_500", "ANY_GADGET_DIE_503" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_500(context, evt)
	if 2669 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_500(context, evt)
	-- 创建id为4020的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4020 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_503(context, evt)
	if 4037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_503(context, evt)
	-- 创建id为4038的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4038 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
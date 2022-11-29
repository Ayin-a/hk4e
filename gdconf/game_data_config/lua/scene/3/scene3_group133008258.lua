-- 基础信息
local base_info = {
	group_id = 133008258
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
	{ config_id = 258001, gadget_id = 70220046, pos = { x = 1422.096, y = 279.849, z = -1046.695 }, rot = { x = 9.432, y = 134.641, z = 355.188 }, level = 30, area_id = 10 },
	{ config_id = 258002, gadget_id = 70590025, pos = { x = 1420.899, y = 277.804, z = -1063.568 }, rot = { x = 11.179, y = 1.235, z = 331.920 }, level = 30, area_id = 10 },
	{ config_id = 258003, gadget_id = 70590025, pos = { x = 1439.447, y = 281.706, z = -1014.721 }, rot = { x = 339.841, y = 8.779, z = 1.203 }, level = 30, area_id = 10 },
	{ config_id = 258005, gadget_id = 70590025, pos = { x = 1431.260, y = 277.225, z = -1054.101 }, rot = { x = 39.923, y = 87.502, z = 7.706 }, level = 30, area_id = 10 },
	{ config_id = 258006, gadget_id = 70211101, pos = { x = 1421.587, y = 279.215, z = -1046.802 }, rot = { x = 18.398, y = 100.291, z = 355.522 }, level = 26, drop_tag = "雪山解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1258004, name = "ANY_GADGET_DIE_258004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_258004", action = "action_EVENT_ANY_GADGET_DIE_258004" }
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
		gadgets = { 258001, 258002, 258003, 258005 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_258004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_258004(context, evt)
	if 258001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_258004(context, evt)
	-- 创建id为258006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 258006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133104514
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
	{ config_id = 514001, gadget_id = 70220008, pos = { x = 829.837, y = 210.806, z = 583.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 514002, gadget_id = 70220008, pos = { x = 822.034, y = 210.734, z = 585.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 514003, gadget_id = 70220008, pos = { x = 826.966, y = 210.874, z = 587.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 514005, gadget_id = 70211001, pos = { x = 825.637, y = 211.084, z = 581.032 }, rot = { x = 2.317, y = 16.595, z = 1.623 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1514004, name = "ANY_GADGET_DIE_514004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_514004", action = "action_EVENT_ANY_GADGET_DIE_514004" }
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
		gadgets = { 514001, 514002, 514003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_514004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_514004(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133104514}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_514004(context, evt)
	-- 创建id为514005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 514005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
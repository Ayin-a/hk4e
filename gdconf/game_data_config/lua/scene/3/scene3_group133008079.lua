-- 基础信息
local base_info = {
	group_id = 133008079
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
	{ config_id = 79004, npc_id = 20182, pos = { x = 1100.268, y = 399.768, z = -655.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 10 }
}

-- 装置
gadgets = {
	{ config_id = 79001, gadget_id = 70360102, pos = { x = 1100.181, y = 399.104, z = -654.303 }, rot = { x = 12.147, y = 23.139, z = 2.560 }, level = 30, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 79002, gadget_id = 70360102, pos = { x = 1100.610, y = 399.124, z = -655.327 }, rot = { x = 12.569, y = 91.990, z = 354.055 }, level = 30, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 79003, gadget_id = 70360102, pos = { x = 1101.216, y = 398.847, z = -654.821 }, rot = { x = 359.149, y = 106.536, z = 18.920 }, level = 30, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 79006, gadget_id = 70210101, pos = { x = 1101.296, y = 399.336, z = -654.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1079005, name = "ANY_GADGET_DIE_79005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79005", action = "action_EVENT_ANY_GADGET_DIE_79005", trigger_count = 0 }
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
		gadgets = { 79001, 79002, 79003 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 79006 },
		regions = { },
		triggers = { },
		npcs = { 79004 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133008079}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133008079, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
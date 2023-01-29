-- 基础信息
local base_info = {
	group_id = 133314232
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
	{ config_id = 232001, gadget_id = 70330340, pos = { x = -260.390, y = 243.170, z = 4272.443 }, rot = { x = 355.268, y = 322.765, z = 13.105 }, level = 32, area_id = 32 },
	{ config_id = 232002, gadget_id = 70330435, pos = { x = -285.443, y = 240.973, z = 4255.688 }, rot = { x = 357.068, y = 55.442, z = 18.696 }, level = 32, area_id = 32 },
	{ config_id = 232003, gadget_id = 70330342, pos = { x = -261.169, y = 245.764, z = 4272.441 }, rot = { x = 39.013, y = 303.987, z = 2.500 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1232004, name = "ANY_GADGET_DIE_232004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_232004", action = "action_EVENT_ANY_GADGET_DIE_232004" }
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
		gadgets = { 232001, 232002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_232004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 232002, 232003 },
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
function condition_EVENT_ANY_GADGET_DIE_232004(context, evt)
	if 232001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_232004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133314232, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133213479
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
	{ config_id = 479001, gadget_id = 70360050, pos = { x = -3543.710, y = 215.117, z = -3282.185 }, rot = { x = 1.621, y = 7.429, z = 350.800 }, level = 27, area_id = 12 },
	{ config_id = 479002, gadget_id = 70900384, pos = { x = -3542.918, y = 219.130, z = -3280.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 479003, gadget_id = 70211001, pos = { x = -3543.981, y = 216.118, z = -3278.048 }, rot = { x = 9.680, y = 193.050, z = 22.738 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 479005, gadget_id = 70210101, pos = { x = -3543.839, y = 216.887, z = -3275.937 }, rot = { x = 9.680, y = 193.050, z = 22.738 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1479004, name = "ANY_GADGET_DIE_479004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_479004", action = "action_EVENT_ANY_GADGET_DIE_479004" }
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
		gadgets = { 479002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_479004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 479001, 479003, 479005 },
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
function condition_EVENT_ANY_GADGET_DIE_479004(context, evt)
	if 479002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_479004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213479, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6047, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133213478
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
	{ config_id = 478001, gadget_id = 70360050, pos = { x = -3838.076, y = 238.833, z = -3229.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 478002, gadget_id = 70900384, pos = { x = -3838.305, y = 236.784, z = -3228.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 478004, gadget_id = 70211101, pos = { x = -3838.142, y = 236.983, z = -3227.641 }, rot = { x = 357.001, y = 190.407, z = 26.019 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 478005, gadget_id = 70210101, pos = { x = -3839.417, y = 237.106, z = -3228.376 }, rot = { x = 357.001, y = 190.407, z = 26.019 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 12 },
	{ config_id = 478006, gadget_id = 70900384, pos = { x = -3843.000, y = 225.000, z = -3215.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1478003, name = "ANY_GADGET_DIE_478003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_478003", action = "action_EVENT_ANY_GADGET_DIE_478003" },
	{ config_id = 1478007, name = "ANY_GADGET_DIE_478007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_478007", action = "action_EVENT_ANY_GADGET_DIE_478007" }
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
		gadgets = { 478002, 478006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_478003", "ANY_GADGET_DIE_478007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 478001, 478004, 478005 },
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
function condition_EVENT_ANY_GADGET_DIE_478003(context, evt)
	if 478002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_478003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213478, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6047, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_478007(context, evt)
	if 478006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_478007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213478, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6047, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
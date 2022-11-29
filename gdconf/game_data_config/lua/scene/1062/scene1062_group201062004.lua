-- 基础信息
local base_info = {
	group_id = 201062004
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
	{ config_id = 4001, gadget_id = 70360282, pos = { x = 182.689, y = -9.330, z = -19.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, start_route = false },
	{ config_id = 4004, gadget_id = 70900205, pos = { x = 196.376, y = -38.639, z = -19.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "GADGET_STATE_CHANGE_4003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4003", action = "action_EVENT_GADGET_STATE_CHANGE_4003" }
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
		gadgets = { 4001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_4003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 4004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_4003(context, evt)
	if 4001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4003(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 4001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 201062010, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 201062010, 5)
	
	return 0
end
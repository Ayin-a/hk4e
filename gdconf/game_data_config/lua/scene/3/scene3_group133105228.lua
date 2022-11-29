-- 基础信息
local base_info = {
	group_id = 133105228
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
	{ config_id = 228001, gadget_id = 70900007, pos = { x = 313.086, y = 196.499, z = -73.961 }, rot = { x = 341.352, y = 341.844, z = 18.640 }, level = 1, state = GadgetState.GearAction1, persistent = true, area_id = 9 },
	{ config_id = 228002, gadget_id = 70211111, pos = { x = 295.710, y = 199.583, z = -66.404 }, rot = { x = 0.000, y = 108.578, z = 0.000 }, level = 16, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1228003, name = "GADGET_STATE_CHANGE_228003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_228003", action = "action_EVENT_GADGET_STATE_CHANGE_228003" }
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
		gadgets = { 228001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_228003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 228002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_228003(context, evt)
	if 228001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_228003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105228, 2)
	
	return 0
end
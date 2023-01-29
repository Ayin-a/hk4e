-- 基础信息
local base_info = {
	group_id = 133314196
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 196003, monster_id = 26090901, pos = { x = -825.372, y = -48.762, z = 5014.704 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 },
	{ config_id = 196004, monster_id = 26090901, pos = { x = -824.335, y = -49.915, z = 5016.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 101, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 196001, gadget_id = 70330430, pos = { x = -825.794, y = -48.912, z = 5015.738 }, rot = { x = 8.372, y = 354.436, z = 332.946 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 196005, gadget_id = 70330435, pos = { x = -794.210, y = -50.055, z = 5064.838 }, rot = { x = 353.376, y = 358.780, z = 10.462 }, level = 32, area_id = 32 },
	{ config_id = 196006, gadget_id = 70220103, pos = { x = -809.062, y = -51.999, z = 5036.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 196007, gadget_id = 70330340, pos = { x = -836.526, y = -46.476, z = 5029.583 }, rot = { x = 0.000, y = 94.123, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1196002, name = "ANY_GADGET_DIE_196002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_196002", action = "action_EVENT_ANY_GADGET_DIE_196002" }
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
		gadgets = { 196001, 196005, 196006, 196007 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_196002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 196003, 196004 },
		gadgets = { },
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
function condition_EVENT_ANY_GADGET_DIE_196002(context, evt)
	if 196001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_196002(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314196, 2)
	
	return 0
end
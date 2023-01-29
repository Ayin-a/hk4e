-- 基础信息
local base_info = {
	group_id = 133307224
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 224001, monster_id = 28060401, pos = { x = -1318.240, y = 8.364, z = 5410.421 }, rot = { x = 0.000, y = 322.235, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
	{ config_id = 224002, monster_id = 28060401, pos = { x = -1327.663, y = 8.506, z = 5410.497 }, rot = { x = 0.000, y = 61.930, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 224003, gadget_id = 70210101, pos = { x = -1322.389, y = 9.156, z = 5416.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1224004, name = "GADGET_STATE_CHANGE_224004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_224004", action = "action_EVENT_GADGET_STATE_CHANGE_224004" }
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
		gadgets = { 224003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_224004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 224001, 224002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_224004(context, evt)
	if 224003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_224004(context, evt)
	ScriptLib.AddExtraGroupSuite(context, 133307224, 2)
	
	return 0
end
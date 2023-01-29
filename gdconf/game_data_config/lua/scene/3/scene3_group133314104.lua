-- 基础信息
local base_info = {
	group_id = 133314104
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
	{ config_id = 104001, gadget_id = 70330402, pos = { x = -752.455, y = -126.246, z = 4440.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 104002, gadget_id = 70330402, pos = { x = -775.850, y = -125.837, z = 4447.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStop, area_id = 32 },
	{ config_id = 104003, gadget_id = 70330402, pos = { x = -769.413, y = -123.484, z = 4428.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 104005, gadget_id = 70690011, pos = { x = -765.389, y = -127.000, z = 4443.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 104006, gadget_id = 70330434, pos = { x = -765.294, y = -96.083, z = 4440.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 104007, gadget_id = 70330434, pos = { x = -765.294, y = -66.083, z = 4440.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104008, name = "GADGET_STATE_CHANGE_104008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_104008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "open", value = 0, no_refresh = false }
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
		gadgets = { 104001, 104002, 104003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_104008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 104005, 104006, 104007 },
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

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_104008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314104, 2)
	
	return 0
end
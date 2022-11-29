-- 基础信息
local base_info = {
	group_id = 133004202
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 532, monster_id = 22010301, pos = { x = 2529.097, y = 205.042, z = -775.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "深渊法师", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1160, gadget_id = 70900039, pos = { x = 2534.437, y = 205.208, z = -775.502 }, rot = { x = 1.133, y = 280.315, z = 353.875 }, level = 2, area_id = 1 },
	{ config_id = 1161, gadget_id = 70690006, pos = { x = 2534.428, y = 205.239, z = -775.789 }, rot = { x = 0.000, y = 168.697, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1221, gadget_id = 70690001, pos = { x = 2534.428, y = 219.390, z = -775.789 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1222, gadget_id = 70690001, pos = { x = 2534.428, y = 235.104, z = -775.789 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1223, gadget_id = 70690001, pos = { x = 2534.428, y = 250.111, z = -775.789 }, rot = { x = 270.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000235, name = "GADGET_STATE_CHANGE_235", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235", action = "action_EVENT_GADGET_STATE_CHANGE_235", trigger_count = 0 }
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
	end_suite = 3,
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
		monsters = { 532 },
		gadgets = { 1160 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_235" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1161, 1221, 1222, 1223 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
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
function condition_EVENT_GADGET_STATE_CHANGE_235(context, evt)
	if 1160 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133004202, 2)
	
	return 0
end
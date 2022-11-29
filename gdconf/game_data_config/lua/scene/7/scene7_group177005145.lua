-- 基础信息
local base_info = {
	group_id = 177005145
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
	{ config_id = 145001, gadget_id = 70211157, pos = { x = 467.334, y = 188.762, z = 768.022 }, rot = { x = 0.000, y = 58.157, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 145009, gadget_id = 70220004, pos = { x = 472.269, y = 189.326, z = 771.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 145010, gadget_id = 70220004, pos = { x = 472.916, y = 189.391, z = 765.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 145011, gadget_id = 70220004, pos = { x = 467.613, y = 189.389, z = 777.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 145012, gadget_id = 70220004, pos = { x = 459.150, y = 189.261, z = 774.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 145013, gadget_id = 70220004, pos = { x = 454.453, y = 187.239, z = 762.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 145014, gadget_id = 70220004, pos = { x = 464.935, y = 189.206, z = 757.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145008, name = "ANY_GADGET_DIE_145008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_145008", action = "action_EVENT_ANY_GADGET_DIE_145008", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 145002, gadget_id = 70900388, pos = { x = 471.730, y = 189.213, z = 770.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 145003, gadget_id = 70900388, pos = { x = 468.093, y = 188.925, z = 772.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 145004, gadget_id = 70900388, pos = { x = 459.440, y = 188.892, z = 771.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 145005, gadget_id = 70900388, pos = { x = 456.878, y = 187.490, z = 761.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 145006, gadget_id = 70900388, pos = { x = 467.920, y = 189.595, z = 759.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
		{ config_id = 145007, gadget_id = 70900388, pos = { x = 472.005, y = 189.264, z = 765.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
	}
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
		gadgets = { 145001, 145009, 145010, 145011, 145012, 145013, 145014 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_145008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_145008(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 177005145}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_145008(context, evt)
	-- 将configid为 145001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133317064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64001, monster_id = 21010101, pos = { x = 752.831, y = 200.000, z = 6035.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 64002, monster_id = 21010101, pos = { x = 750.213, y = 200.000, z = 6032.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 64003, monster_id = 21010101, pos = { x = 753.854, y = 200.000, z = 6033.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 64004, gadget_id = 70360022, pos = { x = 756.557, y = 223.966, z = 6040.463 }, rot = { x = 68.066, y = 315.409, z = 61.409 }, level = 32, area_id = 30 },
	{ config_id = 64005, gadget_id = 70220013, pos = { x = 756.557, y = 223.966, z = 6040.463 }, rot = { x = 68.066, y = 315.409, z = 61.409 }, level = 32, area_id = 30 },
	{ config_id = 64010, gadget_id = 70710010, pos = { x = 740.646, y = 200.000, z = 6044.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331700009, start_route = false, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1064007, name = "ANY_GADGET_DIE_64007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_64007", action = "action_EVENT_ANY_GADGET_DIE_64007" },
	{ config_id = 1064008, name = "GADGET_STATE_CHANGE_64008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64008", action = "action_EVENT_GADGET_STATE_CHANGE_64008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 64006, gadget_id = 70900440, pos = { x = 741.442, y = 200.000, z = 6037.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 }
	},
	triggers = {
		{ config_id = 1064009, name = "ANY_MONSTER_DIE_64009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64009", action = "action_EVENT_ANY_MONSTER_DIE_64009" }
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
		gadgets = { 64004, 64005, 64010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_64007", "GADGET_STATE_CHANGE_64008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 64001, 64002, 64003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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
function condition_EVENT_ANY_GADGET_DIE_64007(context, evt)
	if 64005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_64007(context, evt)
	-- 将configid为 64004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64008(context, evt)
	if 64004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317064, 2)
	
	return 0
end
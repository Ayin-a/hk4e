-- 基础信息
local base_info = {
	group_id = 133317068
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 21010101, pos = { x = 765.105, y = 200.507, z = 6106.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 68002, monster_id = 21010101, pos = { x = 762.485, y = 200.000, z = 6103.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 },
	{ config_id = 68003, monster_id = 21010101, pos = { x = 766.128, y = 200.450, z = 6103.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 30 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 68004, gadget_id = 70360022, pos = { x = 758.077, y = 214.035, z = 6121.040 }, rot = { x = 50.153, y = 210.326, z = 332.030 }, level = 32, area_id = 30 },
	{ config_id = 68005, gadget_id = 70220013, pos = { x = 758.077, y = 214.035, z = 6121.040 }, rot = { x = 50.153, y = 210.326, z = 332.030 }, level = 32, area_id = 30 },
	{ config_id = 68010, gadget_id = 70710010, pos = { x = 749.828, y = 200.000, z = 6114.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, route_id = 331700011, start_route = false, area_id = 30 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1068007, name = "ANY_GADGET_DIE_68007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_68007", action = "action_EVENT_ANY_GADGET_DIE_68007" },
	{ config_id = 1068008, name = "GADGET_STATE_CHANGE_68008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68008", action = "action_EVENT_GADGET_STATE_CHANGE_68008" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 68006, gadget_id = 70900440, pos = { x = 751.891, y = 200.000, z = 6110.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 30 }
	},
	triggers = {
		{ config_id = 1068009, name = "ANY_MONSTER_DIE_68009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_68009", action = "action_EVENT_ANY_MONSTER_DIE_68009" }
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
		gadgets = { 68004, 68005, 68010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_68007", "GADGET_STATE_CHANGE_68008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 68001, 68002, 68003 },
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
function condition_EVENT_ANY_GADGET_DIE_68007(context, evt)
	if 68005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_68007(context, evt)
	-- 将configid为 68004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 68004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68008(context, evt)
	if 68004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133317068, 2)
	
	return 0
end
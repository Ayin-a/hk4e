-- 基础信息
local base_info = {
	group_id = 133212121
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
	{ config_id = 121001, gadget_id = 70900388, pos = { x = -3886.674, y = 247.993, z = -2283.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 121002, gadget_id = 70900388, pos = { x = -3897.646, y = 248.017, z = -2280.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 121003, gadget_id = 70900388, pos = { x = -3892.808, y = 255.651, z = -2273.674 }, rot = { x = 275.933, y = 180.000, z = 137.610 }, level = 27, area_id = 13 },
	{ config_id = 121004, gadget_id = 70210101, pos = { x = -3894.729, y = 247.993, z = -2286.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 121005, gadget_id = 70210101, pos = { x = -3896.148, y = 248.694, z = -2279.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", isOneoff = true, persistent = true, area_id = 13 },
	{ config_id = 121006, gadget_id = 70330064, pos = { x = -3897.973, y = 248.171, z = -2282.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 121008, gadget_id = 70350006, pos = { x = -3893.155, y = 247.234, z = -2274.825 }, rot = { x = 272.957, y = 136.382, z = 178.290 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 121009, gadget_id = 70360170, pos = { x = -3898.972, y = 249.850, z = -2279.757 }, rot = { x = 271.002, y = 123.556, z = 190.607 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1121010, name = "GADGET_CREATE_121010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_121010", action = "action_EVENT_GADGET_CREATE_121010", trigger_count = 0 },
	{ config_id = 1121011, name = "SELECT_OPTION_121011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_121011", action = "action_EVENT_SELECT_OPTION_121011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 121007, gadget_id = 70290095, pos = { x = -3881.824, y = 248.086, z = -2285.143 }, rot = { x = 0.973, y = 314.674, z = 359.743 }, level = 27, area_id = 13 },
		{ config_id = 121012, gadget_id = 70330064, pos = { x = -3890.097, y = 200.255, z = -2275.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 }
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
		gadgets = { 121001, 121002, 121003, 121004, 121005, 121006, 121008, 121009 },
		regions = { },
		triggers = { "GADGET_CREATE_121010", "SELECT_OPTION_121011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_121010(context, evt)
	if 121009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_121010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212121, 121009, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_121011(context, evt)
	-- 判断是gadgetid 121009 option_id 1
	if 121009 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_121011(context, evt)
	-- 将configid为 121008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133212121 ；指定config：121009；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212121, 121009, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end
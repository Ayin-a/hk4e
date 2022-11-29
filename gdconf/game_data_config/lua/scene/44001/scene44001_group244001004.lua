-- 基础信息
local base_info = {
	group_id = 244001004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 26030101, pos = { x = 177.170, y = 60.513, z = -26.808 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6109 } },
	{ config_id = 4003, monster_id = 26030101, pos = { x = 177.268, y = 60.545, z = -16.774 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4116, 6109 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4004, gadget_id = 70350005, pos = { x = 151.247, y = 60.251, z = -22.038 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70350005, pos = { x = 185.085, y = 60.225, z = -22.002 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 4009, gadget_id = 70360002, pos = { x = 143.048, y = 60.599, z = -21.874 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_guest_can_operate = true }
}

-- 区域
regions = {
	{ config_id = 4007, shape = RegionShape.CUBIC, size = { x = 5.000, y = 15.000, z = 35.000 }, pos = { x = 157.618, y = 66.707, z = -21.742 } },
	{ config_id = 4008, shape = RegionShape.CUBIC, size = { x = 5.000, y = 15.000, z = 35.000 }, pos = { x = 158.689, y = 66.749, z = -21.518 } }
}

-- 触发器
triggers = {
	{ config_id = 1004007, name = "ENTER_REGION_4007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4007", action = "action_EVENT_ENTER_REGION_4007", trigger_count = 0, forbid_guest = false },
	{ config_id = 1004008, name = "ENTER_REGION_4008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4008", action = "action_EVENT_ENTER_REGION_4008", forbid_guest = false },
	{ config_id = 1004010, name = "GADGET_CREATE_4010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_4010", action = "action_EVENT_GADGET_CREATE_4010" },
	{ config_id = 1004011, name = "ANY_MONSTER_DIE_4011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4011", action = "action_EVENT_ANY_MONSTER_DIE_4011" },
	{ config_id = 1004012, name = "SELECT_OPTION_4012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_4012", action = "action_EVENT_SELECT_OPTION_4012", trigger_count = 0, forbid_guest = false },
	{ config_id = 1004013, name = "GADGET_STATE_CHANGE_4013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_4013", action = "action_EVENT_GADGET_STATE_CHANGE_4013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "wave", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 4001, monster_id = 26030101, pos = { x = 176.338, y = 60.511, z = -21.682 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, affix = { 4116 } }
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
		gadgets = { 4004, 4005, 4009 },
		regions = { 4007, 4008 },
		triggers = { "ENTER_REGION_4007", "ENTER_REGION_4008", "GADGET_CREATE_4010", "ANY_MONSTER_DIE_4011", "SELECT_OPTION_4012", "GADGET_STATE_CHANGE_4013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4002, 4003 },
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
function condition_EVENT_ENTER_REGION_4007(context, evt)
	if evt.param1 ~= 4007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4007(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4008(context, evt)
	if evt.param1 ~= 4008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001004, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_4010(context, evt)
	if 4009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_4010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 244001004, 4009, {214}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 244001007, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_4012(context, evt)
	-- 判断是gadgetid 4009 option_id 214
	if 4009 ~= evt.param1 then
		return false	
	end
	
	if 214 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_4012(context, evt)
	-- 将configid为 4004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 244001004 ；指定config：4009；物件身上指定option：214；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 244001004, 4009, 214) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_4013(context, evt)
	if 4004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_4013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 244001004, 4009, {214}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end
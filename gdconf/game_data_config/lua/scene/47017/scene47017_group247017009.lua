-- 基础信息
local base_info = {
	group_id = 247017009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 21010201, pos = { x = 167.100, y = 0.086, z = -239.936 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9002, monster_id = 21010201, pos = { x = 162.035, y = 0.086, z = -232.587 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9003, monster_id = 21011001, pos = { x = 157.253, y = 0.102, z = -232.673 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9004, monster_id = 21011001, pos = { x = 153.080, y = 0.086, z = -235.459 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9005, monster_id = 21010101, pos = { x = 152.935, y = 0.091, z = -244.035 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9006, monster_id = 21010101, pos = { x = 159.340, y = 0.087, z = -247.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9007, monster_id = 21020701, pos = { x = 164.511, y = 0.096, z = -245.679 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9008, monster_id = 21010201, pos = { x = 165.774, y = 0.086, z = -234.708 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9009, monster_id = 21011601, pos = { x = 156.169, y = 0.093, z = -247.164 }, rot = { x = 0.000, y = 25.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9010, monster_id = 21010201, pos = { x = 152.723, y = 0.097, z = -239.633 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9011, monster_id = 21030101, pos = { x = 166.532, y = 0.107, z = -242.476 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9012, monster_id = 21010201, pos = { x = 167.134, y = 0.082, z = -238.328 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9013, monster_id = 21010201, pos = { x = 163.804, y = 0.082, z = -233.048 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9014, monster_id = 21010901, pos = { x = 158.771, y = 0.098, z = -232.425 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9015, monster_id = 21010901, pos = { x = 154.395, y = 0.082, z = -233.833 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9016, monster_id = 21030601, pos = { x = 154.239, y = 0.087, z = -245.975 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } },
	{ config_id = 9017, monster_id = 21010201, pos = { x = 160.019, y = 0.083, z = -247.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 1007, 1010 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9018, gadget_id = 70360001, pos = { x = 159.960, y = 0.086, z = -240.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9019, gadget_id = 70290137, pos = { x = 160.047, y = 0.746, z = -259.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 9020, gadget_id = 70290137, pos = { x = 160.062, y = 0.734, z = -219.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 9021, gadget_id = 70290137, pos = { x = 140.117, y = 0.736, z = -240.011 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 9022, gadget_id = 70290137, pos = { x = 180.069, y = 0.728, z = -239.971 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 9025, shape = RegionShape.CUBIC, size = { x = 25.000, y = 10.000, z = 25.000 }, pos = { x = 161.032, y = 0.290, z = -240.548 } }
}

-- 触发器
triggers = {
	{ config_id = 1009023, name = "GADGET_CREATE_9023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9023", action = "action_EVENT_GADGET_CREATE_9023" },
	{ config_id = 1009024, name = "SELECT_OPTION_9024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_9024", action = "action_EVENT_SELECT_OPTION_9024" },
	{ config_id = 1009025, name = "ENTER_REGION_9025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9025", action = "action_EVENT_ENTER_REGION_9025" },
	{ config_id = 1009026, name = "ANY_MONSTER_DIE_9026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9026", action = "action_EVENT_ANY_MONSTER_DIE_9026" },
	{ config_id = 1009027, name = "ANY_MONSTER_DIE_9027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9027", action = "action_EVENT_ANY_MONSTER_DIE_9027" },
	{ config_id = 1009028, name = "ANY_MONSTER_DIE_9028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9028", action = "action_EVENT_ANY_MONSTER_DIE_9028" }
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
		gadgets = { 9018, 9019, 9020, 9021, 9022 },
		regions = { 9025 },
		triggers = { "GADGET_CREATE_9023", "SELECT_OPTION_9024", "ENTER_REGION_9025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 9001, 9002, 9003, 9004, 9005, 9006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9026" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 9012, 9013, 9014, 9015, 9016, 9017 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9028" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 9007, 9008, 9009, 9010, 9011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_9023(context, evt)
	if 9018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247017009, 9018, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_9024(context, evt)
	-- 判断是gadgetid 9018 option_id 175
	if 9018 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_9024(context, evt)
	-- 删除指定group： 247017009 ；指定config：9018；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247017009, 9018, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247017009, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9025(context, evt)
	if evt.param1 ~= 9025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9025(context, evt)
	-- 将configid为 9019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9020, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9021 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9021, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9022 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9022, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9026(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9026(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247017009, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9027(context, evt)
	-- 将configid为 9019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 9022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9028(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9028(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247017009, 4)
	
	return 0
end
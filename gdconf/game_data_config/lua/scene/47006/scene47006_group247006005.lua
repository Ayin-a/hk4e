-- 基础信息
local base_info = {
	group_id = 247006005
}

-- DEFS_MISCS
local GroupId = 247006005
local ChestConfigID = 5001
local RegionID = 5002
local ChestConfigIDList = {5001}

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
	{ config_id = 5001, gadget_id = 70211111, pos = { x = -159.841, y = 8.150, z = 303.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, chest_drop_id = 21600009, drop_count = 1, isOneoff = true, persistent = true },
	{ config_id = 5003, gadget_id = 70360288, pos = { x = -165.091, y = 10.102, z = 305.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 5005, gadget_id = 70360170, pos = { x = -175.009, y = 1.617, z = 325.461 }, rot = { x = 270.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 5007, gadget_id = 70310132, pos = { x = -145.808, y = 0.150, z = 333.041 }, rot = { x = 0.000, y = 272.576, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5008, gadget_id = 70310133, pos = { x = -145.892, y = 0.150, z = 330.779 }, rot = { x = 0.000, y = 272.576, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5009, gadget_id = 70310132, pos = { x = -146.000, y = 0.150, z = 328.531 }, rot = { x = 0.000, y = 272.576, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5010, gadget_id = 70310133, pos = { x = -146.084, y = 0.150, z = 326.269 }, rot = { x = 0.000, y = 272.576, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5011, gadget_id = 70310132, pos = { x = -144.416, y = 0.150, z = 323.751 }, rot = { x = 0.000, y = 187.209, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5012, gadget_id = 70310133, pos = { x = -142.168, y = 0.150, z = 323.485 }, rot = { x = 0.000, y = 187.209, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5013, gadget_id = 70310129, pos = { x = -143.701, y = 0.138, z = 313.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5014, gadget_id = 70310129, pos = { x = -142.451, y = 0.138, z = 312.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5015, gadget_id = 70310130, pos = { x = -143.513, y = 0.138, z = 312.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5016, gadget_id = 70310131, pos = { x = -144.200, y = 0.114, z = 313.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5017, gadget_id = 70310131, pos = { x = -143.261, y = 0.114, z = 312.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5018, gadget_id = 70310132, pos = { x = -173.998, y = 0.150, z = 326.255 }, rot = { x = 0.000, y = 89.328, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5019, gadget_id = 70310133, pos = { x = -174.043, y = 0.150, z = 328.518 }, rot = { x = 0.000, y = 89.328, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5020, gadget_id = 70310132, pos = { x = -174.062, y = 0.150, z = 330.768 }, rot = { x = 0.000, y = 89.328, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5021, gadget_id = 70310133, pos = { x = -174.107, y = 0.150, z = 333.031 }, rot = { x = 0.000, y = 89.328, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5022, gadget_id = 70310132, pos = { x = -178.040, y = 0.150, z = 323.751 }, rot = { x = 0.000, y = 187.209, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5023, gadget_id = 70310133, pos = { x = -175.792, y = 0.150, z = 323.485 }, rot = { x = 0.000, y = 187.209, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5024, gadget_id = 70310125, pos = { x = -159.975, y = 0.175, z = 340.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 5025, gadget_id = 70310125, pos = { x = -159.975, y = 0.175, z = 300.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5026, gadget_id = 70310125, pos = { x = -180.141, y = 0.175, z = 319.992 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 5027, gadget_id = 70310125, pos = { x = -140.276, y = 0.175, z = 319.992 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 5028, gadget_id = 70310099, pos = { x = -162.319, y = 0.090, z = 318.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5029, gadget_id = 70310099, pos = { x = -162.526, y = 0.116, z = 320.833 }, rot = { x = 0.000, y = 338.377, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5030, gadget_id = 70310129, pos = { x = -160.796, y = 0.138, z = 319.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5032, gadget_id = 70310130, pos = { x = -160.609, y = 0.138, z = 318.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5034, gadget_id = 70310131, pos = { x = -160.356, y = 0.114, z = 318.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5035, gadget_id = 70310130, pos = { x = -161.100, y = 0.138, z = 320.481 }, rot = { x = 359.359, y = 71.846, z = 66.187 }, level = 1, isOneoff = true },
	{ config_id = 5037, gadget_id = 70310131, pos = { x = -160.962, y = 0.114, z = 320.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5039, gadget_id = 70310132, pos = { x = -158.823, y = 8.150, z = 304.059 }, rot = { x = 0.000, y = 359.143, z = 0.000 }, level = 1, isOneoff = true },
	{ config_id = 5040, gadget_id = 70310133, pos = { x = -161.086, y = 8.150, z = 304.007 }, rot = { x = 0.000, y = 359.143, z = 0.000 }, level = 1, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 5002, shape = RegionShape.CUBIC, size = { x = 50.000, y = 20.000, z = 50.000 }, pos = { x = -159.948, y = 0.090, z = 319.976 } },
	{ config_id = 5004, shape = RegionShape.CUBIC, size = { x = 50.000, y = 20.000, z = 50.000 }, pos = { x = -159.948, y = 0.090, z = 319.976 } }
}

-- 触发器
triggers = {
	{ config_id = 1005002, name = "ENTER_REGION_5002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1005004, name = "ENTER_REGION_5004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_5004", action = "action_EVENT_ENTER_REGION_5004", trigger_count = 0 },
	{ config_id = 1005006, name = "SELECT_OPTION_5006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_5006", action = "action_EVENT_SELECT_OPTION_5006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gear", value = 0, no_refresh = true }
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
		gadgets = { 5001, 5003, 5005, 5007, 5008, 5009, 5010, 5011, 5012, 5013, 5014, 5015, 5016, 5017, 5018, 5019, 5020, 5021, 5022, 5023, 5024, 5025, 5026, 5027, 5028, 5029, 5030, 5032, 5034, 5035, 5037, 5039, 5040 },
		regions = { 5002, 5004 },
		triggers = { "ENTER_REGION_5002", "ENTER_REGION_5004", "SELECT_OPTION_5006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_5004(context, evt)
	if evt.param1 ~= 5004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"gear"为0
	if ScriptLib.GetGroupVariableValue(context, "gear") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_5004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247006005, 5005, {24}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_5006(context, evt)
	-- 判断是gadgetid 5005 option_id 24
	if 5005 ~= evt.param1 then
		return false	
	end
	
	if 24 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_5006(context, evt)
	-- 将configid为 5005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 5003 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5003, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 247006005 ；指定config：5005；物件身上指定option：24；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247006005, 5005, 24) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "gear" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gear", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_2/RogueDungeon_ChestRoom"
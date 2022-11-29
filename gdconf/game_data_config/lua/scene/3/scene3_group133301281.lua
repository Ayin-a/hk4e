-- 基础信息
local base_info = {
	group_id = 133301281
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
	{ config_id = 281001, gadget_id = 70290584, pos = { x = -1092.310, y = 345.109, z = 4001.298 }, rot = { x = 0.000, y = 65.178, z = 180.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 281002, gadget_id = 70220103, pos = { x = -1045.224, y = 375.813, z = 4014.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 281003, gadget_id = 70360170, pos = { x = -1092.970, y = 343.045, z = 4002.801 }, rot = { x = 88.721, y = 167.391, z = 105.481 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 281004, gadget_id = 70220051, pos = { x = -1094.603, y = 340.912, z = 3991.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 281005, gadget_id = 70220050, pos = { x = -1093.777, y = 340.912, z = 3991.441 }, rot = { x = 0.000, y = 341.814, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 281006, gadget_id = 70360001, pos = { x = -1093.115, y = 343.008, z = 4002.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 281009, gadget_id = 70211001, pos = { x = -1093.549, y = 341.072, z = 3996.934 }, rot = { x = 0.000, y = 350.208, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 281010, gadget_id = 70360170, pos = { x = -1093.078, y = 343.045, z = 4002.811 }, rot = { x = 88.727, y = 167.309, z = 284.858 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1281007, name = "GROUP_LOAD_281007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_281007", action = "action_EVENT_GROUP_LOAD_281007", trigger_count = 0 },
	{ config_id = 1281008, name = "SELECT_OPTION_281008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_281008", action = "action_EVENT_SELECT_OPTION_281008", trigger_count = 0 }
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
		gadgets = { 281001, 281002, 281003, 281004, 281005, 281006, 281010 },
		regions = { },
		triggers = { "GROUP_LOAD_281007", "SELECT_OPTION_281008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_281007(context, evt)
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133301281, 281001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_281007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133301281, 281006, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_281008(context, evt)
	-- 判断是gadgetid 281006 option_id 7
	if 281006 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_281008(context, evt)
	-- 删除指定group： 133301281 ；指定config：281006；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301281, 281006, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 281001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 281010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 281010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为281009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 281009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
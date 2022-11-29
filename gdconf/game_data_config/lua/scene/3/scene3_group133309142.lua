-- 基础信息
local base_info = {
	group_id = 133309142
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 142004, monster_id = 25210401, pos = { x = -2831.999, y = 203.520, z = 5949.079 }, rot = { x = 0.000, y = 109.598, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 27 },
	{ config_id = 142005, monster_id = 25210202, pos = { x = -2829.375, y = 203.553, z = 5948.559 }, rot = { x = 0.000, y = 274.644, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 27 },
	{ config_id = 142009, monster_id = 25210201, pos = { x = -2837.019, y = 203.922, z = 5952.536 }, rot = { x = 0.000, y = 333.680, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9006, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 142001, gadget_id = 70330287, pos = { x = -2816.800, y = 202.302, z = 5945.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 142002, gadget_id = 70330287, pos = { x = -2816.800, y = 191.798, z = 5945.218 }, rot = { x = 0.000, y = 180.000, z = 180.000 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 142003, gadget_id = 70310006, pos = { x = -2827.368, y = 203.501, z = 5949.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 142010, gadget_id = 70210101, pos = { x = -2838.318, y = 204.436, z = 5953.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 27 },
	{ config_id = 142012, gadget_id = 70220128, pos = { x = -2830.664, y = 203.461, z = 5948.893 }, rot = { x = 0.000, y = 16.852, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1142006, name = "VARIABLE_CHANGE_142006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_142006", action = "action_EVENT_VARIABLE_CHANGE_142006" },
	-- 保底打开电梯盖板
	{ config_id = 1142011, name = "GROUP_LOAD_142011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_142011", action = "action_EVENT_GROUP_LOAD_142011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 142008, gadget_id = 71700412, pos = { x = -2830.745, y = 207.857, z = 5949.904 }, rot = { x = 0.000, y = 138.131, z = 0.000 }, level = 32, area_id = 27 }
	},
	triggers = {
		{ config_id = 1142007, name = "ANY_MONSTER_DIE_142007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_142007", action = "action_EVENT_ANY_MONSTER_DIE_142007" }
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
		monsters = { 142004, 142005, 142009 },
		gadgets = { 142001, 142002, 142003, 142010, 142012 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_142006", "GROUP_LOAD_142011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_142006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309142, 142001) then
		return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 133309142, 142002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_142006(context, evt)
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 142002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_142011(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_142011(context, evt)
	-- 将configid为 142001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	-- 将configid为 142002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 142002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			
		end 
	
	return 0
end
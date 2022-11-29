-- 基础信息
local base_info = {
	group_id = 133315191
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
	{ config_id = 191001, gadget_id = 70230113, pos = { x = 579.015, y = 137.407, z = 2576.483 }, rot = { x = 3.325, y = 303.275, z = 92.174 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 191003, gadget_id = 70310198, pos = { x = 578.711, y = 136.891, z = 2574.581 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, area_id = 20 },
	{ config_id = 191004, gadget_id = 70230113, pos = { x = 578.656, y = 137.759, z = 2576.877 }, rot = { x = 11.794, y = 341.832, z = 94.539 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 191005, gadget_id = 70230113, pos = { x = 579.416, y = 137.509, z = 2576.789 }, rot = { x = 337.082, y = 94.392, z = 88.270 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 191006, gadget_id = 70310218, pos = { x = 575.789, y = 132.948, z = 2593.028 }, rot = { x = 0.000, y = 149.160, z = 0.000 }, level = 27, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 20 },
	{ config_id = 191007, gadget_id = 70310217, pos = { x = 569.416, y = 134.429, z = 2571.063 }, rot = { x = 347.092, y = 91.020, z = 353.970 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 191010, gadget_id = 70230112, pos = { x = 578.037, y = 136.873, z = 2574.652 }, rot = { x = 2.533, y = 45.222, z = 98.599 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 191011, gadget_id = 70230112, pos = { x = 579.092, y = 137.265, z = 2575.355 }, rot = { x = 9.103, y = 171.782, z = 87.691 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 191012, gadget_id = 70230113, pos = { x = 577.060, y = 136.078, z = 2574.201 }, rot = { x = 5.292, y = 198.645, z = 74.287 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 191013, gadget_id = 70230113, pos = { x = 576.636, y = 136.297, z = 2573.759 }, rot = { x = 7.094, y = 242.107, z = 90.189 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 },
	{ config_id = 191014, gadget_id = 70230113, pos = { x = 576.521, y = 136.324, z = 2574.504 }, rot = { x = 2.157, y = 337.612, z = 100.486 }, level = 27, state = GadgetState.GearStart, persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 2个方碑亮 草种子激活 仙灵走
	{ config_id = 1191002, name = "GADGET_STATE_CHANGE_191002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191002", action = "action_EVENT_GADGET_STATE_CHANGE_191002" },
	-- 保底
	{ config_id = 1191008, name = "GROUP_LOAD_191008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_191008", action = "action_EVENT_GROUP_LOAD_191008", trigger_count = 0 },
	-- 方碑一亮 涂鸦06亮
	{ config_id = 1191016, name = "GADGET_STATE_CHANGE_191016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191016", action = "action_EVENT_GADGET_STATE_CHANGE_191016" },
	-- 方碑二亮 涂鸦06亮
	{ config_id = 1191018, name = "GADGET_STATE_CHANGE_191018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_191018", action = "action_EVENT_GADGET_STATE_CHANGE_191018" }
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
		gadgets = { 191001, 191003, 191004, 191005, 191006, 191007, 191010, 191011, 191012, 191013, 191014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_191002", "GROUP_LOAD_191008", "GADGET_STATE_CHANGE_191016", "GADGET_STATE_CHANGE_191018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_191002(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315191, 191006) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315191, 191007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191002(context, evt)
	-- 将configid为 191003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_191008(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315191, 191006) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315191, 191007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_191008(context, evt)
	-- 将configid为 191003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_191016(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315191, 191007) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191016(context, evt)
	-- 将configid为 191010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191013 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191013, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191014, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_191018(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315191, 191006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_191018(context, evt)
	-- 将configid为 191011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 191005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 191005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"
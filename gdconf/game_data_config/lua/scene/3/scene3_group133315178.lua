-- 基础信息
local base_info = {
	group_id = 133315178
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
	{ config_id = 178001, gadget_id = 70900050, pos = { x = 119.697, y = 171.727, z = 2721.479 }, rot = { x = 3.977, y = 1.304, z = 19.881 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 178002, gadget_id = 70900050, pos = { x = 63.069, y = 163.212, z = 2747.747 }, rot = { x = 18.643, y = 21.223, z = 326.642 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 178003, gadget_id = 70900050, pos = { x = 88.775, y = 162.815, z = 2686.754 }, rot = { x = 8.219, y = 4.863, z = 359.802 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 178005, gadget_id = 70211151, pos = { x = 84.518, y = 163.039, z = 2718.034 }, rot = { x = 0.000, y = 201.166, z = 0.000 }, level = 26, chest_drop_id = 21910076, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1178004, name = "GADGET_STATE_CHANGE_178004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_178004", action = "action_EVENT_GADGET_STATE_CHANGE_178004" },
	-- 保底
	{ config_id = 1178006, name = "GROUP_LOAD_178006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_178006", action = "action_EVENT_GROUP_LOAD_178006", trigger_count = 0 }
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
		gadgets = { 178001, 178002, 178003, 178005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_178004", "GROUP_LOAD_178006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_178004(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315178, 178001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315178, 178002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315178, 178003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_178004(context, evt)
	-- 将configid为 178005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_178006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315178, 178001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315178, 178002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315178, 178003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_178006(context, evt)
	-- 将configid为 178005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 178005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133301716
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
	{ config_id = 716001, gadget_id = 70310201, pos = { x = -830.825, y = 141.815, z = 3192.523 }, rot = { x = 0.000, y = 243.792, z = 0.000 }, level = 30, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 23 },
	{ config_id = 716002, gadget_id = 70310199, pos = { x = -916.347, y = 75.802, z = 3134.711 }, rot = { x = 0.000, y = 54.152, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 716003, gadget_id = 70211151, pos = { x = -830.454, y = 139.042, z = 3191.991 }, rot = { x = 4.347, y = 260.326, z = 353.135 }, level = 26, chest_drop_id = 21910054, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1716004, name = "GADGET_STATE_CHANGE_716004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_716004", action = "action_EVENT_GADGET_STATE_CHANGE_716004", trigger_count = 0 },
	{ config_id = 1716005, name = "GROUP_LOAD_716005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_716005", action = "action_EVENT_GROUP_LOAD_716005", trigger_count = 0 }
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
		gadgets = { 716001, 716002, 716003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_716004", "GROUP_LOAD_716005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_716004(context, evt)
	if 716001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_716004(context, evt)
	-- 将configid为 716003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 716003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_716005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133301716, 716001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_716005(context, evt)
	-- 将configid为 716003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 716003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
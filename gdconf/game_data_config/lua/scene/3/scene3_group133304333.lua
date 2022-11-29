-- 基础信息
local base_info = {
	group_id = 133304333
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
	{ config_id = 333001, gadget_id = 70310198, pos = { x = -1743.784, y = 183.773, z = 3041.426 }, rot = { x = 0.000, y = 148.644, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 333002, gadget_id = 70330218, pos = { x = -1727.878, y = 180.000, z = 3065.530 }, rot = { x = 0.000, y = 180.361, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 333003, gadget_id = 70900050, pos = { x = -1761.013, y = 187.057, z = 3042.644 }, rot = { x = 354.453, y = 358.114, z = 352.629 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 333004, gadget_id = 70900050, pos = { x = -1727.918, y = 180.001, z = 3064.212 }, rot = { x = 353.123, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 23 },
	{ config_id = 333005, gadget_id = 70900050, pos = { x = -1722.122, y = 189.003, z = 3036.828 }, rot = { x = 355.342, y = 2.042, z = 17.419 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 333006, gadget_id = 70211102, pos = { x = -1748.180, y = 185.208, z = 3040.242 }, rot = { x = 6.508, y = 100.161, z = 349.394 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1333007, name = "GADGET_STATE_CHANGE_333007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_333007", action = "action_EVENT_GADGET_STATE_CHANGE_333007", trigger_count = 0 },
	{ config_id = 1333008, name = "ANY_GADGET_DIE_333008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_333008", action = "action_EVENT_ANY_GADGET_DIE_333008" }
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
		gadgets = { 333001, 333002, 333003, 333004, 333005, 333006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_333007", "ANY_GADGET_DIE_333008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_333007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304333, 333003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304333, 333004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133304333, 333005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_333007(context, evt)
	-- 将configid为 333006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_333008(context, evt)
	if 333002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_333008(context, evt)
	-- 将configid为 333004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 333004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
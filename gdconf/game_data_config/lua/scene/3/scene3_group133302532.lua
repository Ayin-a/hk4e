-- 基础信息
local base_info = {
	group_id = 133302532
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
	{ config_id = 532001, gadget_id = 70900050, pos = { x = -732.781, y = 155.682, z = 2956.381 }, rot = { x = 343.538, y = 0.005, z = 346.411 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 532002, gadget_id = 70900050, pos = { x = -699.821, y = 161.835, z = 2981.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 532003, gadget_id = 70900050, pos = { x = -704.253, y = 159.029, z = 2946.184 }, rot = { x = 0.000, y = 0.000, z = 15.354 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 532004, gadget_id = 70330218, pos = { x = -699.937, y = 162.058, z = 2981.505 }, rot = { x = 0.000, y = 229.776, z = 0.000 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 532005, gadget_id = 70211012, pos = { x = -713.071, y = 153.389, z = 2962.228 }, rot = { x = 4.823, y = 200.108, z = 2.906 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 532007, gadget_id = 70330197, pos = { x = -723.371, y = 153.665, z = 2946.968 }, rot = { x = 0.000, y = 67.749, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 532008, gadget_id = 70310198, pos = { x = -719.224, y = 163.143, z = 2953.228 }, rot = { x = 349.679, y = 267.403, z = 357.756 }, level = 27, area_id = 24 },
	{ config_id = 532009, gadget_id = 70330218, pos = { x = -704.116, y = 157.863, z = 2945.261 }, rot = { x = 0.126, y = 320.354, z = 11.602 }, level = 27, persistent = true, area_id = 24 },
	{ config_id = 532010, gadget_id = 70330218, pos = { x = -733.721, y = 153.705, z = 2956.056 }, rot = { x = 348.957, y = 100.429, z = 5.756 }, level = 27, persistent = true, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1532006, name = "GADGET_STATE_CHANGE_532006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_532006", action = "action_EVENT_GADGET_STATE_CHANGE_532006" },
	{ config_id = 1532011, name = "ANY_GADGET_DIE_532011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_532011", action = "action_EVENT_ANY_GADGET_DIE_532011" },
	{ config_id = 1532012, name = "ANY_GADGET_DIE_532012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_532012", action = "action_EVENT_ANY_GADGET_DIE_532012" },
	{ config_id = 1532013, name = "ANY_GADGET_DIE_532013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_532013", action = "action_EVENT_ANY_GADGET_DIE_532013" }
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
		gadgets = { 532004, 532005, 532007, 532008, 532009, 532010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_532006", "ANY_GADGET_DIE_532011", "ANY_GADGET_DIE_532012", "ANY_GADGET_DIE_532013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_532006(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302532, 532001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302532, 532002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302532, 532003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_532006(context, evt)
	-- 将configid为 532005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 532005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_532011(context, evt)
	if 532004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_532011(context, evt)
	-- 创建id为532002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 532002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_532012(context, evt)
	if 532009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_532012(context, evt)
	-- 创建id为532003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 532003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_532013(context, evt)
	if 532010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_532013(context, evt)
	-- 创建id为532001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 532001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
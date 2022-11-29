-- 基础信息
local base_info = {
	group_id = 133309253
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
	{ config_id = 253001, gadget_id = 70211121, pos = { x = -2554.421, y = -18.398, z = 5470.583 }, rot = { x = 0.000, y = 116.874, z = 0.000 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 253002, gadget_id = 70211131, pos = { x = -2554.398, y = -18.398, z = 5465.478 }, rot = { x = 0.000, y = 52.605, z = 0.000 }, level = 26, drop_tag = "解谜超级须弥", isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 全部激活解锁宝箱
	{ config_id = 1253006, name = "VARIABLE_CHANGE_253006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_253006", action = "action_EVENT_VARIABLE_CHANGE_253006" },
	-- 全部激活解锁宝箱
	{ config_id = 1253007, name = "GROUP_LOAD_253007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_253007", action = "action_EVENT_GROUP_LOAD_253007", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestopen", value = 0, no_refresh = true }
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
		gadgets = { 253002 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_253006", "GROUP_LOAD_253007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_253006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"chestopen"为4
	if ScriptLib.GetGroupVariableValue(context, "chestopen") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_253006(context, evt)
	-- 创建id为253001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 253001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_253007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309251, 251002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309252, 252002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309254, 254002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309255, 255002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_253007(context, evt)
	-- 创建id为253001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 253001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
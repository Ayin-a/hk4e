-- 基础信息
local base_info = {
	group_id = 133307491
}

-- DEFS_MISCS
local JamshidRocks = 
{
    491001,
    491002,
    491003
}

local CorrectAnswer = 
{
    2,1,3
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
	-- 1-2 f
	[491001] = { config_id = 491001, gadget_id = 70290635, pos = { x = -1380.714, y = 62.090, z = 5374.083 }, rot = { x = 2.874, y = 274.453, z = 359.654 }, level = 32, persistent = true, area_id = 32 },
	-- 2-1 p
	[491002] = { config_id = 491002, gadget_id = 70290636, pos = { x = -1382.343, y = 61.045, z = 5366.956 }, rot = { x = 4.680, y = 287.515, z = 3.885 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 32 },
	-- 3-3 r
	[491003] = { config_id = 491003, gadget_id = 70290637, pos = { x = -1385.668, y = 60.331, z = 5360.047 }, rot = { x = 3.657, y = 308.024, z = 6.569 }, level = 32, persistent = true, area_id = 32 },
	[491004] = { config_id = 491004, gadget_id = 70211101, pos = { x = -1387.432, y = 60.453, z = 5377.224 }, rot = { x = 351.358, y = 162.789, z = 344.329 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	[491007] = { config_id = 491007, gadget_id = 70290684, pos = { x = -1378.309, y = 61.330, z = 5373.889 }, rot = { x = 279.759, y = 202.964, z = 79.813 }, level = 32, area_id = 32 },
	[491008] = { config_id = 491008, gadget_id = 70290687, pos = { x = -1380.051, y = 60.545, z = 5366.193 }, rot = { x = 275.734, y = 106.268, z = 175.469 }, level = 32, area_id = 32 },
	[491009] = { config_id = 491009, gadget_id = 70290686, pos = { x = -1383.213, y = 59.231, z = 5358.469 }, rot = { x = 272.434, y = 13.519, z = 300.304 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1491005, name = "VARIABLE_CHANGE_491005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_491005", action = "action_EVENT_VARIABLE_CHANGE_491005" },
	{ config_id = 1491006, name = "GROUP_LOAD_491006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_491006", action = "action_EVENT_GROUP_LOAD_491006", trigger_count = 0 }
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
		gadgets = { 491001, 491002, 491003, 491007, 491008, 491009 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_491005", "GROUP_LOAD_491006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_491005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_491005(context, evt)
	-- 创建id为491004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 491004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 491001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 491002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 491003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_491006(context, evt)
	-- 判断变量"is_success"为1
	if ScriptLib.GetGroupVariableValue(context, "is_success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_491006(context, evt)
	-- 创建id为491004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 491004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 491001 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491001, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 491002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491002, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 491003 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 491003, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_4/JamshidRock"
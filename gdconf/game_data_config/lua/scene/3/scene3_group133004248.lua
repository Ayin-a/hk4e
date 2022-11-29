-- 基础信息
local base_info = {
	group_id = 133004248
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
	{ config_id = 1406, gadget_id = 70900039, pos = { x = 2652.353, y = 202.987, z = -679.460 }, rot = { x = 0.000, y = 120.769, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1407, gadget_id = 70690006, pos = { x = 2652.353, y = 202.987, z = -679.460 }, rot = { x = 0.000, y = 77.853, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1408, gadget_id = 70690001, pos = { x = 2652.353, y = 210.000, z = -679.460 }, rot = { x = 90.000, y = 77.853, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1409, gadget_id = 70690001, pos = { x = 2652.353, y = 225.000, z = -679.460 }, rot = { x = 90.000, y = 77.853, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1410, gadget_id = 70690001, pos = { x = 2652.353, y = 240.000, z = -679.460 }, rot = { x = 90.000, y = 77.853, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1411, gadget_id = 70690001, pos = { x = 2652.353, y = 255.000, z = -679.460 }, rot = { x = 90.000, y = 77.853, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1412, gadget_id = 70690001, pos = { x = 2652.353, y = 270.000, z = -679.460 }, rot = { x = 90.000, y = 77.853, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1413, gadget_id = 70500000, pos = { x = 2652.353, y = 285.000, z = -679.460 }, rot = { x = 0.000, y = 135.878, z = 0.000 }, level = 2, point_type = 4001001, isOneoff = true, explore = { name = "gather", exp = 3 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000281, name = "GADGET_STATE_CHANGE_281", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_281", action = "action_EVENT_GADGET_STATE_CHANGE_281", trigger_count = 0 }
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
		gadgets = { 1406, 1413 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_281" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_281(context, evt)
	if 1406 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_281(context, evt)
	-- 创建id为1409的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1409 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1410的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1410 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1411的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1411 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1412的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1412 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1407的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1407 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为1408的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 1408 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
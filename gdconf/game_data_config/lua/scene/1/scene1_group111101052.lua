-- 基础信息
local base_info = {
	group_id = 111101052
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
	{ config_id = 52001, gadget_id = 70310013, pos = { x = 2681.813, y = 266.625, z = -1399.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 52002, gadget_id = 70900039, pos = { x = 2676.406, y = 263.823, z = -1401.959 }, rot = { x = 355.072, y = 0.249, z = 354.212 }, level = 1 },
	{ config_id = 52003, gadget_id = 70210063, pos = { x = 2674.173, y = 264.398, z = -1395.271 }, rot = { x = 0.000, y = 183.387, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", state = GadgetState.ChestFrozen, isOneoff = true, persistent = true },
	{ config_id = 52006, gadget_id = 70210107, pos = { x = 2682.764, y = 265.041, z = -1412.065 }, rot = { x = 19.090, y = 307.758, z = 355.717 }, level = 26, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true },
	{ config_id = 52007, gadget_id = 70210107, pos = { x = 2671.208, y = 282.705, z = -1418.736 }, rot = { x = 3.871, y = 2.940, z = 13.238 }, level = 26, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true },
	{ config_id = 52008, gadget_id = 70210107, pos = { x = 2680.477, y = 271.004, z = -1412.931 }, rot = { x = 5.745, y = 278.083, z = 346.579 }, level = 26, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true },
	{ config_id = 52009, gadget_id = 70210107, pos = { x = 2681.928, y = 272.411, z = -1409.834 }, rot = { x = 19.090, y = 307.758, z = 355.717 }, level = 26, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true },
	{ config_id = 52010, gadget_id = 70210107, pos = { x = 2690.421, y = 278.503, z = -1402.990 }, rot = { x = 5.259, y = 325.858, z = 1.793 }, level = 26, drop_tag = "一次性搜刮点峭壁蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052004, name = "GADGET_STATE_CHANGE_52004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52004", action = "action_EVENT_GADGET_STATE_CHANGE_52004", trigger_count = 0 },
	{ config_id = 1052005, name = "ANY_GADGET_DIE_52005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_52005", action = "action_EVENT_ANY_GADGET_DIE_52005", trigger_count = 0 }
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
		gadgets = { 52002, 52003, 52006, 52007, 52008, 52009, 52010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52004", "ANY_GADGET_DIE_52005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52004(context, evt)
	if 52002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52004(context, evt)
	-- 创建id为52001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 52001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_52005(context, evt)
	if 52001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_52005(context, evt)
	-- 将configid为 52002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 52002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
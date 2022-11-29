-- 基础信息
local base_info = {
	group_id = 111101274
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
	{ config_id = 274001, gadget_id = 70310001, pos = { x = 2288.450, y = 271.014, z = -1646.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 274002, gadget_id = 70310001, pos = { x = 2299.859, y = 277.280, z = -1650.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 274003, gadget_id = 70310001, pos = { x = 2288.870, y = 271.874, z = -1668.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 274004, gadget_id = 70310001, pos = { x = 2280.859, y = 276.860, z = -1678.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 274005, gadget_id = 70310001, pos = { x = 2304.538, y = 271.127, z = -1655.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 274006, gadget_id = 70211101, pos = { x = 2286.845, y = 271.893, z = -1672.857 }, rot = { x = 0.000, y = 5.972, z = 0.000 }, level = 11, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开启宝箱后 解锁区域D中一个元素方碑
	{ config_id = 1274007, name = "GADGET_STATE_CHANGE_274007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274007", action = "action_EVENT_GADGET_STATE_CHANGE_274007" },
	-- 检测五火盆为点亮状态 成功时生成宝箱
	{ config_id = 1274011, name = "GADGET_STATE_CHANGE_274011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_274011", action = "action_EVENT_GADGET_STATE_CHANGE_274011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = false }
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
		gadgets = { 274001, 274002, 274003, 274004, 274005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_274007", "GADGET_STATE_CHANGE_274011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274007(context, evt)
	-- 检测config_id为274006的gadget是否从GadgetState.Default变为GadgetState.ChestOpened
	if 274006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274007(context, evt)
	-- 改变指定group组111101276中， configid为276003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111101276, 276003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_274011(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101274, 274001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101274, 274002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101274, 274003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101274, 274004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 111101274, 274005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_274011(context, evt)
	-- 创建id为274006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 274006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133303157
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
	{ config_id = 157001, gadget_id = 70330219, pos = { x = -1557.269, y = 284.553, z = 3521.148 }, rot = { x = 3.190, y = 139.631, z = 3.601 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 157002, gadget_id = 70230112, pos = { x = -1555.254, y = 288.506, z = 3522.473 }, rot = { x = 0.000, y = 49.241, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 157004, gadget_id = 70310198, pos = { x = -1454.661, y = 277.172, z = 3458.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 157005, gadget_id = 70211150, pos = { x = -1557.597, y = 285.252, z = 3520.294 }, rot = { x = 0.611, y = 124.039, z = 3.491 }, level = 26, chest_drop_id = 21910061, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 157006, gadget_id = 70330216, pos = { x = -1556.324, y = 284.341, z = 3521.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1157003, name = "GADGET_STATE_CHANGE_157003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_157003", action = "action_EVENT_GADGET_STATE_CHANGE_157003" },
	{ config_id = 1157007, name = "ANY_GADGET_DIE_157007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_157007", action = "action_EVENT_ANY_GADGET_DIE_157007" }
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
		gadgets = { 157001, 157002, 157004, 157006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_157003", "ANY_GADGET_DIE_157007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_157003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 157006 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_157003(context, evt)
	-- 将本组内变量名为 "No_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "No_1", 1, 133303153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 157002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 157002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_157007(context, evt)
	if 157001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_157007(context, evt)
	-- 创建id为157005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 157005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
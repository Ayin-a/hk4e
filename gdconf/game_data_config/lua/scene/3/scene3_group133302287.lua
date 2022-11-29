-- 基础信息
local base_info = {
	group_id = 133302287
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 287001, monster_id = 21010201, pos = { x = -797.132, y = 191.480, z = 2622.274 }, rot = { x = 0.000, y = 140.455, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 24 },
	{ config_id = 287004, monster_id = 21010201, pos = { x = -798.354, y = 191.550, z = 2615.672 }, rot = { x = 0.000, y = 59.561, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 24 },
	{ config_id = 287005, monster_id = 21030201, pos = { x = -790.979, y = 191.660, z = 2614.689 }, rot = { x = 0.000, y = 324.472, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 287002, gadget_id = 70211002, pos = { x = -798.158, y = 191.715, z = 2618.631 }, rot = { x = 13.076, y = 282.411, z = 1.959 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 287006, gadget_id = 70310198, pos = { x = -795.139, y = 192.163, z = 2617.583 }, rot = { x = 0.000, y = 292.542, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 24 },
	{ config_id = 287007, gadget_id = 70300086, pos = { x = -791.621, y = 190.191, z = 2610.985 }, rot = { x = 0.000, y = 0.000, z = 333.599 }, level = 27, area_id = 24 },
	{ config_id = 287008, gadget_id = 70300086, pos = { x = -789.536, y = 190.516, z = 2621.691 }, rot = { x = 0.000, y = 0.000, z = 19.716 }, level = 27, area_id = 24 },
	{ config_id = 287009, gadget_id = 70220013, pos = { x = -797.659, y = 191.004, z = 2605.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 287010, gadget_id = 70220013, pos = { x = -795.776, y = 190.910, z = 2605.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 287011, gadget_id = 70330199, pos = { x = -794.530, y = 191.741, z = 2617.208 }, rot = { x = 2.730, y = 290.707, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 24 },
	{ config_id = 287012, gadget_id = 70220125, pos = { x = -796.015, y = 191.746, z = 2614.563 }, rot = { x = 0.000, y = 279.168, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 287013, gadget_id = 70220125, pos = { x = -795.915, y = 191.609, z = 2613.503 }, rot = { x = 0.000, y = 279.168, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 287014, gadget_id = 70220125, pos = { x = -793.372, y = 191.854, z = 2621.238 }, rot = { x = 7.358, y = 334.899, z = 352.680 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1287003, name = "GADGET_STATE_CHANGE_287003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_287003", action = "action_EVENT_GADGET_STATE_CHANGE_287003", trigger_count = 0 },
	{ config_id = 1287015, name = "ANY_MONSTER_DIE_287015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287015", action = "action_EVENT_ANY_MONSTER_DIE_287015" },
	{ config_id = 1287016, name = "GADGET_STATE_CHANGE_287016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_287016", action = "action_EVENT_GADGET_STATE_CHANGE_287016", trigger_count = 0 },
	{ config_id = 1287017, name = "GROUP_LOAD_287017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_287017", trigger_count = 0 }
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
		monsters = { 287001, 287004, 287005 },
		gadgets = { 287002, 287006, 287007, 287008, 287009, 287010, 287011, 287012, 287013, 287014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_287003", "ANY_MONSTER_DIE_287015", "GADGET_STATE_CHANGE_287016", "GROUP_LOAD_287017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_287003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 287011 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_287003(context, evt)
	-- 将configid为 287006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_287015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_287015(context, evt)
	-- 将configid为 287002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_287016(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 287011 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_287016(context, evt)
	-- 将configid为 287006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_287017(context, evt)
	-- 将configid为 287006 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 287006, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
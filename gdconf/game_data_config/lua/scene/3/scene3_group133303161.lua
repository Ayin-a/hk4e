-- 基础信息
local base_info = {
	group_id = 133303161
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
	{ config_id = 161001, gadget_id = 70330199, pos = { x = -1713.999, y = 191.504, z = 3379.336 }, rot = { x = 4.102, y = 122.646, z = 2.513 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 161002, gadget_id = 70230112, pos = { x = -1720.439, y = 193.070, z = 3370.420 }, rot = { x = 76.237, y = 125.860, z = 116.867 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 161007, gadget_id = 70330197, pos = { x = -1713.802, y = 191.191, z = 3371.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 161008, gadget_id = 70211150, pos = { x = -1713.943, y = 191.471, z = 3379.025 }, rot = { x = 0.000, y = 93.983, z = 0.000 }, level = 26, chest_drop_id = 21910063, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 161009, gadget_id = 70330216, pos = { x = -1719.945, y = 190.617, z = 3370.295 }, rot = { x = 0.000, y = 320.970, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1161003, name = "GADGET_STATE_CHANGE_161003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161003", action = "action_EVENT_GADGET_STATE_CHANGE_161003", trigger_count = 0 },
	{ config_id = 1161006, name = "GADGET_STATE_CHANGE_161006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161006", action = "action_EVENT_GADGET_STATE_CHANGE_161006" },
	{ config_id = 1161010, name = "GADGET_STATE_CHANGE_161010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_161010", action = "action_EVENT_GADGET_STATE_CHANGE_161010", trigger_count = 0 },
	{ config_id = 1161011, name = "GROUP_LOAD_161011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_161011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 161004, monster_id = 28030313, pos = { x = -1731.954, y = 229.376, z = 3385.834 }, rot = { x = 0.000, y = 101.038, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 23 },
		{ config_id = 161005, monster_id = 28030313, pos = { x = -1730.872, y = 229.396, z = 3385.789 }, rot = { x = 0.000, y = 273.540, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 23 }
	}
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
		gadgets = { 161001, 161002, 161007, 161009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_161003", "GADGET_STATE_CHANGE_161006", "GADGET_STATE_CHANGE_161010", "GROUP_LOAD_161011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 161001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_161003(context, evt)
	-- 创建id为161008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 161008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161006(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 161009 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_161006(context, evt)
	-- 将本组内变量名为 "No_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "No_2", 1, 133303153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 161002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 161002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_161010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 161001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_161010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303161, EntityType.GADGET, 161008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_161011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303161, EntityType.GADGET, 161008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
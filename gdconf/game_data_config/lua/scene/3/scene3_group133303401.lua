-- 基础信息
local base_info = {
	group_id = 133303401
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 401007, monster_id = 26090901, pos = { x = -1283.381, y = 212.045, z = 3509.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 401008, monster_id = 26090901, pos = { x = -1284.945, y = 211.868, z = 3507.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 401002, gadget_id = 70330199, pos = { x = -1276.834, y = 213.314, z = 3509.536 }, rot = { x = 0.000, y = 279.477, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 401004, gadget_id = 70330199, pos = { x = -1285.634, y = 211.207, z = 3510.000 }, rot = { x = 358.471, y = 153.893, z = 345.563 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 401005, gadget_id = 70330199, pos = { x = -1278.646, y = 211.547, z = 3502.237 }, rot = { x = 355.075, y = 88.327, z = 333.702 }, level = 30, area_id = 23 },
	{ config_id = 401009, gadget_id = 70217020, pos = { x = -1277.257, y = 213.738, z = 3509.664 }, rot = { x = 0.000, y = 268.458, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 正常态创宝箱
	{ config_id = 1401001, name = "GADGET_STATE_CHANGE_401001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401001", action = "action_EVENT_GADGET_STATE_CHANGE_401001", trigger_count = 0 },
	{ config_id = 1401006, name = "GADGET_STATE_CHANGE_401006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401006", action = "action_EVENT_GADGET_STATE_CHANGE_401006" },
	-- 消亡态去宝箱
	{ config_id = 1401010, name = "GADGET_STATE_CHANGE_401010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401010", action = "action_EVENT_GADGET_STATE_CHANGE_401010", trigger_count = 0 },
	-- load无脑去宝箱
	{ config_id = 1401011, name = "GROUP_LOAD_401011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_401011", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1401003, name = "GADGET_STATE_CHANGE_401003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_401003", action = "action_EVENT_GADGET_STATE_CHANGE_401003" }
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
		gadgets = { 401002, 401004, 401005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_401001", "GADGET_STATE_CHANGE_401006", "GADGET_STATE_CHANGE_401010", "GROUP_LOAD_401011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401001(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 401002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_401001(context, evt)
	-- 创建id为401009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 401009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401006(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 401004 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_401006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 401007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 401008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_401010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 401002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_401010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303401, EntityType.GADGET, 401009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_401011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303401, EntityType.GADGET, 401009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
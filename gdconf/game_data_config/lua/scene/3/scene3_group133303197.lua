-- 基础信息
local base_info = {
	group_id = 133303197
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197006, monster_id = 26090901, pos = { x = -1464.813, y = 292.246, z = 3689.179 }, rot = { x = 0.000, y = 10.402, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 197007, monster_id = 26090901, pos = { x = -1466.613, y = 291.700, z = 3688.812 }, rot = { x = 0.000, y = 308.606, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 197008, monster_id = 26090201, pos = { x = -1462.051, y = 292.970, z = 3689.384 }, rot = { x = 0.000, y = 25.976, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 197002, gadget_id = 70330199, pos = { x = -1464.887, y = 292.753, z = 3686.149 }, rot = { x = 339.687, y = 138.054, z = 355.864 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 197004, gadget_id = 70330199, pos = { x = -1443.946, y = 291.176, z = 3692.218 }, rot = { x = 8.568, y = 0.284, z = 7.297 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 197005, gadget_id = 70330199, pos = { x = -1456.108, y = 287.659, z = 3701.846 }, rot = { x = 24.119, y = 358.099, z = 351.119 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 197009, gadget_id = 70217020, pos = { x = -1464.698, y = 292.942, z = 3685.914 }, rot = { x = 1.657, y = 358.521, z = 2.681 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 正常态创宝箱
	{ config_id = 1197001, name = "GADGET_STATE_CHANGE_197001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197001", action = "action_EVENT_GADGET_STATE_CHANGE_197001", trigger_count = 0 },
	-- 创建怪物 triggercount1
	{ config_id = 1197003, name = "GADGET_STATE_CHANGE_197003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197003", action = "action_EVENT_GADGET_STATE_CHANGE_197003" },
	-- 消亡态去宝箱
	{ config_id = 1197010, name = "GADGET_STATE_CHANGE_197010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_197010", action = "action_EVENT_GADGET_STATE_CHANGE_197010", trigger_count = 0 },
	-- load无脑去宝箱
	{ config_id = 1197011, name = "GROUP_LOAD_197011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_197011", trigger_count = 0 }
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
		gadgets = { 197002, 197004, 197005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_197001", "GADGET_STATE_CHANGE_197003", "GADGET_STATE_CHANGE_197010", "GROUP_LOAD_197011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_197001(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 197002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_197001(context, evt)
	-- 创建id为197009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 197009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_197003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 197002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_197003(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 197006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 197007, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 197008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_197010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 197002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_197010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303197, EntityType.GADGET, 197009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_197011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303197, EntityType.GADGET, 197009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
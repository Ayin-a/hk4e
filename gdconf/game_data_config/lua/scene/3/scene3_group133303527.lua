-- 基础信息
local base_info = {
	group_id = 133303527
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
	{ config_id = 527002, gadget_id = 70330199, pos = { x = -1571.570, y = 269.417, z = 3567.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 527004, gadget_id = 70217020, pos = { x = -1571.488, y = 269.512, z = 3568.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 正常态创宝箱
	{ config_id = 1527001, name = "GADGET_STATE_CHANGE_527001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_527001", action = "action_EVENT_GADGET_STATE_CHANGE_527001", trigger_count = 0 },
	-- 消亡态去宝箱
	{ config_id = 1527005, name = "GADGET_STATE_CHANGE_527005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_527005", action = "action_EVENT_GADGET_STATE_CHANGE_527005", trigger_count = 0 },
	-- load无脑去宝箱
	{ config_id = 1527006, name = "GROUP_LOAD_527006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_527006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1527003, name = "GADGET_STATE_CHANGE_527003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_527003", action = "action_EVENT_GADGET_STATE_CHANGE_527003" }
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
		gadgets = { 527002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_527001", "GADGET_STATE_CHANGE_527005", "GROUP_LOAD_527006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_527001(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 527002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_527001(context, evt)
	-- 创建id为527004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 527004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_527005(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 527002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_527005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303527, EntityType.GADGET, 527004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_527006(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303527, EntityType.GADGET, 527004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
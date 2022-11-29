-- 基础信息
local base_info = {
	group_id = 133301627
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
	{ config_id = 627001, gadget_id = 70217020, pos = { x = -561.348, y = 229.436, z = 3170.306 }, rot = { x = 11.022, y = 58.034, z = 2.579 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 627002, gadget_id = 70330199, pos = { x = -561.762, y = 229.504, z = 3170.279 }, rot = { x = 11.105, y = 56.015, z = 2.191 }, level = 33, state = GadgetState.GearStop, area_id = 22 },
	{ config_id = 627005, gadget_id = 70290009, pos = { x = -563.132, y = 229.357, z = 3172.586 }, rot = { x = 0.764, y = 7.299, z = 354.057 }, level = 33, area_id = 22 },
	{ config_id = 627006, gadget_id = 70500000, pos = { x = -563.132, y = 229.357, z = 3172.586 }, rot = { x = 0.764, y = 7.299, z = 354.057 }, level = 33, point_type = 3005, owner = 627005, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1627003, name = "GADGET_STATE_CHANGE_627003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_627003", action = "action_EVENT_GADGET_STATE_CHANGE_627003", trigger_count = 0 },
	{ config_id = 1627004, name = "GADGET_STATE_CHANGE_627004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_627004", action = "action_EVENT_GADGET_STATE_CHANGE_627004", trigger_count = 0 }
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
		gadgets = { 627002, 627005, 627006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_627003", "GADGET_STATE_CHANGE_627004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_627003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 627002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_627003(context, evt)
	-- 创建id为627001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 627001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_627004(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 627002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_627004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301627, EntityType.GADGET, 627001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
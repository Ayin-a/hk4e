-- 基础信息
local base_info = {
	group_id = 133301125
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
	{ config_id = 125001, gadget_id = 70310198, pos = { x = -218.277, y = 224.941, z = 3910.229 }, rot = { x = 356.056, y = 97.150, z = 2.236 }, level = 27, persistent = true, area_id = 22 },
	{ config_id = 125002, gadget_id = 70330199, pos = { x = -219.018, y = 225.168, z = 3910.461 }, rot = { x = 4.192, y = 99.345, z = 1.836 }, level = 27, state = GadgetState.GearStop, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 正常态把草种子刷出来
	{ config_id = 1125003, name = "GADGET_STATE_CHANGE_125003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125003", action = "action_EVENT_GADGET_STATE_CHANGE_125003", trigger_count = 0 },
	-- 枯萎态把草种子remove
	{ config_id = 1125004, name = "GADGET_STATE_CHANGE_125004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_125004", action = "action_EVENT_GADGET_STATE_CHANGE_125004", trigger_count = 0 },
	-- 保底切换成202
	{ config_id = 1125005, name = "GROUP_LOAD_125005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_125005", trigger_count = 0 }
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
		gadgets = { 125002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_125003", "GADGET_STATE_CHANGE_125004", "GROUP_LOAD_125005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 125002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_125003(context, evt)
	-- 创建id为125001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 125001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_125004(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 125002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_125004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301125, EntityType.GADGET, 125001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_125005(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301125, EntityType.GADGET, 125001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
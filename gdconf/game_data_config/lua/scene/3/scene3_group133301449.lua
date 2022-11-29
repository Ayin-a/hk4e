-- 基础信息
local base_info = {
	group_id = 133301449
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
	{ config_id = 449001, gadget_id = 70217020, pos = { x = -738.657, y = 146.129, z = 3924.622 }, rot = { x = 11.613, y = 75.009, z = 6.164 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 25 },
	{ config_id = 449002, gadget_id = 70330199, pos = { x = -739.472, y = 146.251, z = 3924.607 }, rot = { x = 16.905, y = 75.606, z = 6.311 }, level = 33, state = GadgetState.GearStop, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1449003, name = "GADGET_STATE_CHANGE_449003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449003", action = "action_EVENT_GADGET_STATE_CHANGE_449003", trigger_count = 0 },
	{ config_id = 1449004, name = "GADGET_STATE_CHANGE_449004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449004", action = "action_EVENT_GADGET_STATE_CHANGE_449004", trigger_count = 0 }
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
		gadgets = { 449002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_449003", "GADGET_STATE_CHANGE_449004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_449003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 449002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_449003(context, evt)
	-- 创建id为449001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 449001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_449004(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 449002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_449004(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301449, EntityType.GADGET, 449001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"
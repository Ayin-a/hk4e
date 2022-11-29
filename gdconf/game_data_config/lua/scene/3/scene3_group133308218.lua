-- 基础信息
local base_info = {
	group_id = 133308218
}

-- Trigger变量
local defs = {
	point_sum = 11,
	route_2 = 330800069,
	gadget_seelie = 218002
}

-- DEFS_MISCS
defs.final_point = defs.point_sum - 1

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
	{ config_id = 218001, gadget_id = 70330331, pos = { x = -1559.426, y = 219.940, z = 4172.460 }, rot = { x = 0.000, y = 260.716, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 218002, gadget_id = 70710010, pos = { x = -1681.565, y = 289.253, z = 4201.297 }, rot = { x = 1.020, y = 181.998, z = 356.457 }, level = 32, route_id = 330800069, area_id = 26 },
	{ config_id = 218003, gadget_id = 70710007, pos = { x = -1559.945, y = 221.329, z = 4172.686 }, rot = { x = 0.000, y = 272.157, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 218004, gadget_id = 70211101, pos = { x = -1555.812, y = 222.216, z = 4170.905 }, rot = { x = 0.872, y = 274.255, z = 358.063 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 218007, gadget_id = 70330266, pos = { x = -1681.343, y = 289.273, z = 4201.698 }, rot = { x = 0.799, y = 333.470, z = 3.599 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1218005, name = "PLATFORM_ARRIVAL_218005", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "condition_EVENT_PLATFORM_ARRIVAL_218005", action = "action_EVENT_PLATFORM_ARRIVAL_218005", trigger_count = 0 },
	{ config_id = 1218006, name = "AVATAR_NEAR_PLATFORM_218006", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_218006", action = "action_EVENT_AVATAR_NEAR_PLATFORM_218006", trigger_count = 0 },
	{ config_id = 1218008, name = "GADGET_STATE_CHANGE_218008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_218008", action = "action_EVENT_GADGET_STATE_CHANGE_218008" },
	{ config_id = 1218009, name = "GADGET_CREATE_218009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_218009", action = "action_EVENT_GADGET_CREATE_218009", trigger_count = 0 },
	{ config_id = 1218010, name = "ANY_GADGET_DIE_218010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_218010", action = "action_EVENT_ANY_GADGET_DIE_218010", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1218011, name = "GROUP_LOAD_218011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_218011", action = "action_EVENT_GROUP_LOAD_218011", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 218001, 218003, 218007 },
		regions = { },
		triggers = { "PLATFORM_ARRIVAL_218005", "AVATAR_NEAR_PLATFORM_218006", "GADGET_STATE_CHANGE_218008", "ANY_GADGET_DIE_218010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 218001, 218004 },
		regions = { },
		triggers = { "GADGET_CREATE_218009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_ARRIVAL_218005(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if  defs.final_point ~= evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_ARRIVAL_218005(context, evt)
	-- 将configid为 218001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 218002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 218002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2005, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_218006(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_218006(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 218002) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_218008(context, evt)
	if 218001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_218008(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133308218, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_218009(context, evt)
	if 218001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_218009(context, evt)
	-- 将configid为 218001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 218001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_218010(context, evt)
	if 218007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_218010(context, evt)
	-- 创建id为218002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 218002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
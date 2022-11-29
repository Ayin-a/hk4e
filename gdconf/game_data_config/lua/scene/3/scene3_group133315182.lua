-- 基础信息
local base_info = {
	group_id = 133315182
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
	{ config_id = 182001, gadget_id = 70330199, pos = { x = 122.569, y = 201.333, z = 2532.422 }, rot = { x = 17.344, y = 0.682, z = 1.058 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 182002, gadget_id = 70217020, pos = { x = 122.801, y = 201.194, z = 2532.953 }, rot = { x = 14.874, y = 0.058, z = 2.609 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 },
	{ config_id = 182003, gadget_id = 70330197, pos = { x = 100.070, y = 204.120, z = 2523.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 182004, gadget_id = 70330197, pos = { x = 123.450, y = 238.703, z = 2516.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 182006, gadget_id = 70220020, pos = { x = 122.854, y = 200.602, z = 2535.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 182009, gadget_id = 70220020, pos = { x = 125.191, y = 201.494, z = 2532.592 }, rot = { x = 3.812, y = 268.001, z = 341.740 }, level = 27, area_id = 20 },
	{ config_id = 182010, gadget_id = 70220020, pos = { x = 123.142, y = 201.899, z = 2530.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 182011, gadget_id = 70220020, pos = { x = 120.502, y = 201.359, z = 2531.738 }, rot = { x = 20.610, y = 49.864, z = 358.342 }, level = 27, area_id = 20 },
	{ config_id = 182012, gadget_id = 70220020, pos = { x = 119.834, y = 200.630, z = 2533.885 }, rot = { x = 17.082, y = 316.518, z = 323.111 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1182005, name = "GADGET_STATE_CHANGE_182005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182005", action = "action_EVENT_GADGET_STATE_CHANGE_182005", trigger_count = 0 },
	{ config_id = 1182013, name = "GADGET_STATE_CHANGE_182013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182013", action = "action_EVENT_GADGET_STATE_CHANGE_182013", trigger_count = 0 },
	{ config_id = 1182014, name = "GROUP_LOAD_182014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_182014", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 182007, monster_id = 28050106, pos = { x = 121.819, y = 203.857, z = 2531.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
		{ config_id = 182008, monster_id = 28050106, pos = { x = 123.144, y = 203.750, z = 2533.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 }
	},
	triggers = {
		{ config_id = 1182015, name = "GROUP_LOAD_182015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_182015", action = "action_EVENT_GROUP_LOAD_182015", trigger_count = 0 }
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
		gadgets = { 182001, 182003, 182004, 182006, 182009, 182010, 182011, 182012 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_182005", "GADGET_STATE_CHANGE_182013", "GROUP_LOAD_182014" },
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
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_STATE_CHANGE_182005(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 182001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_182005(context, evt)
	-- 创建id为182002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 182002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_182013(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 182001 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_182013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315182, EntityType.GADGET, 182002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_182014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315182, EntityType.GADGET, 182002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133310347
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
	{ config_id = 347001, gadget_id = 70211002, pos = { x = -2280.429, y = 119.119, z = 4912.552 }, rot = { x = 351.613, y = 196.870, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 347007, gadget_id = 70330392, pos = { x = -2275.682, y = 124.508, z = 4907.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 347008, gadget_id = 70330392, pos = { x = -2285.689, y = 124.508, z = 4907.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 347009, gadget_id = 70330392, pos = { x = -2275.675, y = 124.508, z = 4917.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 347010, gadget_id = 70330392, pos = { x = -2285.711, y = 124.508, z = 4917.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 墙壁
	{ config_id = 347015, gadget_id = 70330392, pos = { x = -2290.331, y = 119.273, z = 4907.831 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 32, area_id = 27 },
	-- 墙壁
	{ config_id = 347016, gadget_id = 70330392, pos = { x = -2290.331, y = 109.292, z = 4907.831 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 32, area_id = 27 },
	-- 墙壁
	{ config_id = 347017, gadget_id = 70330392, pos = { x = -2285.698, y = 119.273, z = 4922.524 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 墙壁
	{ config_id = 347018, gadget_id = 70330392, pos = { x = -2285.007, y = 119.273, z = 4903.110 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 墙壁
	{ config_id = 347019, gadget_id = 70330392, pos = { x = -2285.007, y = 109.292, z = 4903.110 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 墙壁
	{ config_id = 347020, gadget_id = 70330392, pos = { x = -2275.658, y = 119.273, z = 4903.110 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	-- 墙壁
	{ config_id = 347021, gadget_id = 70330392, pos = { x = -2270.962, y = 119.273, z = 4908.386 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 32, area_id = 27 },
	-- 墙壁
	{ config_id = 347022, gadget_id = 70330392, pos = { x = -2270.962, y = 119.273, z = 4918.375 }, rot = { x = 0.000, y = 0.000, z = 90.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	-- 接近宝箱
	{ config_id = 347011, shape = RegionShape.CUBIC, size = { x = 10.000, y = 5.000, z = 10.000 }, pos = { x = -2284.073, y = 120.283, z = 4917.314 }, area_id = 27 }
}

-- 触发器
triggers = {
	-- 接近宝箱
	{ config_id = 1347011, name = "ENTER_REGION_347011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_347011", action = "action_EVENT_ENTER_REGION_347011", trigger_count = 0 },
	-- 保底消除透明墙
	{ config_id = 1347013, name = "GROUP_LOAD_347013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_347013", action = "action_EVENT_GROUP_LOAD_347013", trigger_count = 0 },
	-- 加载透明墙
	{ config_id = 1347014, name = "GROUP_LOAD_347014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_347014", action = "action_EVENT_GROUP_LOAD_347014", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 347002, gadget_id = 70330264, pos = { x = -2289.923, y = 75.943, z = 4907.878 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 347003, gadget_id = 70330264, pos = { x = -2285.379, y = 75.912, z = 4904.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 347004, gadget_id = 70330264, pos = { x = -2275.476, y = 75.889, z = 4904.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 347005, gadget_id = 70330264, pos = { x = -2271.431, y = 75.930, z = 4908.213 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 347006, gadget_id = 70330264, pos = { x = -2271.402, y = 75.988, z = 4917.853 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 32, area_id = 27 },
		{ config_id = 347012, gadget_id = 70330264, pos = { x = -2285.379, y = 76.473, z = 4921.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
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
		gadgets = { 347001 },
		regions = { 347011 },
		triggers = { "ENTER_REGION_347011", "GROUP_LOAD_347013", "GROUP_LOAD_347014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 347007, 347008, 347009, 347010, 347015, 347016, 347017, 347018, 347019, 347020, 347021, 347022 },
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
function condition_EVENT_ENTER_REGION_347011(context, evt)
	if evt.param1 ~= 347011 then return false end
	
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 0 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_347011(context, evt)
	-- 将configid为 347001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 347001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "finished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310347, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_347013(context, evt)
	-- 判断变量"finished"为1
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_347013(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133310347, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_347014(context, evt)
	-- 判断变量"finished"为0
	if ScriptLib.GetGroupVariableValue(context, "finished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_347014(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310347, 2)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133302346
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 346001, monster_id = 26090101, pos = { x = -59.025, y = 183.940, z = 2860.184 }, rot = { x = 0.000, y = 213.276, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 346002, monster_id = 26090101, pos = { x = -55.212, y = 183.940, z = 2862.534 }, rot = { x = 0.000, y = 213.276, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 346003, monster_id = 26090101, pos = { x = -42.995, y = 183.940, z = 2874.523 }, rot = { x = 0.000, y = 213.276, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 346004, monster_id = 26090101, pos = { x = -41.136, y = 183.940, z = 2878.359 }, rot = { x = 0.000, y = 14.492, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 346005, monster_id = 26090101, pos = { x = -37.836, y = 183.940, z = 2854.476 }, rot = { x = 0.000, y = 75.233, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 },
	{ config_id = 346006, monster_id = 26090101, pos = { x = -35.946, y = 183.940, z = 2849.489 }, rot = { x = 0.000, y = 105.561, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 346010, gadget_id = 70500000, pos = { x = -45.913, y = 185.940, z = 2866.288 }, rot = { x = 0.000, y = 72.148, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 346011, gadget_id = 70290484, pos = { x = -45.913, y = 185.940, z = 2866.288 }, rot = { x = 0.000, y = 72.148, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 346012, gadget_id = 70310200, pos = { x = -36.721, y = 186.399, z = 2853.130 }, rot = { x = 0.000, y = 337.800, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 346013, gadget_id = 70310200, pos = { x = -41.319, y = 185.962, z = 2877.196 }, rot = { x = 0.000, y = 26.825, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	{ config_id = 346014, gadget_id = 70310200, pos = { x = -58.189, y = 185.940, z = 2860.841 }, rot = { x = 0.000, y = 55.739, z = 0.000 }, level = 27, persistent = true, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 346007, shape = RegionShape.SPHERE, radius = 5, pos = { x = -58.924, y = 183.940, z = 2859.891 }, area_id = 20 },
	{ config_id = 346008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -41.882, y = 183.940, z = 2878.171 }, area_id = 20 },
	{ config_id = 346009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -36.005, y = 184.050, z = 2852.054 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1346007, name = "ENTER_REGION_346007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_346007", action = "action_EVENT_ENTER_REGION_346007" },
	{ config_id = 1346008, name = "ENTER_REGION_346008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_346008", action = "action_EVENT_ENTER_REGION_346008" },
	{ config_id = 1346009, name = "ENTER_REGION_346009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_346009", action = "action_EVENT_ENTER_REGION_346009" },
	{ config_id = 1346015, name = "GADGET_STATE_CHANGE_346015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_346015", action = "action_EVENT_GADGET_STATE_CHANGE_346015", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 346016, monster_id = 28010301, pos = { x = -62.040, y = 183.992, z = 2854.237 }, rot = { x = 0.000, y = 186.419, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 },
		{ config_id = 346017, monster_id = 28010301, pos = { x = -79.483, y = 175.910, z = 2837.103 }, rot = { x = 0.000, y = 265.036, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 20 }
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
		gadgets = { 346010, 346011, 346012, 346013, 346014 },
		regions = { 346007, 346008, 346009 },
		triggers = { "ENTER_REGION_346007", "ENTER_REGION_346008", "ENTER_REGION_346009", "GADGET_STATE_CHANGE_346015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 346005, 346006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 346003, 346004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 346001, 346002 },
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
function condition_EVENT_ENTER_REGION_346007(context, evt)
	if evt.param1 ~= 346007 then return false end
	
	-- 判断是区域346007
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 346007 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_346007(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302346, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_346008(context, evt)
	if evt.param1 ~= 346008 then return false end
	
	-- 判断是区域346008
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 346008 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_346008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302346, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_346009(context, evt)
	if evt.param1 ~= 346009 then return false end
	
	-- 判断是区域346009
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 346009 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_346009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302346, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_346015(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302346, 346012) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302346, 346013) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133302346, 346014) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_346015(context, evt)
	-- 将configid为 346011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 346011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133105002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2003, monster_id = 22010201, pos = { x = 431.470, y = 206.505, z = -39.190 }, rot = { x = 0.000, y = 211.353, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 9 },
	{ config_id = 2004, monster_id = 22010301, pos = { x = 411.860, y = 201.447, z = -78.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 9 },
	{ config_id = 2005, monster_id = 21020301, pos = { x = 432.100, y = 204.714, z = -45.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 2006, monster_id = 21011201, pos = { x = 409.623, y = 201.057, z = -73.503 }, rot = { x = 0.000, y = 2.945, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 2007, monster_id = 21011201, pos = { x = 407.844, y = 201.041, z = -69.994 }, rot = { x = 0.000, y = 121.356, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70350201, pos = { x = 445.035, y = 212.928, z = -24.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 2002, gadget_id = 70350201, pos = { x = 414.872, y = 209.254, z = -55.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 2010, gadget_id = 70360163, pos = { x = 410.026, y = 201.061, z = -71.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	{ config_id = 2012, gadget_id = 70220009, pos = { x = 413.982, y = 202.007, z = -60.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 2013, gadget_id = 70220009, pos = { x = 412.257, y = 201.827, z = -60.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 2014, gadget_id = 70220009, pos = { x = 411.675, y = 202.021, z = -59.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 2015, gadget_id = 70220009, pos = { x = 412.393, y = 202.244, z = -57.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 2008, shape = RegionShape.SPHERE, radius = 60, pos = { x = 423.915, y = 203.084, z = -51.345 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1002008, name = "ENTER_REGION_2008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2008", trigger_count = 0 },
	{ config_id = 1002011, name = "ANY_MONSTER_DIE_2011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2011", action = "action_EVENT_ANY_MONSTER_DIE_2011" },
	{ config_id = 1002016, name = "GROUP_LOAD_2016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2016" }
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
		monsters = { 2003, 2004, 2005, 2006, 2007 },
		gadgets = { 2001, 2002, 2012, 2013, 2014, 2015 },
		regions = { 2008 },
		triggers = { "ENTER_REGION_2008", "ANY_MONSTER_DIE_2011", "GROUP_LOAD_2016" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_2008(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2011(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2011(context, evt)
	-- 将configid为 2010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2016(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 2010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
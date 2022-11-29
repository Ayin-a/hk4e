-- 基础信息
local base_info = {
	group_id = 133103002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2006, monster_id = 21011002, pos = { x = 601.023, y = 246.113, z = 1542.795 }, rot = { x = 0.000, y = 301.867, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 2009, monster_id = 22010101, pos = { x = 595.499, y = 238.617, z = 1549.778 }, rot = { x = 0.000, y = 216.929, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 2010, monster_id = 21030401, pos = { x = 593.656, y = 238.498, z = 1546.926 }, rot = { x = 0.000, y = 39.351, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 2013, monster_id = 21020301, pos = { x = 586.586, y = 242.238, z = 1538.250 }, rot = { x = 0.000, y = 31.842, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 },
	{ config_id = 2015, monster_id = 21010902, pos = { x = 587.267, y = 246.113, z = 1553.255 }, rot = { x = 0.000, y = 109.690, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70350201, pos = { x = 582.444, y = 239.235, z = 1531.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2002, gadget_id = 70350201, pos = { x = 576.305, y = 245.619, z = 1521.468 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2003, gadget_id = 70220014, pos = { x = 582.668, y = 239.335, z = 1535.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2004, gadget_id = 70220005, pos = { x = 595.058, y = 238.647, z = 1551.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2005, gadget_id = 70220005, pos = { x = 597.587, y = 238.737, z = 1549.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2007, gadget_id = 70300089, pos = { x = 593.876, y = 238.595, z = 1550.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2008, gadget_id = 70300089, pos = { x = 596.514, y = 238.620, z = 1548.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2014, gadget_id = 70220014, pos = { x = 582.187, y = 239.339, z = 1534.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2016, gadget_id = 70360163, pos = { x = 594.214, y = 238.527, z = 1548.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 2020, gadget_id = 70220014, pos = { x = 585.834, y = 239.088, z = 1533.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 2021, gadget_id = 70220014, pos = { x = 585.040, y = 239.122, z = 1532.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 2011, shape = RegionShape.SPHERE, radius = 60, pos = { x = 587.777, y = 238.693, z = 1531.756 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1002011, name = "ENTER_REGION_2011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2011", trigger_count = 0 },
	{ config_id = 1002017, name = "ANY_MONSTER_DIE_2017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2017", action = "action_EVENT_ANY_MONSTER_DIE_2017" },
	{ config_id = 1002018, name = "GROUP_LOAD_2018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_2018" }
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
		monsters = { 2006, 2009, 2010, 2013, 2015 },
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2007, 2008, 2014, 2020, 2021 },
		regions = { 2011 },
		triggers = { "ENTER_REGION_2011", "ANY_MONSTER_DIE_2017", "GROUP_LOAD_2018" },
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
function action_EVENT_ENTER_REGION_2011(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2017(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2017(context, evt)
	-- 将configid为 2016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_2018(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 2016) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
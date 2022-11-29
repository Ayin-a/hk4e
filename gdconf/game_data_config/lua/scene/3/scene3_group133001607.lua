-- 基础信息
local base_info = {
	group_id = 133001607
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 607002, monster_id = 21020201, pos = { x = 1236.322, y = 265.118, z = -1689.253 }, rot = { x = 0.000, y = 160.914, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 2 },
	{ config_id = 607004, monster_id = 21011002, pos = { x = 1223.801, y = 263.563, z = -1668.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 2 },
	{ config_id = 607005, monster_id = 21010502, pos = { x = 1226.334, y = 263.583, z = -1668.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 2 },
	{ config_id = 607007, monster_id = 21020101, pos = { x = 1237.192, y = 265.095, z = -1693.175 }, rot = { x = 0.000, y = 6.227, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 2 },
	{ config_id = 607009, monster_id = 22010301, pos = { x = 1232.429, y = 264.875, z = -1703.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 607001, gadget_id = 70350201, pos = { x = 1219.151, y = 267.052, z = -1694.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2, is_enable_interact = false },
	{ config_id = 607003, gadget_id = 70360163, pos = { x = 1237.018, y = 265.116, z = -1691.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 2 },
	{ config_id = 607008, gadget_id = 70350201, pos = { x = 1215.382, y = 266.022, z = -1679.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2, is_enable_interact = false },
	{ config_id = 607011, gadget_id = 70300088, pos = { x = 1223.724, y = 263.512, z = -1665.085 }, rot = { x = 0.000, y = 85.397, z = 0.000 }, level = 1, area_id = 2 },
	{ config_id = 607012, gadget_id = 70300088, pos = { x = 1225.657, y = 263.483, z = -1664.948 }, rot = { x = 0.000, y = 85.397, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 607006, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1229.941, y = 265.082, z = -1685.678 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1607006, name = "ENTER_REGION_607006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_607006", trigger_count = 0 },
	{ config_id = 1607010, name = "ANY_MONSTER_DIE_607010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_607010", action = "action_EVENT_ANY_MONSTER_DIE_607010" },
	{ config_id = 1607014, name = "GROUP_LOAD_607014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_607014" }
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
		monsters = { 607002, 607004, 607005, 607007, 607009 },
		gadgets = { 607001, 607008, 607011, 607012 },
		regions = { 607006 },
		triggers = { "ENTER_REGION_607006", "ANY_MONSTER_DIE_607010", "GROUP_LOAD_607014" },
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
function action_EVENT_ENTER_REGION_607006(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_607010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_607010(context, evt)
	-- 将configid为 607003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 607003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_607014(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 607003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
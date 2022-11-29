-- 基础信息
local base_info = {
	group_id = 133102123
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 123003, monster_id = 25010401, pos = { x = 1118.695, y = 205.689, z = 930.436 }, rot = { x = 0.000, y = 207.564, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 6 },
	{ config_id = 123004, monster_id = 25010601, pos = { x = 1115.833, y = 206.037, z = 928.100 }, rot = { x = 0.000, y = 107.051, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 6 },
	{ config_id = 123006, monster_id = 25010201, pos = { x = 1119.395, y = 205.841, z = 926.678 }, rot = { x = 0.000, y = 315.516, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9009, area_id = 6 },
	{ config_id = 123007, monster_id = 25030201, pos = { x = 1111.483, y = 206.142, z = 933.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 123008, monster_id = 25030301, pos = { x = 1122.645, y = 205.603, z = 931.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 123001, gadget_id = 70360163, pos = { x = 1120.949, y = 205.858, z = 925.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 123002, gadget_id = 70350201, pos = { x = 1142.611, y = 209.964, z = 943.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 123009, gadget_id = 70310004, pos = { x = 1117.705, y = 205.875, z = 928.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 123005, shape = RegionShape.SPHERE, radius = 50, pos = { x = 1122.436, y = 205.669, z = 928.723 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1123005, name = "ENTER_REGION_123005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_123005", trigger_count = 0 },
	{ config_id = 1123010, name = "ANY_MONSTER_DIE_123010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_123010", action = "action_EVENT_ANY_MONSTER_DIE_123010" },
	{ config_id = 1123011, name = "GROUP_LOAD_123011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_123011" }
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
		monsters = { 123003, 123004, 123006, 123007, 123008 },
		gadgets = { 123002, 123009 },
		regions = { 123005 },
		triggers = { "ENTER_REGION_123005", "ANY_MONSTER_DIE_123010", "GROUP_LOAD_123011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_123005(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_123010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_123010(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_123011(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 123001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
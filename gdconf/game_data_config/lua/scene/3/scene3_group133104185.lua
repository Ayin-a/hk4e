-- 基础信息
local base_info = {
	group_id = 133104185
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 185001, monster_id = 21010601, pos = { x = 743.850, y = 200.164, z = 581.974 }, rot = { x = 0.000, y = 279.515, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 6 },
	{ config_id = 185002, monster_id = 21010601, pos = { x = 742.106, y = 200.343, z = 577.538 }, rot = { x = 0.000, y = 273.537, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 6 },
	{ config_id = 185003, monster_id = 21020201, pos = { x = 746.473, y = 200.198, z = 578.834 }, rot = { x = 0.000, y = 273.372, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 185004, gadget_id = 70350201, pos = { x = 763.171, y = 201.272, z = 583.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 185005, gadget_id = 70310009, pos = { x = 743.723, y = 200.201, z = 579.621 }, rot = { x = 0.000, y = 111.136, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 185006, gadget_id = 70310001, pos = { x = 762.917, y = 201.372, z = 586.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 185007, gadget_id = 70310001, pos = { x = 764.669, y = 201.322, z = 582.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 185008, gadget_id = 70220013, pos = { x = 759.144, y = 201.314, z = 587.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 185009, gadget_id = 70220013, pos = { x = 762.960, y = 201.113, z = 578.450 }, rot = { x = 0.000, y = 330.162, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 185010, gadget_id = 70220014, pos = { x = 744.630, y = 200.318, z = 578.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 185011, gadget_id = 70220014, pos = { x = 745.394, y = 200.170, z = 579.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 185012, gadget_id = 70360163, pos = { x = 759.924, y = 201.109, z = 582.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 185015, shape = RegionShape.SPHERE, radius = 40, pos = { x = 753.911, y = 201.106, z = 581.052 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1185013, name = "ANY_MONSTER_DIE_185013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_185013", action = "action_EVENT_ANY_MONSTER_DIE_185013" },
	{ config_id = 1185014, name = "GROUP_LOAD_185014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_185014" },
	{ config_id = 1185015, name = "ENTER_REGION_185015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_185015", trigger_count = 0 }
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
		monsters = { 185001, 185002, 185003 },
		gadgets = { 185004, 185005, 185006, 185007, 185008, 185009, 185010, 185011 },
		regions = { 185015 },
		triggers = { "ANY_MONSTER_DIE_185013", "GROUP_LOAD_185014", "ENTER_REGION_185015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_185013(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_185013(context, evt)
	-- 将configid为 185012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 185012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_185014(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 185012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_185015(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end
-- 基础信息
local base_info = {
	group_id = 133002502
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 502001, monster_id = 25010301, pos = { x = 1537.937, y = 270.527, z = -870.302 }, rot = { x = 0.000, y = 55.320, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 502002, monster_id = 25010501, pos = { x = 1540.218, y = 270.427, z = -868.722 }, rot = { x = 0.000, y = 237.319, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 502003, monster_id = 25010201, pos = { x = 1531.359, y = 271.601, z = -849.898 }, rot = { x = 0.000, y = 253.783, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 502004, monster_id = 25030201, pos = { x = 1528.368, y = 271.694, z = -849.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 502005, monster_id = 25070101, pos = { x = 1529.779, y = 271.627, z = -851.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 502006, gadget_id = 70350201, pos = { x = 1525.042, y = 271.609, z = -863.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 502007, gadget_id = 70360163, pos = { x = 1538.335, y = 271.041, z = -858.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 502010, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1532.364, y = 271.697, z = -852.686 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1502008, name = "ANY_MONSTER_DIE_502008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_502008", action = "action_EVENT_ANY_MONSTER_DIE_502008" },
	{ config_id = 1502009, name = "GROUP_LOAD_502009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_502009" },
	{ config_id = 1502010, name = "ENTER_REGION_502010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_502010", trigger_count = 0 }
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
		monsters = { 502001, 502002, 502003, 502004, 502005 },
		gadgets = { 502006 },
		regions = { 502010 },
		triggers = { "ANY_MONSTER_DIE_502008", "GROUP_LOAD_502009", "ENTER_REGION_502010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_502008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_502008(context, evt)
	-- 将configid为 502007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 502007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_502009(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 502007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_502010(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end
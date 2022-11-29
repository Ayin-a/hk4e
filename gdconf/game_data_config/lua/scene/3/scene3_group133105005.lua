-- 基础信息
local base_info = {
	group_id = 133105005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5002, monster_id = 21011002, pos = { x = 543.654, y = 202.727, z = -615.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 5003, monster_id = 21010902, pos = { x = 541.593, y = 202.735, z = -616.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 5004, monster_id = 21010902, pos = { x = 557.125, y = 202.636, z = -629.190 }, rot = { x = 0.000, y = 158.846, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 5005, monster_id = 21010502, pos = { x = 555.226, y = 202.636, z = -629.859 }, rot = { x = 0.000, y = 158.846, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 9 },
	{ config_id = 5007, monster_id = 21020202, pos = { x = 547.814, y = 202.661, z = -627.497 }, rot = { x = 0.000, y = 26.061, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5001, gadget_id = 70350201, pos = { x = 557.603, y = 207.598, z = -611.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5008, gadget_id = 70220013, pos = { x = 549.261, y = 202.646, z = -629.912 }, rot = { x = 0.000, y = 24.088, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5009, gadget_id = 70220013, pos = { x = 547.333, y = 202.652, z = -629.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5010, gadget_id = 70220013, pos = { x = 542.171, y = 202.719, z = -620.439 }, rot = { x = 0.000, y = 336.431, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5011, gadget_id = 70220013, pos = { x = 542.781, y = 202.701, z = -622.612 }, rot = { x = 0.000, y = 308.392, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5012, gadget_id = 70220014, pos = { x = 558.077, y = 202.770, z = -617.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5013, gadget_id = 70220014, pos = { x = 558.359, y = 202.666, z = -616.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5014, gadget_id = 70220014, pos = { x = 557.082, y = 202.770, z = -616.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5015, gadget_id = 70360163, pos = { x = 551.063, y = 202.687, z = -621.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	{ config_id = 5017, gadget_id = 70220005, pos = { x = 553.858, y = 202.643, z = -630.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 5018, gadget_id = 70220005, pos = { x = 556.125, y = 202.684, z = -628.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 5006, shape = RegionShape.SPHERE, radius = 50, pos = { x = 552.491, y = 202.696, z = -616.967 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1005006, name = "ENTER_REGION_5006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_5006", trigger_count = 0 },
	{ config_id = 1005016, name = "ANY_MONSTER_DIE_5016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5016", action = "action_EVENT_ANY_MONSTER_DIE_5016" },
	{ config_id = 1005019, name = "GROUP_LOAD_5019", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_5019" }
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
		monsters = { 5002, 5003, 5004, 5005, 5007 },
		gadgets = { 5001, 5008, 5009, 5010, 5011, 5012, 5013, 5014, 5017, 5018 },
		regions = { 5006 },
		triggers = { "ENTER_REGION_5006", "ANY_MONSTER_DIE_5016", "GROUP_LOAD_5019" },
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
function action_EVENT_ENTER_REGION_5006(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5016(context, evt)
	-- 将configid为 5015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_5019(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 5015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
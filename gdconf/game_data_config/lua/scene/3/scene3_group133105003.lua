-- 基础信息
local base_info = {
	group_id = 133105003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3004, monster_id = 21010502, pos = { x = 613.431, y = 220.520, z = -471.973 }, rot = { x = 0.000, y = 82.132, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 3005, monster_id = 21010502, pos = { x = 613.907, y = 220.572, z = -468.117 }, rot = { x = 0.000, y = 103.363, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 3006, monster_id = 21010201, pos = { x = 613.400, y = 220.542, z = -469.860 }, rot = { x = 0.000, y = 92.747, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 3007, monster_id = 21020301, pos = { x = 621.817, y = 221.048, z = -465.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 },
	{ config_id = 3008, monster_id = 21020201, pos = { x = 623.228, y = 221.005, z = -473.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70350201, pos = { x = 641.665, y = 223.430, z = -470.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 3002, gadget_id = 70300089, pos = { x = 617.259, y = 220.692, z = -468.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 3003, gadget_id = 70300089, pos = { x = 617.001, y = 220.607, z = -471.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 3009, gadget_id = 70360163, pos = { x = 615.682, y = 220.561, z = -470.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 9 },
	{ config_id = 3011, gadget_id = 70220005, pos = { x = 614.006, y = 220.516, z = -473.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 3012, gadget_id = 70220005, pos = { x = 615.204, y = 220.551, z = -472.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 3013, gadget_id = 70220005, pos = { x = 614.656, y = 220.605, z = -466.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 3014, gadget_id = 70220005, pos = { x = 615.701, y = 220.612, z = -467.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 3015, gadget_id = 70220008, pos = { x = 641.232, y = 223.430, z = -471.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 3017, gadget_id = 70220008, pos = { x = 640.330, y = 223.430, z = -469.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 3018, shape = RegionShape.SPHERE, radius = 40, pos = { x = 625.284, y = 221.151, z = -462.395 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1003010, name = "ANY_MONSTER_DIE_3010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3010", action = "action_EVENT_ANY_MONSTER_DIE_3010" },
	{ config_id = 1003016, name = "GROUP_LOAD_3016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3016" },
	{ config_id = 1003018, name = "ENTER_REGION_3018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_3018", trigger_count = 0 }
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
		monsters = { 3004, 3005, 3006, 3007, 3008 },
		gadgets = { 3001, 3002, 3003, 3011, 3012, 3013, 3014, 3015, 3017 },
		regions = { 3018 },
		triggers = { "ANY_MONSTER_DIE_3010", "GROUP_LOAD_3016", "ENTER_REGION_3018" },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3010(context, evt)
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_3016(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 3009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_3018(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end
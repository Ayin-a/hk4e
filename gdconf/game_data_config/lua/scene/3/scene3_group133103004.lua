-- 基础信息
local base_info = {
	group_id = 133103004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4002, monster_id = 22010201, pos = { x = 332.927, y = 237.275, z = 1707.465 }, rot = { x = 0.000, y = 198.764, z = 0.000 }, level = 1, drop_tag = "深渊法师", disableWander = true, pose_id = 9013, area_id = 6 },
	{ config_id = 4004, monster_id = 21010201, pos = { x = 330.087, y = 232.870, z = 1705.134 }, rot = { x = 0.000, y = 16.497, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 4005, monster_id = 21010201, pos = { x = 334.093, y = 232.728, z = 1703.458 }, rot = { x = 0.000, y = 15.421, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 4006, monster_id = 21010201, pos = { x = 331.704, y = 232.502, z = 1702.776 }, rot = { x = 0.000, y = 16.497, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 6 },
	{ config_id = 4007, monster_id = 21020201, pos = { x = 351.802, y = 233.808, z = 1718.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 },
	{ config_id = 4008, monster_id = 21020301, pos = { x = 320.406, y = 234.725, z = 1724.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4001, gadget_id = 70350201, pos = { x = 337.267, y = 240.681, z = 1725.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 4009, gadget_id = 70360163, pos = { x = 331.175, y = 232.293, z = 1701.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 4003, shape = RegionShape.SPHERE, radius = 60, pos = { x = 337.713, y = 234.140, z = 1713.097 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "ENTER_REGION_4003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_4003", trigger_count = 0 },
	{ config_id = 1004010, name = "ANY_MONSTER_DIE_4010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4010", action = "action_EVENT_ANY_MONSTER_DIE_4010" },
	{ config_id = 1004011, name = "GROUP_LOAD_4011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_4011" }
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
		monsters = { 4002, 4004, 4005, 4006, 4007, 4008 },
		gadgets = { 4001 },
		regions = { 4003 },
		triggers = { "ENTER_REGION_4003", "ANY_MONSTER_DIE_4010", "GROUP_LOAD_4011" },
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
function action_EVENT_ENTER_REGION_4003(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
	
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_4010(context, evt)
	-- 将configid为 4009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 4009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_4011(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 4009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
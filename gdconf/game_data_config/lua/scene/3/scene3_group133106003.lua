-- 基础信息
local base_info = {
	group_id = 133106003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3004, monster_id = 23010101, pos = { x = -504.426, y = 182.032, z = 1129.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 8 },
	{ config_id = 3005, monster_id = 23010601, pos = { x = -525.530, y = 184.217, z = 1149.180 }, rot = { x = 0.000, y = 144.608, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 8 },
	{ config_id = 3006, monster_id = 23010301, pos = { x = -523.698, y = 184.217, z = 1145.859 }, rot = { x = 0.000, y = 331.943, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70350201, pos = { x = -501.173, y = 182.032, z = 1132.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 3002, gadget_id = 70220004, pos = { x = -499.606, y = 182.039, z = 1134.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 3003, gadget_id = 70220004, pos = { x = -500.865, y = 182.032, z = 1131.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 },
	{ config_id = 3008, gadget_id = 70360163, pos = { x = -524.430, y = 184.217, z = 1147.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 8 },
	{ config_id = 3010, gadget_id = 70220004, pos = { x = -503.253, y = 182.032, z = 1133.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 8 }
}

-- 区域
regions = {
	{ config_id = 3011, shape = RegionShape.SPHERE, radius = 50, pos = { x = -519.118, y = 183.035, z = 1148.701 }, area_id = 8 }
}

-- 触发器
triggers = {
	{ config_id = 1003007, name = "GROUP_LOAD_3007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3007" },
	{ config_id = 1003009, name = "ANY_MONSTER_DIE_3009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3009", action = "action_EVENT_ANY_MONSTER_DIE_3009" },
	{ config_id = 1003011, name = "ENTER_REGION_3011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_3011", trigger_count = 0 }
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
		monsters = { 3004, 3005, 3006 },
		gadgets = { 3001, 3002, 3003, 3010 },
		regions = { 3011 },
		triggers = { "GROUP_LOAD_3007", "ANY_MONSTER_DIE_3009", "ENTER_REGION_3011" },
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
function action_EVENT_GROUP_LOAD_3007(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 3008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	-- 将configid为 3008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_3011(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end
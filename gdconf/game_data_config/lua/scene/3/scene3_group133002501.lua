-- 基础信息
local base_info = {
	group_id = 133002501
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 501001, monster_id = 23010301, pos = { x = 1413.616, y = 275.951, z = -480.310 }, rot = { x = 0.000, y = 235.742, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 501002, monster_id = 23010601, pos = { x = 1394.123, y = 271.165, z = -502.585 }, rot = { x = 0.000, y = 48.365, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 501003, monster_id = 23010501, pos = { x = 1404.671, y = 270.924, z = -500.311 }, rot = { x = 0.000, y = 187.858, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 501004, gadget_id = 70350201, pos = { x = 1390.178, y = 276.938, z = -508.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 501005, gadget_id = 70350201, pos = { x = 1416.914, y = 277.872, z = -475.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 501006, gadget_id = 70360163, pos = { x = 1395.323, y = 272.360, z = -488.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 501009, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1407.721, y = 270.977, z = -497.712 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1501007, name = "ANY_MONSTER_DIE_501007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_501007", action = "action_EVENT_ANY_MONSTER_DIE_501007" },
	{ config_id = 1501008, name = "GROUP_LOAD_501008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_501008" },
	{ config_id = 1501009, name = "ENTER_REGION_501009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_501009", trigger_count = 0 }
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
		monsters = { 501001, 501002, 501003 },
		gadgets = { 501004, 501005 },
		regions = { 501009 },
		triggers = { "ANY_MONSTER_DIE_501007", "GROUP_LOAD_501008", "ENTER_REGION_501009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_501007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_501007(context, evt)
	-- 将configid为 501006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 501006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_501008(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 501006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_501009(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
end
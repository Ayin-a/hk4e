-- 基础信息
local base_info = {
	group_id = 133002503
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 503001, monster_id = 23010301, pos = { x = 1424.630, y = 276.727, z = -671.455 }, rot = { x = 0.000, y = 344.232, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 503002, monster_id = 23010101, pos = { x = 1413.953, y = 273.645, z = -656.452 }, rot = { x = 0.000, y = 190.548, z = 0.000 }, level = 1, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 503003, gadget_id = 70350201, pos = { x = 1426.033, y = 277.024, z = -674.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 503004, gadget_id = 70360163, pos = { x = 1416.682, y = 273.890, z = -656.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 503007, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1421.709, y = 275.883, z = -665.925 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1503005, name = "ANY_MONSTER_DIE_503005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_503005", action = "action_EVENT_ANY_MONSTER_DIE_503005" },
	{ config_id = 1503006, name = "GROUP_LOAD_503006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_503006" },
	{ config_id = 1503007, name = "ENTER_REGION_503007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_503007", trigger_count = 0 }
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
		monsters = { 503001, 503002 },
		gadgets = { 503003 },
		regions = { 503007 },
		triggers = { "ANY_MONSTER_DIE_503005", "GROUP_LOAD_503006", "ENTER_REGION_503007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_503005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_503005(context, evt)
	-- 将configid为 503004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 503004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_503006(context, evt)
	-- 创建id为500017的gadget
	if 0 ~= ScriptLib.CreateChannellerSlabCampRewardGadget(context, 503004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_503007(context, evt)
	-- 显示id为137的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,137,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
	
	
	
end
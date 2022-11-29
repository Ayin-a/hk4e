-- 基础信息
local base_info = {
	group_id = 133003499
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499001, monster_id = 20011301, pos = { x = 2457.471, y = 207.863, z = -1135.895 }, rot = { x = 0.000, y = 296.505, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 1 },
	{ config_id = 499002, monster_id = 20011201, pos = { x = 2458.549, y = 207.845, z = -1135.403 }, rot = { x = 0.000, y = 284.579, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 1 },
	{ config_id = 499003, monster_id = 20011201, pos = { x = 2457.995, y = 207.843, z = -1137.095 }, rot = { x = 0.000, y = 284.579, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499006, gadget_id = 70300114, pos = { x = 2457.751, y = 207.842, z = -1135.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, state = GadgetState.GearStart, persistent = true, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 499004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2457.456, y = 207.881, z = -1135.536 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1499004, name = "ENTER_REGION_499004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_499004", action = "action_EVENT_ENTER_REGION_499004" },
	{ config_id = 1499005, name = "ANY_MONSTER_DIE_499005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_499005", action = "action_EVENT_ANY_MONSTER_DIE_499005" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 499004 },
		triggers = { "ENTER_REGION_499004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 499001, 499002, 499003 },
		gadgets = { 499006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_499005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_499004(context, evt)
	if evt.param1 ~= 499004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_499004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300349901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_499005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_499005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300349902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 499006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 499006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
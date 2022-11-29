-- 基础信息
local base_info = {
	group_id = 133103909
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 909003, monster_id = 20011301, pos = { x = 956.920, y = 278.771, z = 1136.557 }, rot = { x = 0.000, y = 177.600, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 909006, monster_id = 20011201, pos = { x = 958.661, y = 279.124, z = 1136.589 }, rot = { x = 0.000, y = 204.400, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 909007, monster_id = 20010501, pos = { x = 952.940, y = 279.194, z = 1134.470 }, rot = { x = 0.000, y = 87.660, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 },
	{ config_id = 909008, monster_id = 20010601, pos = { x = 954.648, y = 278.862, z = 1135.683 }, rot = { x = 0.000, y = 137.440, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 909001, gadget_id = 70360007, pos = { x = 957.472, y = 278.678, z = 1133.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 909002, shape = RegionShape.SPHERE, radius = 1.8, pos = { x = 957.479, y = 279.324, z = 1133.877 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1909002, name = "ENTER_REGION_909002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_909002", action = "action_EVENT_ENTER_REGION_909002" },
	{ config_id = 1909009, name = "ANY_MONSTER_DIE_909009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_909009", action = "action_EVENT_ANY_MONSTER_DIE_909009" }
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
	suite = 4,
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
		gadgets = { 909001 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 909001 },
		regions = { 909002 },
		triggers = { "ENTER_REGION_909002" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 909003, 909006, 909007, 909008 },
		gadgets = { 909001 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_909009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_909002(context, evt)
	if evt.param1 ~= 909002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_909002(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103909, 3)
	
	-- 将configid为 909001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 909001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_909009(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133103909) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_909009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133103909") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
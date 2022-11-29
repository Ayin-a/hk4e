-- 基础信息
local base_info = {
	group_id = 133309805
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[805001] = { config_id = 805001, monster_id = 24040201, pos = { x = -2424.005, y = -5.909, z = 5839.045 }, rot = { x = 0.000, y = 355.182, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[805002] = { config_id = 805002, gadget_id = 70330454, pos = { x = -2420.918, y = -1.005, z = 5852.458 }, rot = { x = 343.156, y = 197.372, z = 6.912 }, level = 32, persistent = true, area_id = 27 },
	[805003] = { config_id = 805003, gadget_id = 70330432, pos = { x = -2425.504, y = -5.814, z = 5832.357 }, rot = { x = 351.746, y = 73.493, z = 24.863 }, level = 32, area_id = 27 },
	[805004] = { config_id = 805004, gadget_id = 70330432, pos = { x = -2415.250, y = -6.762, z = 5833.591 }, rot = { x = 340.369, y = 194.211, z = 5.441 }, level = 32, area_id = 27 },
	[805005] = { config_id = 805005, gadget_id = 70330432, pos = { x = -2420.473, y = -12.747, z = 5864.577 }, rot = { x = 324.798, y = 112.570, z = 328.766 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	[805007] = { config_id = 805007, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2418.084, y = -10.122, z = 5863.167 }, area_id = 27 },
	[805009] = { config_id = 805009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2424.005, y = -5.909, z = 5839.045 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1805007, name = "ENTER_REGION_805007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_805007", action = "action_EVENT_ENTER_REGION_805007", trigger_count = 0 },
	{ config_id = 1805009, name = "ENTER_REGION_805009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_805009", action = "action_EVENT_ENTER_REGION_805009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroy", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1805006, name = "ANY_GADGET_DIE_805006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_805006", action = "action_EVENT_ANY_GADGET_DIE_805006" },
		{ config_id = 1805008, name = "GROUP_LOAD_805008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_805008", action = "action_EVENT_GROUP_LOAD_805008", trigger_count = 0 }
	}
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
		monsters = { 805001 },
		gadgets = { 805002, 805003, 805004, 805005 },
		regions = { 805007, 805009 },
		triggers = { "ENTER_REGION_805007", "ENTER_REGION_805009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_805007(context, evt)
	if evt.param1 ~= 805007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_805007(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 805001, 133309805)
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 805002 })
		
	ScriptLib.SetGroupVariableValue(context, "destroy", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_805009(context, evt)
	if evt.param1 ~= 805009 then return false end
	
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_805009(context, evt)
	-- 通知groupid为133309805中,configid为：805001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 805001, 133309805) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
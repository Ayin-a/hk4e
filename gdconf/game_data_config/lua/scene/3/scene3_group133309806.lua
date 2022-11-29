-- 基础信息
local base_info = {
	group_id = 133309806
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[806001] = { config_id = 806001, monster_id = 24040201, pos = { x = -2453.215, y = -46.426, z = 5719.677 }, rot = { x = 0.000, y = 277.748, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[806002] = { config_id = 806002, gadget_id = 70330454, pos = { x = -2465.457, y = -43.698, z = 5721.238 }, rot = { x = 7.304, y = 271.257, z = 3.829 }, level = 32, persistent = true, area_id = 27 },
	[806003] = { config_id = 806003, gadget_id = 70330432, pos = { x = -2455.739, y = -46.103, z = 5710.175 }, rot = { x = 351.746, y = 73.493, z = 24.863 }, level = 32, area_id = 27 },
	[806004] = { config_id = 806004, gadget_id = 70330432, pos = { x = -2443.265, y = -47.598, z = 5724.808 }, rot = { x = 340.369, y = 194.211, z = 5.441 }, level = 32, area_id = 27 },
	[806005] = { config_id = 806005, gadget_id = 70330432, pos = { x = -2484.816, y = -53.290, z = 5715.697 }, rot = { x = 341.276, y = 163.407, z = 353.530 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	[806007] = { config_id = 806007, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2476.816, y = -53.389, z = 5713.988 }, area_id = 27 },
	[806009] = { config_id = 806009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2453.215, y = -46.426, z = 5719.677 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1806007, name = "ENTER_REGION_806007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_806007", action = "action_EVENT_ENTER_REGION_806007", trigger_count = 0 },
	{ config_id = 1806009, name = "ENTER_REGION_806009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_806009", action = "action_EVENT_ENTER_REGION_806009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroy", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1806006, name = "ANY_GADGET_DIE_806006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_806006", action = "action_EVENT_ANY_GADGET_DIE_806006" },
		{ config_id = 1806008, name = "GROUP_LOAD_806008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_806008", action = "action_EVENT_GROUP_LOAD_806008", trigger_count = 0 }
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
		monsters = { 806001 },
		gadgets = { 806002, 806003, 806004, 806005 },
		regions = { 806007, 806009 },
		triggers = { "ENTER_REGION_806007", "ENTER_REGION_806009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_806007(context, evt)
	if evt.param1 ~= 806007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_806007(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 806001, 133309806)
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 806002 })
		
	ScriptLib.MarkPlayerAction(context, 5023, 3, 1)
	
	ScriptLib.SetGroupVariableValue(context, "destroy", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_806009(context, evt)
	if evt.param1 ~= 806009 then return false end
	
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_806009(context, evt)
	-- 通知groupid为133309806中,configid为：806001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 806001, 133309806) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
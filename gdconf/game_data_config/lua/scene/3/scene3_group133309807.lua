-- 基础信息
local base_info = {
	group_id = 133309807
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[807001] = { config_id = 807001, monster_id = 24040201, pos = { x = -2462.210, y = 32.988, z = 5670.494 }, rot = { x = 0.000, y = 222.830, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5205 }, pose_id = 1004, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[807002] = { config_id = 807002, gadget_id = 70330454, pos = { x = -2469.686, y = 42.271, z = 5660.188 }, rot = { x = 0.000, y = 262.948, z = 0.000 }, level = 32, persistent = true, area_id = 27 },
	[807003] = { config_id = 807003, gadget_id = 70330432, pos = { x = -2461.607, y = 29.386, z = 5679.667 }, rot = { x = 351.746, y = 73.493, z = 24.863 }, level = 32, area_id = 27 },
	[807004] = { config_id = 807004, gadget_id = 70330432, pos = { x = -2442.492, y = 26.704, z = 5692.155 }, rot = { x = 340.369, y = 194.211, z = 5.441 }, level = 32, area_id = 27 },
	[807005] = { config_id = 807005, gadget_id = 70330432, pos = { x = -2480.449, y = 34.150, z = 5653.590 }, rot = { x = 341.276, y = 163.407, z = 353.530 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	[807007] = { config_id = 807007, shape = RegionShape.SPHERE, radius = 12, pos = { x = -2481.727, y = 35.433, z = 5647.880 }, area_id = 27 },
	[807009] = { config_id = 807009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2462.210, y = 32.988, z = 5670.494 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1807007, name = "ENTER_REGION_807007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_807007", action = "action_EVENT_ENTER_REGION_807007", trigger_count = 0 },
	{ config_id = 1807009, name = "ENTER_REGION_807009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_807009", action = "action_EVENT_ENTER_REGION_807009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroy", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1807006, name = "ANY_GADGET_DIE_807006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_807006", action = "action_EVENT_ANY_GADGET_DIE_807006" },
		{ config_id = 1807008, name = "GROUP_LOAD_807008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_807008", action = "action_EVENT_GROUP_LOAD_807008", trigger_count = 0 }
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
		monsters = { 807001 },
		gadgets = { 807002, 807003, 807004, 807005 },
		regions = { 807007, 807009 },
		triggers = { "ENTER_REGION_807007", "ENTER_REGION_807009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_807007(context, evt)
	if evt.param1 ~= 807007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_807007(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 807001, 133309807)
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 807002 })
		
	ScriptLib.MarkPlayerAction(context, 5024, 3, 1)
	
	ScriptLib.SetGroupVariableValue(context, "destroy", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_807009(context, evt)
	if evt.param1 ~= 807009 then return false end
	
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_807009(context, evt)
	-- 通知groupid为133309807中,configid为：807001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 807001, 133309807) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133307173
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[173001] = { config_id = 173001, monster_id = 24040201, pos = { x = -2035.935, y = -28.162, z = 5526.779 }, rot = { x = 0.000, y = 25.382, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[173002] = { config_id = 173002, gadget_id = 70330454, pos = { x = -2034.361, y = -24.918, z = 5536.804 }, rot = { x = 6.512, y = 162.094, z = 354.937 }, level = 32, persistent = true, area_id = 27 },
	[173003] = { config_id = 173003, gadget_id = 70330432, pos = { x = -2040.345, y = -32.965, z = 5504.646 }, rot = { x = 355.069, y = 226.141, z = 334.323 }, level = 32, area_id = 27 },
	[173004] = { config_id = 173004, gadget_id = 70330432, pos = { x = -2033.483, y = -28.865, z = 5517.754 }, rot = { x = 0.000, y = 300.040, z = 339.658 }, level = 32, area_id = 27 },
	[173005] = { config_id = 173005, gadget_id = 70330432, pos = { x = -2060.861, y = -39.410, z = 5494.578 }, rot = { x = 324.798, y = 112.570, z = 328.766 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	[173007] = { config_id = 173007, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2047.211, y = -33.855, z = 5504.769 }, area_id = 27 },
	[173009] = { config_id = 173009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2035.935, y = -28.162, z = 5526.779 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1173007, name = "ENTER_REGION_173007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173007", action = "action_EVENT_ENTER_REGION_173007", trigger_count = 0 },
	{ config_id = 1173009, name = "ENTER_REGION_173009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_173009", action = "action_EVENT_ENTER_REGION_173009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroy", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1173006, name = "ANY_GADGET_DIE_173006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_173006", action = "action_EVENT_ANY_GADGET_DIE_173006" },
		{ config_id = 1173008, name = "GROUP_LOAD_173008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_173008", action = "action_EVENT_GROUP_LOAD_173008", trigger_count = 0 }
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
		monsters = { 173001 },
		gadgets = { 173002, 173003, 173004, 173005 },
		regions = { 173007, 173009 },
		triggers = { "ENTER_REGION_173007", "ENTER_REGION_173009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_173007(context, evt)
	if evt.param1 ~= 173007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_173007(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 173001, 133307173)
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 173002 })
		
	ScriptLib.MarkPlayerAction(context, 5028, 3, 1)
	
	ScriptLib.SetGroupVariableValue(context, "destroy", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_173009(context, evt)
	if evt.param1 ~= 173009 then return false end
	
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_173009(context, evt)
	-- 通知groupid为133307173中,configid为：173001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 173001, 133307173) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133307172
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[172001] = { config_id = 172001, monster_id = 24040201, pos = { x = -2084.007, y = -26.277, z = 5611.689 }, rot = { x = 0.000, y = 182.299, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[172002] = { config_id = 172002, gadget_id = 70330454, pos = { x = -2084.091, y = -19.190, z = 5599.170 }, rot = { x = 6.512, y = 162.094, z = 354.937 }, level = 32, persistent = true, area_id = 27 },
	[172003] = { config_id = 172003, gadget_id = 70330432, pos = { x = -2073.781, y = -31.157, z = 5634.072 }, rot = { x = 355.069, y = 226.141, z = 334.323 }, level = 32, area_id = 27 },
	[172004] = { config_id = 172004, gadget_id = 70330432, pos = { x = -2058.995, y = -36.238, z = 5656.705 }, rot = { x = 0.000, y = 300.040, z = 339.658 }, level = 32, area_id = 27 },
	[172005] = { config_id = 172005, gadget_id = 70330432, pos = { x = -2086.219, y = -25.946, z = 5615.509 }, rot = { x = 314.322, y = 66.118, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
	[172007] = { config_id = 172007, shape = RegionShape.CUBIC, size = { x = 25.000, y = 15.000, z = 15.000 }, pos = { x = -2090.763, y = -23.845, z = 5591.712 }, area_id = 27 },
	[172009] = { config_id = 172009, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2084.091, y = -26.275, z = 5610.295 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1172007, name = "ENTER_REGION_172007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172007", action = "action_EVENT_ENTER_REGION_172007", trigger_count = 0 },
	{ config_id = 1172009, name = "ENTER_REGION_172009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_172009", action = "action_EVENT_ENTER_REGION_172009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "destroy", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1172006, name = "ANY_GADGET_DIE_172006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_172006", action = "action_EVENT_ANY_GADGET_DIE_172006" },
		{ config_id = 1172008, name = "GROUP_LOAD_172008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_172008", action = "action_EVENT_GROUP_LOAD_172008", trigger_count = 0 }
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
		monsters = { 172001 },
		gadgets = { 172002, 172003, 172004, 172005 },
		regions = { 172007, 172009 },
		triggers = { "ENTER_REGION_172007", "ENTER_REGION_172009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_172007(context, evt)
	if evt.param1 ~= 172007 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172007(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 172001, 133307172)
	
	ScriptLib.KillEntityByConfigId(context, { config_id = 172002 })
	
	ScriptLib.MarkPlayerAction(context, 5013, 3, 1)
	
	ScriptLib.SetGroupVariableValue(context, "destroy", 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_172009(context, evt)
	if evt.param1 ~= 172009 then return false end
	
	-- 判断变量"destroy"为1
	if ScriptLib.GetGroupVariableValue(context, "destroy") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_172009(context, evt)
	-- 通知groupid为133307172中,configid为：172001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 172001, 133307172) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
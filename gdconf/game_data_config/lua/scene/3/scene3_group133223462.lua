-- 基础信息
local base_info = {
	group_id = 133223462
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 462002, monster_id = 24020201, pos = { x = -5957.221, y = 153.030, z = -2715.144 }, rot = { x = 0.000, y = 24.292, z = 0.000 }, level = 33, drop_tag = "拟生机关", affix = { 5009 }, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 462003, monster_id = 24020201, pos = { x = -5956.065, y = 153.159, z = -2712.451 }, rot = { x = 0.000, y = 24.623, z = 0.000 }, level = 33, drop_tag = "拟生机关", affix = { 5009 }, pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 462004, shape = RegionShape.SPHERE, radius = 6, pos = { x = -5955.621, y = 153.068, z = -2713.275 }, area_id = 18, vision_type_list = { 32230002 } }
}

-- 触发器
triggers = {
	{ config_id = 1462004, name = "ENTER_REGION_462004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_462004", action = "action_EVENT_ENTER_REGION_462004", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 462001, shape = RegionShape.SPHERE, radius = 6, pos = { x = -5955.621, y = 153.068, z = -2713.275 }, area_id = 18 }
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
		monsters = { 462002, 462003 },
		gadgets = { },
		regions = { 462004 },
		triggers = { "ENTER_REGION_462004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_462004(context, evt)
	if evt.param1 ~= 462004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_462004(context, evt)
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {462002}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
		-- 改变指定monster的globalvalue
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {462003}, "_MONSTERAFFIX_AIHITFEELING_LEVELTRIGGER", 1)
	
	-- 通知groupid为133223462中,configid为：462002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 462002, 133223462) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133223462中,configid为：462003的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 462003, 133223462) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
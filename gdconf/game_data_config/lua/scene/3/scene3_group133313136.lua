-- 基础信息
local base_info = {
	group_id = 133313136
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 136001, monster_id = 24040101, pos = { x = -871.919, y = -242.778, z = 6051.485 }, rot = { x = 0.000, y = 109.727, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 },
	{ config_id = 136002, monster_id = 24040301, pos = { x = -867.951, y = -242.778, z = 6054.923 }, rot = { x = 0.000, y = 177.309, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 136003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -870.042, y = -242.778, z = 6053.151 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1136003, name = "ENTER_REGION_136003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_136003", action = "action_EVENT_ENTER_REGION_136003" }
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
		monsters = { 136001, 136002 },
		gadgets = { },
		regions = { 136003 },
		triggers = { "ENTER_REGION_136003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_136003(context, evt)
	if evt.param1 ~= 136003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_136003(context, evt)
	-- 通知groupid为133313136中,configid为：136002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 136002, 133313136) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133313136中,configid为：136001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 136001, 133313136) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
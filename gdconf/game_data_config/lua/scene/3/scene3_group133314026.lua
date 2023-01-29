-- 基础信息
local base_info = {
	group_id = 133314026
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26001, monster_id = 24040201, pos = { x = -811.697, y = -58.818, z = 4862.086 }, rot = { x = 0.000, y = 9.703, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 },
	{ config_id = 26002, monster_id = 24040201, pos = { x = -807.051, y = -58.818, z = 4863.474 }, rot = { x = 0.000, y = 311.574, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 26003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -810.287, y = -58.818, z = 4864.421 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1026003, name = "ENTER_REGION_26003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26003", action = "action_EVENT_ENTER_REGION_26003" }
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
		monsters = { 26001, 26002 },
		gadgets = { },
		regions = { 26003 },
		triggers = { "ENTER_REGION_26003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_26003(context, evt)
	if evt.param1 ~= 26003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26003(context, evt)
	-- 通知groupid为133314026中,configid为：26001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 26001, 133314026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 通知groupid为133314026中,configid为：26002的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 26002, 133314026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
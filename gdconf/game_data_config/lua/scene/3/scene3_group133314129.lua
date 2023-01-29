-- 基础信息
local base_info = {
	group_id = 133314129
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129001, monster_id = 24040101, pos = { x = -807.054, y = -81.238, z = 4970.851 }, rot = { x = 0.000, y = 23.919, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 129002, shape = RegionShape.SPHERE, radius = 7, pos = { x = -806.738, y = -80.642, z = 4971.311 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1129002, name = "ENTER_REGION_129002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_129002", action = "action_EVENT_ENTER_REGION_129002" }
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
		monsters = { 129001 },
		gadgets = { },
		regions = { 129002 },
		triggers = { "ENTER_REGION_129002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_129002(context, evt)
	if evt.param1 ~= 129002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_129002(context, evt)
	-- 通知groupid为133314129中,configid为：129001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 129001, 133314129) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
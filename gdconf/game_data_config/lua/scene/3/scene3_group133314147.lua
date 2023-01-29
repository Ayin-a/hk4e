-- 基础信息
local base_info = {
	group_id = 133314147
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147001, monster_id = 24040301, pos = { x = -889.310, y = -199.628, z = 5044.556 }, rot = { x = 0.000, y = 27.920, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 147002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -889.025, y = -199.142, z = 5045.393 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1147002, name = "ENTER_REGION_147002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_147002", action = "action_EVENT_ENTER_REGION_147002" }
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
		monsters = { 147001 },
		gadgets = { },
		regions = { 147002 },
		triggers = { "ENTER_REGION_147002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_147002(context, evt)
	if evt.param1 ~= 147002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_147002(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 147001, 133314147)
	
	return 0
end
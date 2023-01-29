-- 基础信息
local base_info = {
	group_id = 133313202
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 202001, monster_id = 24040101, pos = { x = -788.305, y = -268.628, z = 5752.793 }, rot = { x = 0.000, y = 176.431, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 202002, shape = RegionShape.SPHERE, radius = 10, pos = { x = -785.159, y = -267.493, z = 5751.700 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1202002, name = "ENTER_REGION_202002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202002", action = "action_EVENT_ENTER_REGION_202002" }
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
		monsters = { 202001 },
		gadgets = { },
		regions = { 202002 },
		triggers = { "ENTER_REGION_202002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_202002(context, evt)
	if evt.param1 ~= 202002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_202002(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 202001, 133313202)
	
	return 0
end
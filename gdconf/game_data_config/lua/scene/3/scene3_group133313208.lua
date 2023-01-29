-- 基础信息
local base_info = {
	group_id = 133313208
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 208001, monster_id = 24040201, pos = { x = -815.955, y = -239.922, z = 5812.342 }, rot = { x = 0.000, y = 352.810, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 208003, gadget_id = 70330432, pos = { x = -808.291, y = -238.061, z = 5807.146 }, rot = { x = 337.487, y = 335.179, z = 50.380 }, level = 32, area_id = 32 },
	{ config_id = 208004, gadget_id = 70330432, pos = { x = -824.513, y = -239.303, z = 5805.521 }, rot = { x = 0.000, y = 0.000, z = 322.674 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 208002, shape = RegionShape.SPHERE, radius = 5, pos = { x = -816.117, y = -239.566, z = 5813.002 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1208002, name = "ENTER_REGION_208002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_208002", action = "action_EVENT_ENTER_REGION_208002" }
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
		monsters = { 208001 },
		gadgets = { 208003, 208004 },
		regions = { 208002 },
		triggers = { "ENTER_REGION_208002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_208002(context, evt)
	if evt.param1 ~= 208002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_208002(context, evt)
	ScriptLib.SetMonsterBattleByGroup(context, 208001, 133313208)
	
	return 0
end
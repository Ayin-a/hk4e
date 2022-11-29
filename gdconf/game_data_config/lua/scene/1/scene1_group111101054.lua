-- 基础信息
local base_info = {
	group_id = 111101054
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 54002, monster_id = 20011001, pos = { x = 2219.618, y = 234.299, z = -1287.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 54003, monster_id = 20011001, pos = { x = 2218.395, y = 234.240, z = -1287.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 54004, monster_id = 20011001, pos = { x = 2219.073, y = 234.099, z = -1286.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 54001, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2219.069, y = 234.225, z = -1287.432 } }
}

-- 触发器
triggers = {
	{ config_id = 1054001, name = "ENTER_REGION_54001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_54001", action = "action_EVENT_ENTER_REGION_54001" }
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
		monsters = { },
		gadgets = { },
		regions = { 54001 },
		triggers = { "ENTER_REGION_54001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_54001(context, evt)
	if evt.param1 ~= 54001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_54001(context, evt)
	-- 在0面前， 5 到 10 范围里，15 角度内，刷{54002,54003,54004}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {54002,54003,54004}, ranges = { 5, 10 }, angle = 15 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end
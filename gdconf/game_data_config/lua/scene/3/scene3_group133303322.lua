-- 基础信息
local base_info = {
	group_id = 133303322
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 322004, monster_id = 26090901, pos = { x = -1776.926, y = 265.795, z = 3689.564 }, rot = { x = 0.000, y = 132.874, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 322008, monster_id = 26090901, pos = { x = -1778.185, y = 265.736, z = 3687.667 }, rot = { x = 0.000, y = 132.874, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 322005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1771.419, y = 265.989, z = 3687.285 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1322005, name = "ENTER_REGION_322005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_322005", action = "action_EVENT_ENTER_REGION_322005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 322001, gadget_id = 70330216, pos = { x = -1767.999, y = 266.574, z = 3697.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 322002, gadget_id = 70330216, pos = { x = -1779.009, y = 262.051, z = 3694.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	},
	triggers = {
		{ config_id = 1322006, name = "ANY_MONSTER_DIE_322006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "" }
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
		monsters = { },
		gadgets = { },
		regions = { 322005 },
		triggers = { "ENTER_REGION_322005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_322005(context, evt)
	if evt.param1 ~= 322005 then return false end
	
	-- 判断是区域322005
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 322005 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_322005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 322004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 322008, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
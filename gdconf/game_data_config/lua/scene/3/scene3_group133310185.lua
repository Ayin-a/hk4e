-- 基础信息
local base_info = {
	group_id = 133310185
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 185009, monster_id = 25310201, pos = { x = -3023.716, y = 271.762, z = 4727.131 }, rot = { x = 0.000, y = 264.228, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 28 },
	{ config_id = 185010, monster_id = 25210302, pos = { x = -3017.076, y = 271.762, z = 4771.724 }, rot = { x = 0.000, y = 227.977, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9005, area_id = 28 },
	{ config_id = 185011, monster_id = 25210403, pos = { x = -3018.483, y = 271.762, z = 4770.601 }, rot = { x = 0.000, y = 46.094, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 185001, gadget_id = 70310006, pos = { x = -3102.490, y = 290.313, z = 4722.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 185002, gadget_id = 70710559, pos = { x = -3103.563, y = 290.340, z = 4721.864 }, rot = { x = 4.026, y = 1.197, z = 0.393 }, level = 32, area_id = 28 },
	{ config_id = 185003, gadget_id = 70710559, pos = { x = -3101.316, y = 290.247, z = 4723.371 }, rot = { x = 0.000, y = 38.122, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 185004, gadget_id = 70710037, pos = { x = -3102.945, y = 290.361, z = 4721.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 185005, gadget_id = 70710037, pos = { x = -3101.859, y = 290.251, z = 4723.273 }, rot = { x = 0.000, y = 83.186, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 185007, gadget_id = 70220103, pos = { x = -3087.736, y = 276.949, z = 4727.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 185008, gadget_id = 70220103, pos = { x = -3096.307, y = 293.119, z = 4716.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 28 },
	{ config_id = 185013, gadget_id = 70330409, pos = { x = -3057.662, y = 260.225, z = 4725.034 }, rot = { x = 349.399, y = 0.332, z = 356.424 }, level = 32, area_id = 28 },
	{ config_id = 185015, gadget_id = 70330409, pos = { x = -3025.527, y = 272.431, z = 4749.230 }, rot = { x = 355.302, y = 1.567, z = 337.077 }, level = 32, area_id = 28 },
	{ config_id = 185016, gadget_id = 70710352, pos = { x = -3106.128, y = 290.000, z = 4722.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 }
}

-- 区域
regions = {
	{ config_id = 185006, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3082.988, y = 261.035, z = 4724.541 }, area_id = 28 }
}

-- 触发器
triggers = {
	{ config_id = 1185006, name = "ENTER_REGION_185006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185006", action = "action_EVENT_ENTER_REGION_185006" }
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
		monsters = { 185009, 185010, 185011 },
		gadgets = { 185001, 185002, 185003, 185004, 185005, 185013, 185015, 185016 },
		regions = { 185006 },
		triggers = { "ENTER_REGION_185006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_185006(context, evt)
	if evt.param1 ~= 185006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185006(context, evt)
	-- 创建id为185007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 185007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为185008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 185008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
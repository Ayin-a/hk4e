-- 基础信息
local base_info = {
	group_id = 133307190
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 190007, monster_id = 24040201, pos = { x = -1270.254, y = -32.292, z = 5560.657 }, rot = { x = 0.000, y = 302.685, z = 0.000 }, level = 32, drop_tag = "元能构装体", affix = { 5205 }, pose_id = 1004, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 190001, gadget_id = 70330432, pos = { x = -1279.476, y = -32.613, z = 5572.641 }, rot = { x = 359.987, y = 129.213, z = 338.035 }, level = 32, area_id = 32 },
	{ config_id = 190002, gadget_id = 70330432, pos = { x = -1312.071, y = -30.911, z = 5576.074 }, rot = { x = 339.412, y = 174.222, z = 22.203 }, level = 32, area_id = 32 },
	{ config_id = 190003, gadget_id = 70330432, pos = { x = -1266.637, y = -32.211, z = 5573.938 }, rot = { x = 0.000, y = 201.965, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 190004, gadget_id = 70330430, pos = { x = -1266.994, y = -32.173, z = 5573.988 }, rot = { x = 0.000, y = 182.607, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 190006, gadget_id = 70210101, pos = { x = -1267.464, y = -31.625, z = 5573.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 190008, shape = RegionShape.SPHERE, radius = 7, pos = { x = -1271.713, y = -32.289, z = 5561.464 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1190005, name = "ANY_GADGET_DIE_190005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_190005", action = "action_EVENT_ANY_GADGET_DIE_190005" },
	{ config_id = 1190008, name = "ENTER_REGION_190008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_190008", action = "action_EVENT_ENTER_REGION_190008" }
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
		monsters = { 190007 },
		gadgets = { 190001, 190002, 190003, 190004 },
		regions = { 190008 },
		triggers = { "ANY_GADGET_DIE_190005", "ENTER_REGION_190008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_190005(context, evt)
	if 190004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_190005(context, evt)
	-- 创建id为190006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 190006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_190008(context, evt)
	if evt.param1 ~= 190008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_190008(context, evt)
	-- 通知groupid为133307190中,configid为：190007的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 190007, 133307190) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
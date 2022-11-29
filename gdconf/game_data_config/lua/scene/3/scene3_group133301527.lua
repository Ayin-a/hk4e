-- 基础信息
local base_info = {
	group_id = 133301527
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 527001, monster_id = 25210302, pos = { x = -348.749, y = 254.372, z = 3946.715 }, rot = { x = 0.000, y = 214.525, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, area_id = 22 },
	{ config_id = 527002, monster_id = 28030313, pos = { x = -342.675, y = 248.920, z = 3919.158 }, rot = { x = 0.000, y = 42.343, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 3, area_id = 22 },
	{ config_id = 527007, monster_id = 28030313, pos = { x = -360.250, y = 260.861, z = 3953.693 }, rot = { x = 0.000, y = 170.233, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 3, area_id = 22 },
	{ config_id = 527010, monster_id = 25210202, pos = { x = -345.691, y = 280.176, z = 3974.353 }, rot = { x = 0.000, y = 235.058, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, area_id = 22 },
	{ config_id = 527042, monster_id = 28030313, pos = { x = -406.953, y = 282.089, z = 3985.308 }, rot = { x = 0.000, y = 58.019, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 3, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 527003, gadget_id = 70210101, pos = { x = -357.420, y = 257.345, z = 3944.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 },
	{ config_id = 527004, gadget_id = 70210101, pos = { x = -342.972, y = 248.642, z = 3919.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 527005, gadget_id = 70210101, pos = { x = -359.364, y = 256.759, z = 3939.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 527006, gadget_id = 70210101, pos = { x = -360.296, y = 256.701, z = 3941.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 527011, gadget_id = 70310479, pos = { x = -344.017, y = 280.206, z = 3972.289 }, rot = { x = 0.000, y = 50.060, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 527012, gadget_id = 70220048, pos = { x = -340.639, y = 280.194, z = 3976.146 }, rot = { x = 0.000, y = 322.998, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 527013, gadget_id = 70220048, pos = { x = -341.716, y = 280.191, z = 3973.576 }, rot = { x = 0.000, y = 6.475, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 527014, gadget_id = 70220048, pos = { x = -339.599, y = 280.197, z = 3974.478 }, rot = { x = 0.000, y = 303.772, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 527016, gadget_id = 70210101, pos = { x = -358.182, y = 271.213, z = 3979.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 527017, gadget_id = 70220048, pos = { x = -353.200, y = 269.832, z = 3978.412 }, rot = { x = 0.000, y = 344.732, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 527018, gadget_id = 70220048, pos = { x = -355.201, y = 269.831, z = 3977.197 }, rot = { x = 0.000, y = 332.296, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 527019, gadget_id = 70217020, pos = { x = -367.275, y = 263.922, z = 3962.684 }, rot = { x = 13.381, y = 83.369, z = 355.046 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 527020, gadget_id = 70210101, pos = { x = -406.834, y = 277.924, z = 3992.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 527021, gadget_id = 70210101, pos = { x = -409.490, y = 277.624, z = 3991.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 527022, gadget_id = 70210101, pos = { x = -382.520, y = 278.521, z = 3997.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 },
	{ config_id = 527023, gadget_id = 70210101, pos = { x = -372.543, y = 283.077, z = 4011.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 22 }
}

-- 区域
regions = {
	{ config_id = 527015, shape = RegionShape.SPHERE, radius = 15, pos = { x = -352.145, y = 263.412, z = 3981.717 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1527015, name = "ENTER_REGION_527015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_527015", action = "action_EVENT_ENTER_REGION_527015", trigger_count = 0 }
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
		monsters = { 527001, 527002, 527007, 527010, 527042 },
		gadgets = { 527003, 527004, 527005, 527006, 527011, 527012, 527013, 527014, 527016, 527017, 527018, 527019, 527020, 527021, 527022, 527023 },
		regions = { 527015 },
		triggers = { "ENTER_REGION_527015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_527015(context, evt)
	if evt.param1 ~= 527015 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_527015(context, evt)
	-- 通知groupid为133301527中,configid为：527010的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 527010, 133301527) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
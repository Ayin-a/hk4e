-- 基础信息
local base_info = {
	group_id = 133003184
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 721, monster_id = 20010301, pos = { x = 2135.934, y = 222.012, z = -1190.704 }, rot = { x = 0.000, y = 291.885, z = 0.000 }, level = 6, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 722, monster_id = 20010301, pos = { x = 2133.538, y = 222.329, z = -1191.523 }, rot = { x = 0.000, y = 37.735, z = 0.000 }, level = 6, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 723, monster_id = 20010301, pos = { x = 2135.088, y = 222.059, z = -1188.427 }, rot = { x = 0.000, y = 176.059, z = 0.000 }, level = 6, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2857, gadget_id = 70211001, pos = { x = 2133.629, y = 222.176, z = -1185.926 }, rot = { x = 0.000, y = 140.806, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 151, shape = RegionShape.SPHERE, radius = 7.6, pos = { x = 2137.216, y = 222.058, z = -1190.083 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1000151, name = "ENTER_REGION_151", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_151", action = "action_EVENT_ENTER_REGION_151" },
	{ config_id = 1000152, name = "ANY_MONSTER_DIE_152", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_152", action = "action_EVENT_ANY_MONSTER_DIE_152" }
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
		regions = { 151 },
		triggers = { "ENTER_REGION_151", "ANY_MONSTER_DIE_152" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2857 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_151(context, evt)
	if evt.param1 ~= 151 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_151(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 721, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 722, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 723, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_152(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_152(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003184, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
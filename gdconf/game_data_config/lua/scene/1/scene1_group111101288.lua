-- 基础信息
local base_info = {
	group_id = 111101288
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 288004, monster_id = 21010201, pos = { x = 2262.756, y = 264.276, z = -1675.523 }, rot = { x = 0.000, y = 210.786, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 288005, monster_id = 21010201, pos = { x = 2256.355, y = 264.402, z = -1667.715 }, rot = { x = 0.000, y = 247.848, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 288006, monster_id = 21010701, pos = { x = 2261.209, y = 264.055, z = -1670.431 }, rot = { x = 0.000, y = 244.330, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 288007, monster_id = 21010901, pos = { x = 2265.896, y = 264.518, z = -1670.198 }, rot = { x = 0.000, y = 245.217, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 288008, monster_id = 21010501, pos = { x = 2261.662, y = 264.419, z = -1665.611 }, rot = { x = 0.000, y = 213.976, z = 0.000 }, level = 1, drop_tag = "远程丘丘人" },
	{ config_id = 288009, monster_id = 22010301, pos = { x = 2262.919, y = 266.516, z = -1661.543 }, rot = { x = 0.000, y = 196.642, z = 0.000 }, level = 1, drop_tag = "深渊法师" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 288002, gadget_id = 70211001, pos = { x = 2261.852, y = 264.550, z = -1670.000 }, rot = { x = 0.000, y = 52.649, z = 0.000 }, level = 11, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 288013, gadget_id = 70211011, pos = { x = 2259.944, y = 264.219, z = -1671.432 }, rot = { x = 0.000, y = 51.702, z = 0.000 }, level = 11, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 288011, shape = RegionShape.SPHERE, radius = 6.7, pos = { x = 2261.667, y = 264.371, z = -1669.799 } }
}

-- 触发器
triggers = {
	{ config_id = 1288001, name = "ANY_MONSTER_DIE_288001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_288001", action = "action_EVENT_ANY_MONSTER_DIE_288001" },
	{ config_id = 1288011, name = "ENTER_REGION_288011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_288011", trigger_count = 0 },
	{ config_id = 1288012, name = "ANY_MONSTER_DIE_288012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_288012", action = "action_EVENT_ANY_MONSTER_DIE_288012" }
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
		regions = { 288011 },
		triggers = { "ENTER_REGION_288011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 288004, 288005, 288006, 288007, 288008, 288009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_288001", "ANY_MONSTER_DIE_288012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_288001(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101288) ~= 0 then
		return false
	end
	
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101289) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_288001(context, evt)
	-- 创建id为288002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 288002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 111101289, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_288011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101288, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_288012(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101288) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_288012(context, evt)
	-- 创建id为288013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 288013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
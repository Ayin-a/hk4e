-- 基础信息
local base_info = {
	group_id = 133103335
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 335004, monster_id = 25030201, pos = { x = 946.124, y = 356.902, z = 1475.564 }, rot = { x = 0.000, y = 315.147, z = 0.000 }, level = 24, drop_tag = "盗宝团", area_id = 6 },
	{ config_id = 335005, monster_id = 25020201, pos = { x = 943.605, y = 357.107, z = 1477.394 }, rot = { x = 0.000, y = 112.146, z = 0.000 }, level = 24, drop_tag = "盗宝团", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 335001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 943.897, y = 357.444, z = 1474.749 }, area_id = 6 },
	{ config_id = 335002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 730.046, y = 315.997, z = 1512.775 }, area_id = 6 },
	{ config_id = 335003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 734.829, y = 313.495, z = 1753.137 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1335001, name = "ENTER_REGION_335001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335001", action = "action_EVENT_ENTER_REGION_335001" },
	{ config_id = 1335002, name = "ENTER_REGION_335002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335002", action = "action_EVENT_ENTER_REGION_335002" },
	{ config_id = 1335003, name = "ENTER_REGION_335003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335003", action = "action_EVENT_ENTER_REGION_335003" }
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
		regions = { 335001, 335002, 335003 },
		triggers = { "ENTER_REGION_335001", "ENTER_REGION_335002", "ENTER_REGION_335003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 335004, 335005 },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_335001(context, evt)
	if evt.param1 ~= 335001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335001(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103335, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{335004,335005}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {335004,335005}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_335002(context, evt)
	if evt.param1 ~= 335002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335002(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103335, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{335004,335005}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {335004,335005}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_335003(context, evt)
	if evt.param1 ~= 335003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335003(context, evt)
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133103335, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	-- 在0面前， 5 到 10 范围里，30 角度内，刷{335004,335005}的怪物
	
	local ret = ScriptLib.CreateMonsterFaceAvatar(context, { entity_id = 0, monsters = {335004,335005}, ranges = { 5, 10 }, angle = 30 })
	ScriptLib.PrintLog(tostring(ret))
	
	return 0
end
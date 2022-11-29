-- 基础信息
local base_info = {
	group_id = 250015049
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49001, monster_id = 21020201, pos = { x = 168.630, y = 0.500, z = -80.401 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 49002, monster_id = 21020201, pos = { x = 168.546, y = 0.500, z = -72.096 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 49003, monster_id = 22010301, pos = { x = 173.774, y = 0.500, z = -75.989 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 49004, gadget_id = 70211031, pos = { x = 175.384, y = 0.500, z = -78.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗超级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 49005, shape = RegionShape.SPHERE, radius = 20.5, pos = { x = 175.898, y = 0.500, z = -74.607 } }
}

-- 触发器
triggers = {
	{ config_id = 1049005, name = "ENTER_REGION_49005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49005", action = "action_EVENT_ENTER_REGION_49005" },
	{ config_id = 1049006, name = "ANY_MONSTER_DIE_49006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49006", action = "action_EVENT_ANY_MONSTER_DIE_49006" },
	{ config_id = 1049007, name = "ANY_MONSTER_DIE_49007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49007", action = "action_EVENT_ANY_MONSTER_DIE_49007" }
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
		monsters = { 49001, 49002, 49003 },
		gadgets = { },
		regions = { 49005 },
		triggers = { "ENTER_REGION_49005", "ANY_MONSTER_DIE_49006", "ANY_MONSTER_DIE_49007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_49005(context, evt)
	if evt.param1 ~= 49005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49005(context, evt)
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=84,y=-5,z=-269}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110022, pos, 20) then
		return -1
	end
	
	-- 锁住configid为 49001 的怪物的血量信息，直至解锁，期间怪物无敌
	if 0 ~= ScriptLib.LockMonsterHp(context, 49001) then
		return -1
	end
	
	-- 锁住configid为 49002 的怪物的血量信息，直至解锁，期间怪物无敌
	if 0 ~= ScriptLib.LockMonsterHp(context, 49002) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49006(context, evt)
	--判断死亡怪物的configid是否为 49003
	if evt.param1 ~= 49003 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49006(context, evt)
	--解锁configid 为 49001 的怪物的血量
	if 0 ~= ScriptLib.UnlockMonsterHp(context, 49001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_monster_hp_by_configId")
		return -1
	end
	
	--解锁configid 为 49002 的怪物的血量
	if 0 ~= ScriptLib.UnlockMonsterHp(context, 49002) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_monster_hp_by_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_49007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 250015049) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_49007(context, evt)
	-- 创建id为49004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 49004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
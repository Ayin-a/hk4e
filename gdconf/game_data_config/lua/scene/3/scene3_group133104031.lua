-- 基础信息
local base_info = {
	group_id = 133104031
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71, monster_id = 24010101, pos = { x = 249.266, y = 234.427, z = 486.852 }, rot = { x = 0.000, y = 78.278, z = 0.000 }, level = 21, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 62, gadget_id = 70211012, pos = { x = 254.406, y = 234.179, z = 490.322 }, rot = { x = 0.000, y = 175.273, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 31001, shape = RegionShape.SPHERE, radius = 7, pos = { x = 248.306, y = 234.475, z = 487.338 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1000045, name = "ANY_MONSTER_DIE_45", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_45", action = "action_EVENT_ANY_MONSTER_DIE_45" },
	{ config_id = 1031001, name = "ENTER_REGION_31001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31001", action = "action_EVENT_ENTER_REGION_31001" }
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
		monsters = { 71 },
		gadgets = { 62 },
		regions = { 31001 },
		triggers = { "ANY_MONSTER_DIE_45", "ENTER_REGION_31001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_45(context, evt)
	-- 将configid为 62 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 62, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31001(context, evt)
	if evt.param1 ~= 31001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31001(context, evt)
	-- 通知groupid为133104031中,configid为：71的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 71, 133104031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133301179
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 179001, monster_id = 24021101, pos = { x = -905.655, y = -5.537, z = 3142.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5182 }, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 179002, gadget_id = 70360001, pos = { x = -907.906, y = -5.568, z = 3126.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 179003, gadget_id = 70211021, pos = { x = -889.564, y = -5.634, z = 3140.666 }, rot = { x = 0.000, y = 271.342, z = 0.000 }, level = 26, drop_tag = "战斗高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 179005, shape = RegionShape.SPHERE, radius = 35, pos = { x = -904.996, y = -5.625, z = 3142.428 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1179004, name = "ANY_MONSTER_DIE_179004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_179004", action = "action_EVENT_ANY_MONSTER_DIE_179004" },
	{ config_id = 1179005, name = "ENTER_REGION_179005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_179005", action = "action_EVENT_ENTER_REGION_179005", trigger_count = 0 }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 179001 },
		gadgets = { 179002 },
		regions = { 179005 },
		triggers = { "ANY_MONSTER_DIE_179004", "ENTER_REGION_179005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 179003 },
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
function condition_EVENT_ANY_MONSTER_DIE_179004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_179004(context, evt)
	-- 将configid为 179002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 179002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301179, 3)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7310106_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_179005(context, evt)
	if evt.param1 ~= 179005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_179005(context, evt)
	-- 通知groupid为133301179中,configid为：179001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 179001, 133301179) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
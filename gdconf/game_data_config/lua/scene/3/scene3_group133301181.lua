-- 基础信息
local base_info = {
	group_id = 133301181
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 24021101, pos = { x = -905.292, y = -5.537, z = 3142.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5182, 5183, 5184 }, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 状态变换
	{ config_id = 181002, gadget_id = 70360001, pos = { x = -911.658, y = -5.583, z = 3133.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 181004, gadget_id = 70360001, pos = { x = -910.462, y = -5.577, z = 3130.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 181006, shape = RegionShape.SPHERE, radius = 35, pos = { x = -905.998, y = -5.627, z = 3143.181 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1181003, name = "ANY_MONSTER_DIE_181003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_181003", action = "action_EVENT_ANY_MONSTER_DIE_181003", trigger_count = 0 },
	{ config_id = 1181005, name = "GADGET_CREATE_181005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_181005", action = "action_EVENT_GADGET_CREATE_181005" },
	{ config_id = 1181006, name = "ENTER_REGION_181006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_181006", action = "action_EVENT_ENTER_REGION_181006", trigger_count = 0 }
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
		gadgets = { 181002, 181004 },
		regions = { },
		triggers = { "GADGET_CREATE_181005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 181001 },
		gadgets = { 181002 },
		regions = { 181006 },
		triggers = { "ANY_MONSTER_DIE_181003", "ENTER_REGION_181006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_181003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_181003(context, evt)
	-- 将configid为 181002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7310112_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_181005(context, evt)
	if 181004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_181005(context, evt)
	-- 将configid为 181002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_181006(context, evt)
	if evt.param1 ~= 181006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_181006(context, evt)
	-- 通知groupid为133301181中,configid为：181001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 181001, 133301181) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
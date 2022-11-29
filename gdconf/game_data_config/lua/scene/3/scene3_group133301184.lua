-- 基础信息
local base_info = {
	group_id = 133301184
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 184001, monster_id = 24021101, pos = { x = -905.426, y = -5.535, z = 3142.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 184002, gadget_id = 70360001, pos = { x = -913.032, y = -5.545, z = 3132.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 184004, gadget_id = 70360001, pos = { x = -914.598, y = -5.575, z = 3131.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 184006, shape = RegionShape.SPHERE, radius = 35, pos = { x = -906.151, y = -5.626, z = 3143.136 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1184003, name = "ANY_MONSTER_DIE_184003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_184003", action = "action_EVENT_ANY_MONSTER_DIE_184003", trigger_count = 0 },
	{ config_id = 1184005, name = "GADGET_CREATE_184005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_184005", action = "action_EVENT_GADGET_CREATE_184005" },
	{ config_id = 1184006, name = "ENTER_REGION_184006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184006", action = "action_EVENT_ENTER_REGION_184006", trigger_count = 0 }
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
		gadgets = { 184002, 184004 },
		regions = { },
		triggers = { "GADGET_CREATE_184005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 184001 },
		gadgets = { 184002 },
		regions = { 184006 },
		triggers = { "ANY_MONSTER_DIE_184003", "ENTER_REGION_184006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_184003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_184003(context, evt)
	-- 将configid为 184002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "wq7310118_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_184005(context, evt)
	if 184004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_184005(context, evt)
	-- 将configid为 184002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_184006(context, evt)
	if evt.param1 ~= 184006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_184006(context, evt)
	-- 通知groupid为133301184中,configid为：184001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 184001, 133301184) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133008596
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 596001, gadget_id = 70290044, pos = { x = 1041.850, y = 665.119, z = -821.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 596004, gadget_id = 70950044, pos = { x = 1041.850, y = 665.119, z = -821.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 596005, gadget_id = 70310023, pos = { x = 1041.859, y = 694.851, z = -821.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 596003, shape = RegionShape.SPHERE, radius = 2, pos = { x = 1041.486, y = 695.825, z = -821.643 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1596002, name = "GADGET_CREATE_596002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_596002", action = "action_EVENT_GADGET_CREATE_596002", trigger_count = 0 },
	{ config_id = 1596003, name = "ENTER_REGION_596003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_596003", action = "action_EVENT_ENTER_REGION_596003" }
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
	end_suite = 2,
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
		monsters = { },
		gadgets = { 596001, 596004, 596005 },
		regions = { 596003 },
		triggers = { "GADGET_CREATE_596002", "ENTER_REGION_596003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_596002(context, evt)
	if 596001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_596002(context, evt)
	-- 将configid为 596001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 596001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_596003(context, evt)
	if evt.param1 ~= 596003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_596003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300859601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
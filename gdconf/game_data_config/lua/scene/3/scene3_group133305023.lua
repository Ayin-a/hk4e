-- 基础信息
local base_info = {
	group_id = 133305023
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
	{ config_id = 23002, gadget_id = 70330462, pos = { x = -2294.552, y = 267.861, z = 3943.597 }, rot = { x = 50.198, y = 140.826, z = 356.563 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 26 },
	-- 主机进入Region切201
	{ config_id = 23004, gadget_id = 70360001, pos = { x = -2294.552, y = 267.861, z = 3943.597 }, rot = { x = 50.198, y = 140.826, z = 356.563 }, level = 32, persistent = true, area_id = 26 }
}

-- 区域
regions = {
	-- 主机进入Region操作台切201
	{ config_id = 23003, shape = RegionShape.CYLINDER, radius = 15, pos = { x = -2291.918, y = 255.507, z = 3942.932 }, height = 20.000, area_id = 26 }
}

-- 触发器
triggers = {
	-- 操作台切201发Lua通知
	{ config_id = 1023001, name = "GADGET_STATE_CHANGE_23001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23001", action = "action_EVENT_GADGET_STATE_CHANGE_23001", trigger_count = 0 },
	-- 主机进入Region操作台切201
	{ config_id = 1023003, name = "ENTER_REGION_23003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_23003", action = "action_EVENT_ENTER_REGION_23003", trigger_count = 0 },
	-- Region保底切201
	{ config_id = 1023009, name = "GROUP_LOAD_23009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_23009", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1023010, name = "ANY_GADGET_DIE_23010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_23010", action = "action_EVENT_ANY_GADGET_DIE_23010", trigger_count = 0 }
	}
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
		gadgets = { 23002, 23004 },
		regions = { 23003 },
		triggers = { "GADGET_STATE_CHANGE_23001", "ENTER_REGION_23003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 23004 },
		regions = { },
		triggers = { "GROUP_LOAD_23009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23001(context, evt)
	if 23004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7321101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_23003(context, evt)
	if evt.param1 ~= 23003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_23003(context, evt)
	-- 将configid为 23004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_23009(context, evt)
	-- 将configid为 23004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
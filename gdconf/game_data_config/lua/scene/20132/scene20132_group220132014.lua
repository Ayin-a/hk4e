-- 基础信息
local base_info = {
	group_id = 220132014
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
	{ config_id = 14001, gadget_id = 70360001, pos = { x = 449.272, y = 65.248, z = 385.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 14002, shape = RegionShape.CUBIC, size = { x = 10.000, y = 30.000, z = 10.000 }, pos = { x = 449.390, y = 67.648, z = 422.226 } },
	{ config_id = 14003, shape = RegionShape.CUBIC, size = { x = 30.000, y = 25.000, z = 15.000 }, pos = { x = 449.518, y = 75.056, z = 385.645 } }
}

-- 触发器
triggers = {
	{ config_id = 1014002, name = "ENTER_REGION_14002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14002", action = "action_EVENT_ENTER_REGION_14002", trigger_count = 0 },
	{ config_id = 1014003, name = "ENTER_REGION_14003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14003", action = "action_EVENT_ENTER_REGION_14003", trigger_count = 0 }
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
		gadgets = { 14001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 14002, 14003 },
		triggers = { "ENTER_REGION_14002", "ENTER_REGION_14003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_14002(context, evt)
	if evt.param1 ~= 14002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14002(context, evt)
	-- 改变指定group组220132001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220132001, 1003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14003(context, evt)
	if evt.param1 ~= 14003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14003(context, evt)
	-- 改变指定group组220132001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220132001, 1003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end
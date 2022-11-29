-- 基础信息
local base_info = {
	group_id = 133223175
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
	{ config_id = 175001, gadget_id = 70330105, pos = { x = -5792.026, y = 200.106, z = -2625.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 175002, shape = RegionShape.SPHERE, radius = 20, pos = { x = -5792.093, y = 200.139, z = -2626.197 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1175002, name = "ENTER_REGION_175002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_175002", action = "action_EVENT_ENTER_REGION_175002" }
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
		gadgets = { 175001 },
		regions = { 175002 },
		triggers = { "ENTER_REGION_175002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_175002(context, evt)
	if evt.param1 ~= 175002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_175002(context, evt)
	-- 将configid为 175001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
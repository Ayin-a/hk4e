-- 基础信息
local base_info = {
	group_id = 133307064
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
	{ config_id = 64001, gadget_id = 70330278, pos = { x = -1305.473, y = -27.630, z = 5578.445 }, rot = { x = 0.000, y = 105.082, z = 0.000 }, level = 32, persistent = true, area_id = 32 },
	{ config_id = 64002, gadget_id = 70330278, pos = { x = -1311.226, y = -27.681, z = 5558.383 }, rot = { x = 0.000, y = 105.107, z = 0.000 }, level = 32, persistent = true, area_id = 32 }
}

-- 区域
regions = {
	{ config_id = 64003, shape = RegionShape.SPHERE, radius = 13, pos = { x = -1326.131, y = -30.658, z = 5574.333 }, area_id = 32 }
}

-- 触发器
triggers = {
	{ config_id = 1064003, name = "ENTER_REGION_64003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_64003", action = "action_EVENT_ENTER_REGION_64003" }
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
		gadgets = { 64001, 64002 },
		regions = { 64003 },
		triggers = { "ENTER_REGION_64003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_64003(context, evt)
	if evt.param1 ~= 64003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_64003(context, evt)
	-- 将configid为 64001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 64002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
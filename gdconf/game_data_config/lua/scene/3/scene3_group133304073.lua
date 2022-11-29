-- 基础信息
local base_info = {
	group_id = 133304073
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
	{ config_id = 73001, gadget_id = 70360001, pos = { x = -1387.000, y = 277.408, z = 2914.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
	-- 进入区域物件状态改变
	{ config_id = 73002, shape = RegionShape.SPHERE, radius = 80, pos = { x = -1388.081, y = 271.016, z = 2910.676 }, area_id = 21 }
}

-- 触发器
triggers = {
	-- 进入区域物件状态改变
	{ config_id = 1073002, name = "ENTER_REGION_73002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_73002", action = "action_EVENT_ENTER_REGION_73002", trigger_count = 0 }
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
		gadgets = { 73001 },
		regions = { 73002 },
		triggers = { "ENTER_REGION_73002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_73002(context, evt)
	if evt.param1 ~= 73002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_73002(context, evt)
	-- 将configid为 73001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 73001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
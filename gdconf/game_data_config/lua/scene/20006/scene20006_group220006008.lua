-- 基础信息
local base_info = {
	group_id = 220006008
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
	{ config_id = 142, gadget_id = 70350003, pos = { x = 176.306, y = 56.932, z = 328.401 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 143, gadget_id = 70350003, pos = { x = 206.883, y = 57.016, z = 328.452 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 144, gadget_id = 70350002, pos = { x = 191.468, y = 58.424, z = 347.346 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 35, shape = RegionShape.SPHERE, radius = 17.76, pos = { x = 191.646, y = 57.016, z = 328.921 } }
}

-- 触发器
triggers = {
	{ config_id = 1000035, name = "ENTER_REGION_35", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_35", action = "action_EVENT_ENTER_REGION_35", forbid_guest = false }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 142, 143, 144 },
		regions = { 35 },
		triggers = { "ENTER_REGION_35" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_35(context, evt)
	if evt.param1 ~= 35 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_35(context, evt)
	-- 将configid为 144 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
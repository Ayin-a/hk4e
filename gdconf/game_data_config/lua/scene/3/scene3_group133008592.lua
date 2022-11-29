-- 基础信息
local base_info = {
	group_id = 133008592
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
	{ config_id = 592001, gadget_id = 70310025, pos = { x = 1335.082, y = 303.237, z = -944.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 10 }
}

-- 区域
regions = {
	{ config_id = 592002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1336.051, y = 287.364, z = -949.737 }, area_id = 10 }
}

-- 触发器
triggers = {
	{ config_id = 1592002, name = "ENTER_REGION_592002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_592002", action = "action_EVENT_ENTER_REGION_592002" }
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
		gadgets = { 592001 },
		regions = { 592002 },
		triggers = { "ENTER_REGION_592002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_592002(context, evt)
	if evt.param1 ~= 592002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_592002(context, evt)
	-- 将configid为 592001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 592001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
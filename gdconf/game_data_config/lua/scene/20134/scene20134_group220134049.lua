-- 基础信息
local base_info = {
	group_id = 220134049
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
	{ config_id = 49001, gadget_id = 70310233, pos = { x = 618.434, y = 599.123, z = -1477.866 }, rot = { x = 0.000, y = 99.468, z = 0.000 }, level = 1 },
	{ config_id = 49002, gadget_id = 70310374, pos = { x = 624.179, y = 606.580, z = -1481.484 }, rot = { x = 44.959, y = 25.182, z = 223.041 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 49003, shape = RegionShape.SPHERE, radius = 5, pos = { x = 622.521, y = 606.037, z = -1478.128 } }
}

-- 触发器
triggers = {
	{ config_id = 1049003, name = "ENTER_REGION_49003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49003", action = "action_EVENT_ENTER_REGION_49003", trigger_count = 0 }
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
		gadgets = { 49001, 49002 },
		regions = { 49003 },
		triggers = { "ENTER_REGION_49003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_49003(context, evt)
	if evt.param1 ~= 49003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 220134049, 49002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_49003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 220134049, EntityType.GADGET, 49002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end
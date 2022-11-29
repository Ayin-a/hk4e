-- 基础信息
local base_info = {
	group_id = 133107112
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
	{ config_id = 112001, gadget_id = 70211111, pos = { x = -642.122, y = 308.300, z = 591.571 }, rot = { x = 0.000, y = 280.597, z = 0.000 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 },
	{ config_id = 112002, gadget_id = 70330021, pos = { x = -637.968, y = 308.356, z = 588.251 }, rot = { x = 0.000, y = 297.781, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 112003, gadget_id = 70330021, pos = { x = -636.658, y = 308.332, z = 593.671 }, rot = { x = 0.000, y = 187.298, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 112004, gadget_id = 70330021, pos = { x = -640.347, y = 308.300, z = 594.725 }, rot = { x = 0.000, y = 205.600, z = 0.000 }, level = 24, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 112005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -640.698, y = 308.508, z = 591.643 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1112005, name = "ENTER_REGION_112005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_112005", action = "action_EVENT_ENTER_REGION_112005", trigger_count = 0 }
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
		gadgets = { 112001, 112002, 112003, 112004 },
		regions = { 112005 },
		triggers = { "ENTER_REGION_112005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_112005(context, evt)
	if evt.param1 ~= 112005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_112005(context, evt)
	-- 将configid为 112001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 112001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
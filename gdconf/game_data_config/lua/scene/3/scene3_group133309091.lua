-- 基础信息
local base_info = {
	group_id = 133309091
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
	{ config_id = 91001, gadget_id = 70330332, pos = { x = -2531.899, y = 197.012, z = 6040.214 }, rot = { x = 358.757, y = 348.157, z = 358.432 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 91002, gadget_id = 70330332, pos = { x = -2512.937, y = 197.627, z = 6060.917 }, rot = { x = 2.658, y = 0.821, z = 1.826 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 91003, gadget_id = 70330332, pos = { x = -2501.434, y = 193.576, z = 6030.312 }, rot = { x = 349.700, y = 307.066, z = 7.671 }, level = 32, state = GadgetState.GearStop, persistent = true, area_id = 27 },
	{ config_id = 91004, gadget_id = 70211111, pos = { x = -2512.038, y = 199.688, z = 6049.731 }, rot = { x = 0.000, y = 183.000, z = 0.000 }, level = 26, drop_tag = "解谜中级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
	-- 成就
	{ config_id = 91006, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2517.683, y = 198.088, z = 6044.472 }, area_id = 27 }
}

-- 触发器
triggers = {
	{ config_id = 1091005, name = "GADGET_STATE_CHANGE_91005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91005", action = "action_EVENT_GADGET_STATE_CHANGE_91005" },
	-- 成就
	{ config_id = 1091006, name = "ENTER_REGION_91006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_91006", action = "action_EVENT_ENTER_REGION_91006", trigger_count = 0 },
	{ config_id = 1091007, name = "GROUP_LOAD_91007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_91007", action = "action_EVENT_GROUP_LOAD_91007", trigger_count = 0 }
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
		gadgets = { 91001, 91002, 91003 },
		regions = { 91006 },
		triggers = { "GADGET_STATE_CHANGE_91005", "ENTER_REGION_91006", "GROUP_LOAD_91007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309091, 91001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309091, 91002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309091, 91003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91005(context, evt)
	-- 创建id为91004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_91006(context, evt)
	if evt.param1 ~= 91006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_91006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6107, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_91007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309091, 91001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309091, 91002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133309091, 91003) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91007(context, evt)
	-- 创建id为91004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 91004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 111102052
}

-- Trigger变量
local defs = {
	pointarray_move = 110200021
}

-- DEFS_MISCS
function TeleportAction(context,pointarray_id,routelist)
    ScriptLib.MoveAvatarByPointArrayWithTemplate(context,context.uid,pointarray_id, routelist, 300 , {speed=10})
end

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
	{ config_id = 52001, gadget_id = 70290481, pos = { x = 1203.853, y = 291.041, z = -1447.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 52002, gadget_id = 70290482, pos = { x = 1196.587, y = 295.631, z = -1462.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 52003, gadget_id = 70290483, pos = { x = 1184.113, y = 296.380, z = -1463.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 52004, gadget_id = 70290486, pos = { x = 1193.395, y = 294.376, z = -1448.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 52005, gadget_id = 70290487, pos = { x = 1183.068, y = 296.111, z = -1447.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 52007, gadget_id = 70330234, pos = { x = 1174.500, y = 297.608, z = -1442.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 正常使用
	{ config_id = 52008, gadget_id = 70310214, pos = { x = 1184.468, y = 297.903, z = -1427.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- 草元素方碑务必不在任何Suite
	{ config_id = 52010, gadget_id = 70900050, pos = { x = 1184.468, y = 297.903, z = -1427.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	{ config_id = 52006, shape = RegionShape.SPHERE, radius = 1, pos = { x = 1193.395, y = 294.376, z = -1448.727 } }
}

-- 触发器
triggers = {
	{ config_id = 1052006, name = "ENTER_REGION_52006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_52006", action = "action_EVENT_ENTER_REGION_52006", trigger_count = 0 },
	-- 监听破碎草元素方碑状态
	{ config_id = 1052009, name = "GADGET_STATE_CHANGE_52009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52009", action = "action_EVENT_GADGET_STATE_CHANGE_52009", trigger_count = 0 },
	-- 加载时，会因为出现对应草元素方碑不在的情况，要重新创建。
	{ config_id = 1052011, name = "GROUP_LOAD_52011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_52011", action = "action_EVENT_GROUP_LOAD_52011", trigger_count = 0 }
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
		-- description = --goto 1197 292 -1447,
		monsters = { },
		gadgets = { 52001, 52002, 52003, 52004, 52005, 52007, 52008 },
		regions = { 52006 },
		triggers = { "ENTER_REGION_52006", "GADGET_STATE_CHANGE_52009", "GROUP_LOAD_52011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_52006(context, evt)
	if evt.param1 ~= 52006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_52006(context, evt)
	TeleportAction(context,defs.pointarray_move,{1,2,3})
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52009(context, evt)
	if 52008 ~= evt.param2 or GadgetState.GatherDrop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52009(context, evt)
	-- 创建id为52010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 52010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_52011(context, evt)
	if GadgetState.GatherDrop ~= ScriptLib.GetGadgetStateByConfigId(context, 111102052, 52010) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_52011(context, evt)
	-- 创建id为52010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 52010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
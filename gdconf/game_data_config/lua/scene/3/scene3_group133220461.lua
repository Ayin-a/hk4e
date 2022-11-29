-- 基础信息
local base_info = {
	group_id = 133220461
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
	{ config_id = 461001, gadget_id = 70211001, pos = { x = -2489.755, y = 393.471, z = -4429.338 }, rot = { x = 351.880, y = 138.416, z = 344.039 }, level = 26, drop_tag = "战斗低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 461002, gadget_id = 70360276, pos = { x = -2489.761, y = 393.570, z = -4429.353 }, rot = { x = 347.958, y = 123.246, z = 346.711 }, level = 27, persistent = true, area_id = 11 },
	{ config_id = 461004, gadget_id = 70210101, pos = { x = -2489.757, y = 393.413, z = -4429.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 461003, shape = RegionShape.SPHERE, radius = 3, pos = { x = -2489.147, y = 393.904, z = -4431.291 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1461003, name = "ENTER_REGION_461003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_461003", action = "action_EVENT_ENTER_REGION_461003" },
	{ config_id = 1461005, name = "GADGET_STATE_CHANGE_461005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_461005", action = "action_EVENT_GADGET_STATE_CHANGE_461005" }
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
	end_suite = 2,
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
		gadgets = { 461001, 461002 },
		regions = { 461003 },
		triggers = { "ENTER_REGION_461003", "GADGET_STATE_CHANGE_461005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_461003(context, evt)
	if evt.param1 ~= 461003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_461003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220461, EntityType.GADGET, 461001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 461002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为461004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 461004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_461005(context, evt)
	if 461001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_461005(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220461, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end
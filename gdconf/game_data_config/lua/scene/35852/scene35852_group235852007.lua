-- 基础信息
local base_info = {
	group_id = 235852007
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
}

-- 区域
regions = {
	{ config_id = 7001, shape = RegionShape.CUBIC, size = { x = 100.000, y = 20.000, z = 100.000 }, pos = { x = 284.495, y = 596.530, z = -1676.417 } },
	{ config_id = 7003, shape = RegionShape.CUBIC, size = { x = 100.000, y = 20.000, z = 100.000 }, pos = { x = 195.854, y = 603.811, z = -1802.165 } }
}

-- 触发器
triggers = {
	{ config_id = 1007001, name = "ENTER_REGION_7001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7001", action = "action_EVENT_ENTER_REGION_7001", trigger_count = 0 },
	{ config_id = 1007003, name = "ENTER_REGION_7003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_7003", action = "action_EVENT_ENTER_REGION_7003", trigger_count = 0 }
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
		gadgets = { },
		regions = { 7001, 7003 },
		triggers = { "ENTER_REGION_7001", "ENTER_REGION_7003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_7001(context, evt)
	if evt.param1 ~= 7001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7001(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=307.8, y=625.1, z=-1671}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=-120, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_7003(context, evt)
	if evt.param1 ~= 7003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_7003(context, evt)
	-- 将使用操作台的玩家传送至目标点
		if evt.uid ~= nil then
	    local t_pos = {x=197, y=645, z=-1810}
	    if 0 ~= ScriptLib.TransPlayerToPos(context, {uid_list = {evt.uid}, pos = t_pos, rot = {x=0, y=-120, z=0}}) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	      return -1
	    end
	  else
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : trans_player_byOption")
	    return -1
	  end
	
	return 0
end
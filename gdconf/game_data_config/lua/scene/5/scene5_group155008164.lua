-- 基础信息
local base_info = {
	group_id = 155008164
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
	{ config_id = 164001, gadget_id = 70290279, pos = { x = -536.796, y = 238.589, z = 482.579 }, rot = { x = 0.000, y = 359.460, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 200 }
}

-- 区域
regions = {
	{ config_id = 164004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -536.845, y = 233.342, z = 476.757 }, area_id = 200 }
}

-- 触发器
triggers = {
	{ config_id = 1164004, name = "ENTER_REGION_164004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_164004", action = "action_EVENT_ENTER_REGION_164004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinished", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 164002, gadget_id = 70360170, pos = { x = -534.253, y = 234.710, z = 483.499 }, rot = { x = 270.000, y = 46.733, z = 0.000 }, level = 36, area_id = 200 }
	},
	triggers = {
		{ config_id = 1164003, name = "GROUP_LOAD_164003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_164003", action = "action_EVENT_GROUP_LOAD_164003", trigger_count = 0 }
	}
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
		gadgets = { 164001 },
		regions = { 164004 },
		triggers = { "ENTER_REGION_164004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_164004(context, evt)
	if evt.param1 ~= 164004 then return false end
	
	-- 判断变量"isFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_164004(context, evt)
	-- 将本组内变量名为 "isFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 164001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133210107
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
	{ config_id = 107001, gadget_id = 70350004, pos = { x = -3545.842, y = 204.399, z = -1170.595 }, rot = { x = 0.000, y = 312.156, z = 270.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 107002, gadget_id = 70350004, pos = { x = -3545.842, y = 198.800, z = -1170.595 }, rot = { x = 0.000, y = 312.156, z = 270.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 107003, gadget_id = 70360170, pos = { x = -3540.779, y = 200.124, z = -1165.926 }, rot = { x = 270.000, y = 312.156, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 107004, shape = RegionShape.SPHERE, radius = 6, pos = { x = -3538.689, y = 197.738, z = -1172.748 }, area_id = 17 },
	{ config_id = 107006, shape = RegionShape.SPHERE, radius = 6, pos = { x = -3536.557, y = 197.738, z = -1169.829 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1107004, name = "ENTER_REGION_107004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_107004", action = "action_EVENT_ENTER_REGION_107004", trigger_count = 0 },
	{ config_id = 1107005, name = "SELECT_OPTION_107005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_107005", action = "action_EVENT_SELECT_OPTION_107005", trigger_count = 0 },
	{ config_id = 1107006, name = "LEAVE_REGION_107006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_107006", action = "action_EVENT_LEAVE_REGION_107006", trigger_count = 0 }
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
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 107001, state = 0 },
			{ config_id = 107002, state = 0 },
			{ config_id = 107003, state = 0 }
		},
		monsters = {
		},
		regions = { 107004, 107006 },
		triggers = { "ENTER_REGION_107004", "SELECT_OPTION_107005", "LEAVE_REGION_107006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 107001, state = 201 },
			{ config_id = 107002, state = 201 },
			{ config_id = 107003, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_107004(context, evt)
	if evt.param1 ~= 107004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_107004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210107, 107003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_107005(context, evt)
	-- 判断是gadgetid 107003 option_id 7
	if 107003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_107005(context, evt)
	-- 删除指定group： 133210107 ；指定config：107003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210107, 107003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210107, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_107006(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_107006(context, evt)
	-- 删除指定group： 133210107 ；指定config：107003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210107, 107003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end
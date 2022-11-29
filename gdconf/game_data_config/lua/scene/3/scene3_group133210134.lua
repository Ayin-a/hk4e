-- 基础信息
local base_info = {
	group_id = 133210134
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
	{ config_id = 134001, gadget_id = 70350004, pos = { x = -3534.108, y = 183.010, z = -1173.500 }, rot = { x = 0.000, y = 312.156, z = 90.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 134002, gadget_id = 70350004, pos = { x = -3534.108, y = 177.411, z = -1173.500 }, rot = { x = 0.000, y = 312.156, z = 90.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 134003, gadget_id = 70360170, pos = { x = -3533.847, y = 178.735, z = -1172.241 }, rot = { x = 270.000, y = 132.156, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 134004, shape = RegionShape.SPHERE, radius = 4, pos = { x = -3536.583, y = 176.349, z = -1169.824 }, area_id = 17 },
	{ config_id = 134006, shape = RegionShape.SPHERE, radius = 4, pos = { x = -3536.583, y = 176.349, z = -1169.824 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1134004, name = "ENTER_REGION_134004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_134004", action = "action_EVENT_ENTER_REGION_134004", trigger_count = 0 },
	{ config_id = 1134005, name = "SELECT_OPTION_134005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_134005", action = "action_EVENT_SELECT_OPTION_134005", trigger_count = 0 },
	{ config_id = 1134006, name = "LEAVE_REGION_134006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_134006", action = "action_EVENT_LEAVE_REGION_134006", trigger_count = 0 }
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
			{ config_id = 134001, state = 0 },
			{ config_id = 134002, state = 0 },
			{ config_id = 134003, state = 0 }
		},
		monsters = {
		},
		regions = { 134004, 134006 },
		triggers = { "ENTER_REGION_134004", "SELECT_OPTION_134005", "LEAVE_REGION_134006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 134001, state = 201 },
			{ config_id = 134002, state = 201 },
			{ config_id = 134003, state = 201 }
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
function condition_EVENT_ENTER_REGION_134004(context, evt)
	if evt.param1 ~= 134004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_134004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210134, 134003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_134005(context, evt)
	-- 判断是gadgetid 134003 option_id 7
	if 134003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_134005(context, evt)
	-- 删除指定group： 133210134 ；指定config：134003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210134, 134003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210134, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_134006(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_134006(context, evt)
	-- 删除指定group： 133210134 ；指定config：134003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210134, 134003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end
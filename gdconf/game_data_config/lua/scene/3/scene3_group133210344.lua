-- 基础信息
local base_info = {
	group_id = 133210344
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
	{ config_id = 344001, gadget_id = 70350004, pos = { x = -3532.123, y = 204.991, z = -1169.949 }, rot = { x = 0.000, y = 222.430, z = 270.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 344002, gadget_id = 70350004, pos = { x = -3532.123, y = 199.393, z = -1169.949 }, rot = { x = 0.000, y = 222.430, z = 270.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 344003, gadget_id = 70360170, pos = { x = -3531.266, y = 200.238, z = -1171.569 }, rot = { x = 270.000, y = 42.430, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 344004, shape = RegionShape.SPHERE, radius = 6, pos = { x = -3537.558, y = 197.852, z = -1173.414 }, area_id = 17 },
	{ config_id = 344006, shape = RegionShape.SPHERE, radius = 6, pos = { x = -3535.190, y = 197.852, z = -1175.774 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1344004, name = "ENTER_REGION_344004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_344004", action = "action_EVENT_ENTER_REGION_344004", trigger_count = 0 },
	{ config_id = 1344005, name = "SELECT_OPTION_344005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_344005", action = "action_EVENT_SELECT_OPTION_344005", trigger_count = 0 },
	{ config_id = 1344006, name = "LEAVE_REGION_344006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_344006", action = "action_EVENT_LEAVE_REGION_344006", trigger_count = 0 }
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
			{ config_id = 344001, state = 0 },
			{ config_id = 344002, state = 0 },
			{ config_id = 344003, state = 0 }
		},
		monsters = {
		},
		regions = { 344004, 344006 },
		triggers = { "ENTER_REGION_344004", "SELECT_OPTION_344005", "LEAVE_REGION_344006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 344001, state = 201 },
			{ config_id = 344002, state = 201 },
			{ config_id = 344003, state = 201 }
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
function condition_EVENT_ENTER_REGION_344004(context, evt)
	if evt.param1 ~= 344004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_344004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210344, 344003, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_344005(context, evt)
	-- 判断是gadgetid 344003 option_id 7
	if 344003 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_344005(context, evt)
	-- 删除指定group： 133210344 ；指定config：344003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210344, 344003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210344, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_344006(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_344006(context, evt)
	-- 删除指定group： 133210344 ；指定config：344003；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210344, 344003, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end
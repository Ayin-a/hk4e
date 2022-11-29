-- 基础信息
local base_info = {
	group_id = 133304040
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
	{ config_id = 40001, gadget_id = 70350432, pos = { x = -1574.757, y = 269.465, z = 2322.990 }, rot = { x = 23.130, y = 65.854, z = 4.222 }, level = 30, state = GadgetState.Action01, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 21 },
	-- 通知任务
	{ config_id = 40004, gadget_id = 70360001, pos = { x = -1576.946, y = 272.207, z = 2321.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 40011, gadget_id = 70350432, pos = { x = -1574.757, y = 269.465, z = 2322.990 }, rot = { x = 23.130, y = 65.854, z = 4.222 }, level = 19, state = GadgetState.GearStart, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 40006, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1574.757, y = 269.465, z = 2322.990 }, area_id = 21 },
	{ config_id = 40012, shape = RegionShape.SPHERE, radius = 8, pos = { x = -1574.757, y = 269.465, z = 2322.990 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1040005, name = "QUEST_START_40005", event = EventType.EVENT_QUEST_START, source = "7302604", condition = "", action = "action_EVENT_QUEST_START_40005", trigger_count = 0 },
	{ config_id = 1040006, name = "LEAVE_REGION_40006", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_40006", action = "action_EVENT_LEAVE_REGION_40006", trigger_count = 0 },
	-- 任务过程中触发挂交互
	{ config_id = 1040007, name = "GADGET_CREATE_40007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_40007", action = "action_EVENT_GADGET_CREATE_40007", trigger_count = 0 },
	-- 任务过程中触发被交互
	{ config_id = 1040008, name = "SELECT_OPTION_40008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40008", action = "action_EVENT_SELECT_OPTION_40008", trigger_count = 0 },
	-- wait进cs后再切门201
	{ config_id = 1040009, name = "TIME_AXIS_PASS_40009", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_40009", action = "action_EVENT_TIME_AXIS_PASS_40009", trigger_count = 0 },
	{ config_id = 1040012, name = "ENTER_REGION_40012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_40012", action = "action_EVENT_ENTER_REGION_40012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1040003, name = "SELECT_OPTION_40003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40003", action = "action_EVENT_SELECT_OPTION_40003", trigger_count = 0 }
	}
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
	end_suite = 3,
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
			{ config_id = 40001, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_40005" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 40001, state = 901 },
			{ config_id = 40004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_40007", "SELECT_OPTION_40008", "TIME_AXIS_PASS_40009" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 40004, state = 201 },
			{ config_id = 40011, state = 0 }
		},
		monsters = {
		},
		regions = { 40006, 40012 },
		triggers = { "LEAVE_REGION_40006", "ENTER_REGION_40012" },
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

-- 触发操作
function action_EVENT_QUEST_START_40005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304040, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_40006(context, evt)
	-- 判断是区域40006
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 40006 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_40006(context, evt)
	-- 将configid为 40011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_40007(context, evt)
	if 40004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_40007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304040, 40004, {783}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_40008(context, evt)
	local isMP = ScriptLib.CheckIsInMpMode(context)
	if isMP == true then
		return false
	end
	
	-- 判断是gadgetid 40004 option_id 783
	if 40004 ~= evt.param1 then
		return false	
	end
	
	if 783 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_40008(context, evt)
	-- 创建标识为"wait"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wait", {2}, false)
	
	
	-- 将configid为 40004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133304040 ；指定config：40004；物件身上指定option：783；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133304040, 40004, 783) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_40009(context, evt)
	if "wait" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_40009(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133304040, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_40012(context, evt)
	if evt.param1 ~= 40012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_40012(context, evt)
	-- 将configid为 40011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 40011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
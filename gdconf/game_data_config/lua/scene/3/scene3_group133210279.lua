-- 基础信息
local base_info = {
	group_id = 133210279
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 279001, monster_id = 28020801, pos = { x = -3769.611, y = 121.856, z = -808.227 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 279002, gadget_id = 70360277, pos = { x = -3765.978, y = 123.320, z = -799.638 }, rot = { x = 0.000, y = 208.444, z = 0.000 }, level = 30, mark_flag = 101, area_id = 17 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 279003, gadget_id = 70360273, pos = { x = -3760.967, y = 124.797, z = -794.754 }, rot = { x = 12.562, y = 211.314, z = 356.334 }, level = 30, mark_flag = 1, area_id = 17 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 279004, gadget_id = 70360273, pos = { x = -3764.072, y = 126.447, z = -785.217 }, rot = { x = 0.000, y = 170.631, z = 0.000 }, level = 30, mark_flag = 2, area_id = 17 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 279005, gadget_id = 70360274, pos = { x = -3780.974, y = 134.934, z = -760.302 }, rot = { x = 7.842, y = 143.519, z = 354.597 }, level = 30, mark_flag = 5, area_id = 17 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 279006, gadget_id = 70360167, pos = { x = -3780.970, y = 134.500, z = -760.304 }, rot = { x = 0.000, y = 130.328, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 17 },
	{ config_id = 279007, gadget_id = 70210101, pos = { x = -3780.975, y = 134.615, z = -760.267 }, rot = { x = 356.812, y = 287.662, z = 8.968 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 17 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 279008, gadget_id = 70360276, pos = { x = -3780.971, y = 134.605, z = -760.304 }, rot = { x = 350.503, y = 354.793, z = 0.571 }, level = 30, area_id = 17 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 279011, gadget_id = 70360276, pos = { x = -3780.974, y = 135.084, z = -760.302 }, rot = { x = 350.487, y = 358.661, z = 359.932 }, level = 30, area_id = 17 },
	{ config_id = 279012, gadget_id = 70950068, pos = { x = -3769.611, y = 121.856, z = -808.227 }, rot = { x = 3.730, y = 232.823, z = 2.814 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 279013, gadget_id = 70360276, pos = { x = -3769.611, y = 121.856, z = -808.227 }, rot = { x = 350.487, y = 358.661, z = 359.932 }, level = 30, area_id = 17 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 279018, gadget_id = 70360273, pos = { x = -3758.659, y = 127.570, z = -775.922 }, rot = { x = 0.000, y = 201.387, z = 0.000 }, level = 30, mark_flag = 3, area_id = 17 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 279019, gadget_id = 70360273, pos = { x = -3768.659, y = 130.021, z = -770.598 }, rot = { x = 0.000, y = 156.771, z = 0.000 }, level = 30, mark_flag = 4, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 279017, shape = RegionShape.SPHERE, radius = 15, pos = { x = -3768.730, y = 121.914, z = -807.882 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1279009, name = "ANY_MONSTER_DIE_279009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_279009", action = "action_EVENT_ANY_MONSTER_DIE_279009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1279010, name = "GADGET_STATE_CHANGE_279010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_279010", action = "action_EVENT_GADGET_STATE_CHANGE_279010" },
	-- 尊像加载，且是关闭时
	{ config_id = 1279014, name = "GADGET_CREATE_279014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_279014", action = "action_EVENT_GADGET_CREATE_279014", trigger_count = 0 },
	-- 点击激活时，改状态
	{ config_id = 1279015, name = "SELECT_OPTION_279015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_279015", action = "action_EVENT_SELECT_OPTION_279015", trigger_count = 0 },
	{ config_id = 1279016, name = "GADGET_STATE_CHANGE_279016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_279016", action = "action_EVENT_GADGET_STATE_CHANGE_279016" },
	{ config_id = 1279017, name = "ENTER_REGION_279017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_279017" },
	{ config_id = 1279020, name = "GROUP_LOAD_279020", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_279020", trigger_count = 0 }
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
	suite = 2,
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
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_279020" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 279002, state = 0 },
			{ config_id = 279003, state = 0 },
			{ config_id = 279004, state = 0 },
			{ config_id = 279005, state = 0 },
			{ config_id = 279011, state = 0 },
			{ config_id = 279018, state = 0 },
			{ config_id = 279019, state = 0 }
		},
		monsters = {
			{ config_id = 279001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_279009" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 279006, state = 202 },
			{ config_id = 279008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_279014", "SELECT_OPTION_279015" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 279007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_279016" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
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
function condition_EVENT_ANY_MONSTER_DIE_279009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_279009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133210279, 3, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210279, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_279010(context, evt)
	if 279006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_279010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210279, 4)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210279, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_279014(context, evt)
	if 279006 ~= evt.param1 or GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_279014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210279, 279006, {61}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_279015(context, evt)
	-- 判断是gadgetid 279006 option_id 61
	if 279006 ~= evt.param1 then
		return false	
	end
	
	if 61 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_279015(context, evt)
	-- 删除指定group： 133210279 ；指定config：279006；物件身上指定option：61；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210279, 279006, 61) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210279, 4)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210279, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_279016(context, evt)
	if 279007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_279016(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210279, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_279017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 279013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210279, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_279020(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210279, 2)
	
	return 0
end
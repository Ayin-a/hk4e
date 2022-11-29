-- 基础信息
local base_info = {
	group_id = 133210046
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 46001, monster_id = 28020801, pos = { x = -3710.097, y = 200.317, z = -1042.554 }, rot = { x = 0.000, y = 333.062, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, pose_id = 2, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 46002, gadget_id = 70360277, pos = { x = -3712.089, y = 200.294, z = -1045.867 }, rot = { x = 0.000, y = 91.098, z = 0.000 }, level = 30, mark_flag = 101, area_id = 17 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 46003, gadget_id = 70360273, pos = { x = -3717.170, y = 200.271, z = -1054.133 }, rot = { x = 0.000, y = 30.711, z = 0.000 }, level = 30, mark_flag = 1, area_id = 17 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 46004, gadget_id = 70360273, pos = { x = -3717.892, y = 199.989, z = -1064.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 17 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 46005, gadget_id = 70360274, pos = { x = -3680.760, y = 200.270, z = -1076.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 6, area_id = 17 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 46006, gadget_id = 70290158, pos = { x = -3676.278, y = 200.342, z = -1075.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 46007, gadget_id = 70210101, pos = { x = -3676.272, y = 200.641, z = -1076.403 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 17 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 46008, gadget_id = 70360276, pos = { x = -3676.278, y = 200.374, z = -1075.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 46011, gadget_id = 70360273, pos = { x = -3709.268, y = 202.609, z = -1066.484 }, rot = { x = 0.000, y = 292.175, z = 0.000 }, level = 30, mark_flag = 3, area_id = 17 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 46012, gadget_id = 70360273, pos = { x = -3691.468, y = 200.294, z = -1058.184 }, rot = { x = 0.000, y = 245.910, z = 0.000 }, level = 30, mark_flag = 4, area_id = 17 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 46013, gadget_id = 70360273, pos = { x = -3683.410, y = 199.584, z = -1066.720 }, rot = { x = 0.000, y = 313.539, z = 0.000 }, level = 30, mark_flag = 5, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1046009, name = "ANY_MONSTER_DIE_46009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_46009", action = "action_EVENT_ANY_MONSTER_DIE_46009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1046010, name = "GADGET_STATE_CHANGE_46010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46010", action = "action_EVENT_GADGET_STATE_CHANGE_46010" },
	{ config_id = 1046014, name = "GADGET_STATE_CHANGE_46014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_46014", action = "action_EVENT_GADGET_STATE_CHANGE_46014" }
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
			{ config_id = 46002, state = 0 },
			{ config_id = 46003, state = 0 },
			{ config_id = 46004, state = 0 },
			{ config_id = 46005, state = 0 },
			{ config_id = 46011, state = 0 },
			{ config_id = 46012, state = 0 },
			{ config_id = 46013, state = 0 }
		},
		monsters = {
			{ config_id = 46001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_46009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 46006, state = 0 },
			{ config_id = 46008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_46010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 46007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_46014" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
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
function condition_EVENT_ANY_MONSTER_DIE_46009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_46009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133210046, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210046, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46010(context, evt)
	if 46006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 46008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 46006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210046, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210046, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_46014(context, evt)
	if 46007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_46014(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210046, 4)
	
	return 0
end
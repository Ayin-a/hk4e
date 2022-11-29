-- 基础信息
local base_info = {
	group_id = 133213529
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529001, monster_id = 28020801, pos = { x = -3008.949, y = 201.458, z = -3244.222 }, rot = { x = 1.667, y = 120.769, z = 353.727 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 529002, gadget_id = 70360277, pos = { x = -3004.872, y = 201.415, z = -3244.704 }, rot = { x = 354.644, y = 0.000, z = 0.000 }, level = 30, mark_flag = 101, area_id = 12 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 529003, gadget_id = 70360273, pos = { x = -2989.141, y = 201.387, z = -3243.133 }, rot = { x = 359.108, y = 0.206, z = 359.102 }, level = 30, mark_flag = 1, area_id = 12 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 529004, gadget_id = 70360273, pos = { x = -2991.752, y = 202.145, z = -3230.901 }, rot = { x = 358.326, y = 0.496, z = 346.800 }, level = 30, mark_flag = 2, area_id = 12 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 529005, gadget_id = 70360274, pos = { x = -2967.260, y = 201.102, z = -3216.980 }, rot = { x = 273.004, y = 201.100, z = 22.444 }, level = 30, mark_flag = 4, area_id = 12 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 529006, gadget_id = 70220051, pos = { x = -2967.260, y = 201.102, z = -3216.980 }, rot = { x = 1.622, y = 262.953, z = 58.242 }, level = 30, area_id = 12 },
	{ config_id = 529007, gadget_id = 70210101, pos = { x = -2967.260, y = 201.102, z = -3216.980 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 12 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 529008, gadget_id = 70360276, pos = { x = -2967.260, y = 201.102, z = -3216.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 12 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 529011, gadget_id = 70360273, pos = { x = -2973.454, y = 200.655, z = -3229.719 }, rot = { x = 356.424, y = 0.717, z = 359.955 }, level = 27, mark_flag = 3, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1529009, name = "ANY_MONSTER_DIE_529009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_529009", action = "action_EVENT_ANY_MONSTER_DIE_529009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1529010, name = "ANY_GADGET_DIE_529010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_529010", action = "action_EVENT_ANY_GADGET_DIE_529010" },
	{ config_id = 1529012, name = "GADGET_STATE_CHANGE_529012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_529012", action = "action_EVENT_GADGET_STATE_CHANGE_529012" }
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
			{ config_id = 529002, state = 0 },
			{ config_id = 529003, state = 0 },
			{ config_id = 529004, state = 0 },
			{ config_id = 529005, state = 0 },
			{ config_id = 529011, state = 0 }
		},
		monsters = {
			{ config_id = 529001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_529009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 529006, state = 0 },
			{ config_id = 529008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_529010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 529007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_529012" },
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
function condition_EVENT_ANY_MONSTER_DIE_529009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_529009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133213529, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213529, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_529010(context, evt)
	if 529006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_529010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 529008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 529006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213529, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133213529, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_529012(context, evt)
	if 529007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_529012(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213529, 4)
	
	return 0
end
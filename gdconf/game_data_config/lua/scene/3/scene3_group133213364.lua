-- 基础信息
local base_info = {
	group_id = 133213364
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 364001, monster_id = 28020801, pos = { x = -3684.356, y = 221.034, z = -2969.020 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 364002, gadget_id = 70360277, pos = { x = -3692.397, y = 222.893, z = -2969.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 101, area_id = 12 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 364003, gadget_id = 70360273, pos = { x = -3698.321, y = 225.919, z = -2975.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 12 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 364004, gadget_id = 70360273, pos = { x = -3703.247, y = 224.993, z = -2964.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 12 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 364005, gadget_id = 70360274, pos = { x = -3712.796, y = 226.179, z = -2958.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 12 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 364006, gadget_id = 70220008, pos = { x = -3712.507, y = 227.804, z = -2958.711 }, rot = { x = 0.000, y = 0.000, z = 169.920 }, level = 30, area_id = 12 },
	{ config_id = 364007, gadget_id = 70210101, pos = { x = -3712.600, y = 226.301, z = -2958.468 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 12 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 364008, gadget_id = 70360276, pos = { x = -3712.791, y = 226.427, z = -2958.728 }, rot = { x = 1.505, y = 8.500, z = 350.032 }, level = 30, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1364009, name = "ANY_MONSTER_DIE_364009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_364009", action = "action_EVENT_ANY_MONSTER_DIE_364009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1364010, name = "ANY_GADGET_DIE_364010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_364010", action = "action_EVENT_ANY_GADGET_DIE_364010" },
	{ config_id = 1364011, name = "GADGET_STATE_CHANGE_364011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_364011", action = "action_EVENT_GADGET_STATE_CHANGE_364011" }
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
			{ config_id = 364002, state = 0 },
			{ config_id = 364003, state = 0 },
			{ config_id = 364004, state = 0 },
			{ config_id = 364005, state = 0 }
		},
		monsters = {
			{ config_id = 364001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_364009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 364006, state = 0 },
			{ config_id = 364008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_364010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 364007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_364011" },
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
function condition_EVENT_ANY_MONSTER_DIE_364009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_364009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133213364, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213364, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_364010(context, evt)
	if 364006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_364010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 364008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 364006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213364, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133213364, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_364011(context, evt)
	if 364007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_364011(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213364, 4)
	
	return 0
end
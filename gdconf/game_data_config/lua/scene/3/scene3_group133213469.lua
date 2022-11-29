-- 基础信息
local base_info = {
	group_id = 133213469
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 469001, monster_id = 28020801, pos = { x = -3610.241, y = 251.497, z = -3273.621 }, rot = { x = 0.000, y = 189.510, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 469002, gadget_id = 70360277, pos = { x = -3616.367, y = 254.005, z = -3279.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 101, area_id = 12 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 469003, gadget_id = 70360273, pos = { x = -3624.870, y = 258.061, z = -3276.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 12 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 469004, gadget_id = 70360273, pos = { x = -3634.862, y = 262.408, z = -3282.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 12 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 469005, gadget_id = 70360274, pos = { x = -3640.267, y = 263.361, z = -3279.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 12 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 469006, gadget_id = 70220035, pos = { x = -3641.532, y = 263.456, z = -3276.783 }, rot = { x = 7.868, y = 134.395, z = 7.635 }, level = 30, area_id = 12 },
	{ config_id = 469007, gadget_id = 70210101, pos = { x = -3641.210, y = 263.883, z = -3276.793 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 12 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 469008, gadget_id = 70360276, pos = { x = -3641.532, y = 263.456, z = -3276.783 }, rot = { x = 0.000, y = 58.936, z = 0.000 }, level = 30, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1469009, name = "ANY_MONSTER_DIE_469009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_469009", action = "action_EVENT_ANY_MONSTER_DIE_469009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1469010, name = "ANY_GADGET_DIE_469010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_469010", action = "action_EVENT_ANY_GADGET_DIE_469010" },
	{ config_id = 1469011, name = "GADGET_STATE_CHANGE_469011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_469011", action = "action_EVENT_GADGET_STATE_CHANGE_469011" }
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
			{ config_id = 469002, state = 0 },
			{ config_id = 469003, state = 0 },
			{ config_id = 469004, state = 0 },
			{ config_id = 469005, state = 0 }
		},
		monsters = {
			{ config_id = 469001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_469009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 469006, state = 0 },
			{ config_id = 469008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_469010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 469007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_469011" },
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
function condition_EVENT_ANY_MONSTER_DIE_469009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_469009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133213469, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213469, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_469010(context, evt)
	if 469006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_469010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 469008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 469006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213469, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133213469, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_469011(context, evt)
	if 469007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_469011(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133213469, 4)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133222010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 28020801, pos = { x = -4228.091, y = 203.639, z = -4141.763 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成1
	{ config_id = 10002, gadget_id = 70360273, pos = { x = -4235.318, y = 205.679, z = -4129.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 14 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 10003, gadget_id = 70360273, pos = { x = -4244.105, y = 204.982, z = -4116.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 14 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 10004, gadget_id = 70360273, pos = { x = -4230.100, y = 202.511, z = -4107.981 }, rot = { x = 18.963, y = 0.299, z = 1.790 }, level = 30, mark_flag = 3, area_id = 14 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 10005, gadget_id = 70360274, pos = { x = -4227.311, y = 208.043, z = -4120.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 7, area_id = 14 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 10006, gadget_id = 70310011, pos = { x = -4227.311, y = 208.043, z = -4120.818 }, rot = { x = 0.000, y = 77.916, z = 40.741 }, level = 30, area_id = 14 },
	{ config_id = 10007, gadget_id = 70210101, pos = { x = -4227.311, y = 208.267, z = -4120.818 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 14 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 10008, gadget_id = 70360276, pos = { x = -4227.311, y = 208.043, z = -4120.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 10011, gadget_id = 70360273, pos = { x = -4205.948, y = 200.000, z = -4104.957 }, rot = { x = 18.963, y = 0.299, z = 1.790 }, level = 30, mark_flag = 4, area_id = 14 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 10012, gadget_id = 70360273, pos = { x = -4204.118, y = 202.439, z = -4112.981 }, rot = { x = 18.963, y = 0.299, z = 1.790 }, level = 30, mark_flag = 5, area_id = 14 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 10013, gadget_id = 70360273, pos = { x = -4213.532, y = 205.210, z = -4115.927 }, rot = { x = 18.963, y = 0.299, z = 1.790 }, level = 30, mark_flag = 6, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010009, name = "ANY_MONSTER_DIE_10009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10009", action = "action_EVENT_ANY_MONSTER_DIE_10009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1010010, name = "GADGET_STATE_CHANGE_10010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10010", action = "action_EVENT_GADGET_STATE_CHANGE_10010" },
	{ config_id = 1010014, name = "GADGET_STATE_CHANGE_10014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_10014", action = "action_EVENT_GADGET_STATE_CHANGE_10014" }
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
			{ config_id = 10002, state = 0 },
			{ config_id = 10003, state = 0 },
			{ config_id = 10004, state = 0 },
			{ config_id = 10005, state = 0 },
			{ config_id = 10011, state = 0 },
			{ config_id = 10012, state = 0 },
			{ config_id = 10013, state = 0 }
		},
		monsters = {
			{ config_id = 10001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_10009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 10006, state = 0 },
			{ config_id = 10008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 10007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_10014" },
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
function condition_EVENT_ANY_MONSTER_DIE_10009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133222010, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133222010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10010(context, evt)
	if 10006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 10006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133222010, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133222010, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_10014(context, evt)
	if 10007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_10014(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133222010, 4)
	
	return 0
end
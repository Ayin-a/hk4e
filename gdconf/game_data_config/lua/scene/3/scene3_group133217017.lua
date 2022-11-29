-- 基础信息
local base_info = {
	group_id = 133217017
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 17001, monster_id = 28020801, pos = { x = -4377.160, y = 225.599, z = -3840.215 }, rot = { x = 0.000, y = 214.519, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 17002, gadget_id = 70360273, pos = { x = -4383.443, y = 229.231, z = -3850.089 }, rot = { x = 0.000, y = 317.909, z = 0.000 }, level = 30, mark_flag = 1, area_id = 14 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 17003, gadget_id = 70360273, pos = { x = -4392.764, y = 230.004, z = -3846.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 14 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 17004, gadget_id = 70360274, pos = { x = -4383.300, y = 225.134, z = -3837.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 14 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 17005, gadget_id = 70900008, pos = { x = -4383.300, y = 225.134, z = -3837.427 }, rot = { x = 349.903, y = 94.303, z = 350.880 }, level = 30, area_id = 14 },
	{ config_id = 17006, gadget_id = 70210101, pos = { x = -4384.942, y = 225.937, z = -3838.105 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 14 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 17007, gadget_id = 70360276, pos = { x = -4383.300, y = 225.134, z = -3837.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 17010, gadget_id = 70360273, pos = { x = -4391.127, y = 224.352, z = -3829.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 14 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 17011, gadget_id = 70360273, pos = { x = -4374.060, y = 222.846, z = -3834.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 4, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1017008, name = "ANY_MONSTER_DIE_17008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_17008", action = "action_EVENT_ANY_MONSTER_DIE_17008" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1017009, name = "GADGET_STATE_CHANGE_17009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17009", action = "action_EVENT_GADGET_STATE_CHANGE_17009" },
	{ config_id = 1017012, name = "GADGET_STATE_CHANGE_17012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_17012", action = "action_EVENT_GADGET_STATE_CHANGE_17012" }
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
			{ config_id = 17002, state = 0 },
			{ config_id = 17003, state = 0 },
			{ config_id = 17004, state = 0 },
			{ config_id = 17010, state = 0 },
			{ config_id = 17011, state = 0 }
		},
		monsters = {
			{ config_id = 17001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_17008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 17005, state = 0 },
			{ config_id = 17007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_17009" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 17006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_17012" },
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
function condition_EVENT_ANY_MONSTER_DIE_17008(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_17008(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133217017, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133217017, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17009(context, evt)
	if 17005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 17007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 17005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133217017, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133217017, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_17012(context, evt)
	if 17006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_17012(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133217017, 4)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133220589
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 589001, monster_id = 28020801, pos = { x = -2553.869, y = 237.327, z = -4628.194 }, rot = { x = 0.000, y = 205.379, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 589002, gadget_id = 70360273, pos = { x = -2567.722, y = 217.198, z = -4632.430 }, rot = { x = 0.000, y = 87.862, z = 0.000 }, level = 30, mark_flag = 1, area_id = 11 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 589003, gadget_id = 70360273, pos = { x = -2551.414, y = 219.430, z = -4640.226 }, rot = { x = 0.000, y = 299.096, z = 0.000 }, level = 30, mark_flag = 2, area_id = 11 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 589004, gadget_id = 70360274, pos = { x = -2561.266, y = 200.491, z = -4628.318 }, rot = { x = 0.000, y = 173.511, z = 0.000 }, level = 30, mark_flag = 3, area_id = 11 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 589005, gadget_id = 70330090, pos = { x = -2561.166, y = 200.338, z = -4628.275 }, rot = { x = 0.000, y = 143.634, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 589006, gadget_id = 70210101, pos = { x = -2560.966, y = 200.338, z = -4628.410 }, rot = { x = 0.000, y = 143.634, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 11 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 589007, gadget_id = 70360276, pos = { x = -2560.966, y = 200.338, z = -4628.410 }, rot = { x = 0.000, y = 143.634, z = 0.000 }, level = 30, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1589008, name = "ANY_MONSTER_DIE_589008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_589008", action = "action_EVENT_ANY_MONSTER_DIE_589008" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1589009, name = "GADGET_STATE_CHANGE_589009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_589009", action = "action_EVENT_GADGET_STATE_CHANGE_589009" },
	{ config_id = 1589010, name = "GADGET_STATE_CHANGE_589010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_589010", action = "action_EVENT_GADGET_STATE_CHANGE_589010" }
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
			{ config_id = 589002, state = 0 },
			{ config_id = 589003, state = 0 },
			{ config_id = 589004, state = 0 }
		},
		monsters = {
			{ config_id = 589001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_589008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 589005, state = 0 },
			{ config_id = 589007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_589009" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 589006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_589010" },
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
function condition_EVENT_ANY_MONSTER_DIE_589008(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_589008(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133220589, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220589, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_589009(context, evt)
	if 589005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_589009(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 589007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 589005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220589, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133220589, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_589010(context, evt)
	if 589006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_589010(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220589, 4)
	
	return 0
end
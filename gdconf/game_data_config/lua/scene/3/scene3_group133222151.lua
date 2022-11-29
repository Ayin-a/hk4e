-- 基础信息
local base_info = {
	group_id = 133222151
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 151001, monster_id = 28020801, pos = { x = -4953.589, y = 211.205, z = -4625.468 }, rot = { x = 0.000, y = 295.314, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 151002, gadget_id = 70360273, pos = { x = -4961.292, y = 210.396, z = -4623.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 14 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 151004, gadget_id = 70360274, pos = { x = -4975.924, y = 202.629, z = -4635.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 14 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 151005, gadget_id = 70220014, pos = { x = -4975.924, y = 202.629, z = -4635.853 }, rot = { x = 353.228, y = 359.628, z = 5.703 }, level = 30, area_id = 14 },
	{ config_id = 151006, gadget_id = 70210101, pos = { x = -4975.924, y = 202.629, z = -4635.853 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 14 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 151007, gadget_id = 70360276, pos = { x = -4975.924, y = 202.629, z = -4635.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1151008, name = "GADGET_STATE_CHANGE_151008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_151008", action = "action_EVENT_GADGET_STATE_CHANGE_151008" },
	{ config_id = 1151009, name = "ANY_MONSTER_DIE_151009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_151009", action = "action_EVENT_ANY_MONSTER_DIE_151009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1151010, name = "ANY_GADGET_DIE_151010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_151010", action = "action_EVENT_ANY_GADGET_DIE_151010" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 151003, gadget_id = 70360273, pos = { x = -4957.807, y = 203.387, z = -4608.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 14 },
		{ config_id = 151011, gadget_id = 70360273, pos = { x = -4977.739, y = 203.477, z = -4603.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 14 },
		{ config_id = 151012, gadget_id = 70360273, pos = { x = -4988.914, y = 203.858, z = -4615.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 4, area_id = 14 },
		{ config_id = 151013, gadget_id = 70360273, pos = { x = -4992.086, y = 203.019, z = -4629.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 14 }
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
			{ config_id = 151002, state = 0 },
			{ config_id = 151004, state = 0 }
		},
		monsters = {
			{ config_id = 151001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_151009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 151005, state = 0 },
			{ config_id = 151007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_151010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 151006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_151008" },
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
function condition_EVENT_GADGET_STATE_CHANGE_151008(context, evt)
	if 151006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_151008(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133222151, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_151009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_151009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133222151, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133222151, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_151010(context, evt)
	if 151005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_151010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 151007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 151005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133222151, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133222151, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end
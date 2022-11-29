-- 基础信息
local base_info = {
	group_id = 133220605
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 605001, monster_id = 28020801, pos = { x = -2462.149, y = 201.384, z = -4154.793 }, rot = { x = 0.119, y = 347.077, z = 349.237 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 605002, gadget_id = 70360273, pos = { x = -2472.910, y = 202.687, z = -4157.716 }, rot = { x = 2.645, y = 359.774, z = 350.247 }, level = 30, mark_flag = 1, area_id = 11 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 605003, gadget_id = 70360273, pos = { x = -2474.197, y = 203.261, z = -4163.467 }, rot = { x = 4.378, y = 359.560, z = 348.517 }, level = 30, mark_flag = 2, area_id = 11 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 605004, gadget_id = 70360274, pos = { x = -2469.415, y = 201.498, z = -4147.298 }, rot = { x = 355.597, y = 0.376, z = 350.247 }, level = 30, mark_flag = 3, area_id = 11 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 605005, gadget_id = 70220026, pos = { x = -2469.415, y = 201.498, z = -4147.298 }, rot = { x = 355.597, y = 0.376, z = 350.247 }, level = 30, area_id = 11 },
	{ config_id = 605006, gadget_id = 70210101, pos = { x = -2469.415, y = 201.498, z = -4147.298 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", persistent = true, area_id = 11 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 605007, gadget_id = 70360276, pos = { x = -2469.415, y = 201.498, z = -4147.298 }, rot = { x = 0.000, y = 106.752, z = 0.000 }, level = 30, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1605008, name = "ANY_MONSTER_DIE_605008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_605008", action = "action_EVENT_ANY_MONSTER_DIE_605008" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1605009, name = "ANY_GADGET_DIE_605009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_605009", action = "action_EVENT_ANY_GADGET_DIE_605009" },
	{ config_id = 1605010, name = "GADGET_STATE_CHANGE_605010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_605010", action = "action_EVENT_GADGET_STATE_CHANGE_605010" }
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
			{ config_id = 605002, state = 0 },
			{ config_id = 605003, state = 0 },
			{ config_id = 605004, state = 0 }
		},
		monsters = {
			{ config_id = 605001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_605008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 605005, state = 0 },
			{ config_id = 605007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_605009" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 605006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_605010" },
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
function condition_EVENT_ANY_MONSTER_DIE_605008(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_605008(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133220605, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220605, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_605009(context, evt)
	if 605005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_605009(context, evt)
	-- 针对当前group内变量名为 "chest" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "chest", 1, 133220599) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 605007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 605005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220605, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133220605, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_605010(context, evt)
	if 605006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_605010(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133220605, 4)
	
	return 0
end
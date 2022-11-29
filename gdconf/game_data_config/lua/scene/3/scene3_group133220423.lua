-- 基础信息
local base_info = {
	group_id = 133220423
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 423001, monster_id = 28020801, pos = { x = -2707.996, y = 240.849, z = -4488.684 }, rot = { x = 357.105, y = 97.823, z = 4.314 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 423002, gadget_id = 70360277, pos = { x = -2708.536, y = 240.728, z = -4488.837 }, rot = { x = 0.000, y = 77.109, z = 0.000 }, level = 30, mark_flag = 101, area_id = 11 },
	-- 这个点是狸猫的第一个闪现点，它的MarkFlag要配成1
	{ config_id = 423003, gadget_id = 70360273, pos = { x = -2717.861, y = 239.230, z = -4491.013 }, rot = { x = 0.000, y = 80.791, z = 0.000 }, level = 30, mark_flag = 1, area_id = 11 },
	-- 可以增删，按顺序配MarkFlag即可
	{ config_id = 423004, gadget_id = 70360273, pos = { x = -2728.716, y = 236.461, z = -4493.616 }, rot = { x = 0.000, y = 88.550, z = 0.000 }, level = 30, mark_flag = 2, area_id = 11 },
	-- 所有的过程点和终点的MarkFlag要从1开始按照狸猫走的顺序来配
	{ config_id = 423005, gadget_id = 70360274, pos = { x = -2745.571, y = 232.055, z = -4494.767 }, rot = { x = 0.000, y = 147.937, z = 0.000 }, level = 30, mark_flag = 3, area_id = 11 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 423006, gadget_id = 70900393, pos = { x = -2745.571, y = 232.003, z = -4494.767 }, rot = { x = 0.000, y = 33.706, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
	{ config_id = 423007, gadget_id = 70210101, pos = { x = -2731.126, y = 264.394, z = -4503.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 423008, gadget_id = 70360276, pos = { x = -2745.571, y = 232.003, z = -4494.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1423009, name = "ANY_MONSTER_DIE_423009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_423009", action = "action_EVENT_ANY_MONSTER_DIE_423009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1423010, name = "GADGET_STATE_CHANGE_423010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_423010", action = "action_EVENT_GADGET_STATE_CHANGE_423010" }
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
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 423001 },
		gadgets = { 423002, 423003, 423004, 423005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_423009" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 423006, 423008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_423010" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 423007 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_423009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_423009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220423, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_423010(context, evt)
	if 423006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_423010(context, evt)
	-- 调用提示id为 322072833 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072833) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 423008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 423006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220423, 3)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210804") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
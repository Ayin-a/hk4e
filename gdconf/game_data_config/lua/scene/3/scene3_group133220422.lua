-- 基础信息
local base_info = {
	group_id = 133220422
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 422001, monster_id = 28020801, pos = { x = -2778.222, y = 228.024, z = -4496.924 }, rot = { x = 358.596, y = 26.198, z = 356.014 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 这个点是狸猫第一个到的点，它的MarkFlag要配成101
	{ config_id = 422002, gadget_id = 70360277, pos = { x = -2793.906, y = 228.495, z = -4488.889 }, rot = { x = 0.000, y = 44.774, z = 0.000 }, level = 30, mark_flag = 101, area_id = 11 },
	-- 1
	{ config_id = 422003, gadget_id = 70360273, pos = { x = -2793.783, y = 228.564, z = -4489.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 11 },
	-- 3
	{ config_id = 422004, gadget_id = 70360273, pos = { x = -2780.007, y = 222.966, z = -4458.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 11 },
	-- 4
	{ config_id = 422005, gadget_id = 70360274, pos = { x = -2792.981, y = 223.581, z = -4447.174 }, rot = { x = 0.000, y = 345.049, z = 348.348 }, level = 30, mark_flag = 4, area_id = 11 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 422006, gadget_id = 70900393, pos = { x = -2793.232, y = 222.319, z = -4447.241 }, rot = { x = 0.000, y = 345.049, z = 348.348 }, level = 30, persistent = true, area_id = 11 },
	{ config_id = 422007, gadget_id = 70210101, pos = { x = -2787.916, y = 230.123, z = -4511.038 }, rot = { x = 0.000, y = 326.990, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	-- 狸子终点、狸子特效和变成的物件需要放在同一个position
	{ config_id = 422008, gadget_id = 70360276, pos = { x = -2792.981, y = 223.581, z = -4447.174 }, rot = { x = 6.985, y = 128.598, z = 9.349 }, level = 30, persistent = true, area_id = 11 },
	-- 2
	{ config_id = 422011, gadget_id = 70360273, pos = { x = -2791.386, y = 226.217, z = -4473.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 11 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 422012, gadget_id = 70900393, pos = { x = -2788.621, y = 222.606, z = -4449.751 }, rot = { x = 0.000, y = 303.251, z = 0.000 }, level = 30, persistent = true, area_id = 11 },
	-- 物件可以替换，换ConfigID就行
	{ config_id = 422013, gadget_id = 70900393, pos = { x = -2788.754, y = 222.383, z = -4444.399 }, rot = { x = 1.606, y = 285.872, z = 8.753 }, level = 30, persistent = true, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 422014, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2778.324, y = 228.023, z = -4497.069 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1422009, name = "ANY_MONSTER_DIE_422009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422009", action = "action_EVENT_ANY_MONSTER_DIE_422009" },
	-- 物件被激活时触发这个Trigger
	{ config_id = 1422010, name = "GADGET_STATE_CHANGE_422010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_422010", action = "action_EVENT_GADGET_STATE_CHANGE_422010" },
	{ config_id = 1422014, name = "ENTER_REGION_422014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_422014", action = "action_EVENT_ENTER_REGION_422014" }
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
		monsters = { 422001 },
		gadgets = { 422002, 422003, 422004, 422005, 422011 },
		regions = { 422014 },
		triggers = { "ANY_MONSTER_DIE_422009", "ENTER_REGION_422014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 422006, 422008, 422012, 422013 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_422010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 422007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_422009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_422009(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220422, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_422010(context, evt)
	if 422006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_422010(context, evt)
	-- 调用提示id为 322072834 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072834) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220422, 3)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210805") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 422013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_422014(context, evt)
	if evt.param1 ~= 422014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_422014(context, evt)
	-- 针对当前group内变量名为 "done" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "done", 1, 133220430) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end
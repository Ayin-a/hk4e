-- 基础信息
local base_info = {
	group_id = 133008064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 64005, monster_id = 28020103, pos = { x = 1112.076, y = 404.093, z = -915.474 }, rot = { x = 0.000, y = 195.736, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 64006, monster_id = 28020104, pos = { x = 1110.261, y = 404.616, z = -915.691 }, rot = { x = 0.191, y = 121.268, z = 359.890 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 64007, monster_id = 28020104, pos = { x = 1109.916, y = 404.663, z = -917.283 }, rot = { x = 0.000, y = 79.280, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 },
	{ config_id = 64008, monster_id = 28020104, pos = { x = 1112.671, y = 403.938, z = -915.757 }, rot = { x = 0.000, y = 211.801, z = 0.000 }, level = 30, drop_tag = "走兽", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 64001, gadget_id = 70290027, pos = { x = 1111.533, y = 404.208, z = -916.904 }, rot = { x = 3.338, y = 358.726, z = 349.323 }, level = 30, isOneoff = true, persistent = true, interact_id = 15, area_id = 10 },
	{ config_id = 64009, gadget_id = 70210101, pos = { x = 1116.194, y = 403.726, z = -908.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", persistent = true, area_id = 10 },
	{ config_id = 64010, gadget_id = 70211145, pos = { x = 1111.748, y = 404.225, z = -916.952 }, rot = { x = 5.335, y = 133.370, z = 9.840 }, level = 26, drop_tag = "雪山玉髓高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 64011, gadget_id = 70290028, pos = { x = 1116.600, y = 403.322, z = -905.233 }, rot = { x = 0.851, y = 0.937, z = 2.698 }, level = 30, area_id = 10 },
	{ config_id = 64012, gadget_id = 70290027, pos = { x = 1111.533, y = 404.263, z = -916.903 }, rot = { x = 3.338, y = 358.726, z = 349.323 }, level = 30, isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 64017, gadget_id = 70210101, pos = { x = 1115.534, y = 403.915, z = -907.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 2002100, drop_count = 1, isOneoff = true, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1064002, name = "GADGET_STATE_CHANGE_64002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64002", action = "action_EVENT_GADGET_STATE_CHANGE_64002", trigger_count = 0 },
	{ config_id = 1064003, name = "GROUP_LOAD_64003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_64003", action = "action_EVENT_GROUP_LOAD_64003", trigger_count = 0 },
	{ config_id = 1064004, name = "ANY_MONSTER_DIE_64004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64004", action = "action_EVENT_ANY_MONSTER_DIE_64004", trigger_count = 0 },
	{ config_id = 1064014, name = "GADGET_STATE_CHANGE_64014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64014", action = "action_EVENT_GADGET_STATE_CHANGE_64014" },
	{ config_id = 1064015, name = "GADGET_CREATE_64015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64015", action = "action_EVENT_GADGET_CREATE_64015", trigger_count = 0 },
	{ config_id = 1064016, name = "GADGET_STATE_CHANGE_64016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_64016", action = "action_EVENT_GADGET_STATE_CHANGE_64016" }
}

-- 变量
variables = {
	{ config_id = 1, name = "day", value = 0, no_refresh = true },
	{ config_id = 2, name = "yesterdayBehavior", value = 1, no_refresh = true },
	{ config_id = 3, name = "prizeGiven", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 6,
	end_suite = 1,
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
		monsters = { },
		gadgets = { 64001, 64011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_64002", "GROUP_LOAD_64003", "ANY_MONSTER_DIE_64004", "GADGET_STATE_CHANGE_64014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 64005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 64006, 64007, 64008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 64009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 64010, 64017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_64016" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 64012 },
		regions = { },
		triggers = { "GADGET_CREATE_64015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64002(context, evt)
	if 64001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64002(context, evt)
	-- 针对当前group内变量名为 "day" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "day", 1, 133008064) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 变量"prizeGiven"赋值为0
	ScriptLib.SetGroupVariableValue(context, "prizeGiven", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_64003(context, evt)
	if evt.param1 == 1 then
		return true
	end
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_64003(context, evt)
	--suite 2是一只狐狸
	--suite 3是三只狐狸
	--suite 4是巢穴奖励
	--suite 5是宝箱
	local day = ScriptLib.GetGroupVariableValue(context, "day")
	local yB = ScriptLib.GetGroupVariableValue(context, "yesterdayBehavior")
	local pG = ScriptLib.GetGroupVariableValue(context, "prizeGiven")
	
	if day >5 then
		return 0
	end
	
	if day == 5 then
		--第五天了,杀掉喂食盆，创三只小狐狸和宝箱
		ScriptLib.AddExtraGroupSuite(context, 133008064, 3)
		ScriptLib.AddExtraGroupSuite(context, 133008064, 5)
		ScriptLib.KillEntityByConfigId(context, { config_id = 64001 })
	elseif day > 0 and day < 5 then
		--如果不是第五天
		if yB == 2 then
			--yB==2是昨天鲨了，yB==1是昨天没鲨，昨天鲨了那今天就没有狐狸了
			ScriptLib.SetGroupVariableValueByGroup(context, "yesterdayBehavior", 1, 133008064) 
		elseif yB == 1 then
			--如果昨天没鲨狐狸，那除非今天是第四天，否则都把狐狸创出来
			if day ~= 4 then
				ScriptLib.AddExtraGroupSuite(context, 133008064, 2)
			end
		end
		if pG == 0 then
				ScriptLib.AddExtraGroupSuite(context, 133008064, 4)
				ScriptLib.SetGroupVariableValueByGroup(context, "prizeGiven", 1, 133008064)
		end
	end
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_64004(context, evt)
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_64004(context, evt)
	-- 将本组内变量名为 "yesterdayBehavior" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "yesterdayBehavior", 2, 133008064) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64014(context, evt)
	if 64001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"day"为0
	if ScriptLib.GetGroupVariableValue(context, "day") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64014(context, evt)
	-- 调用提示id为 300806310 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 300806310) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_64015(context, evt)
	if 64012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_64015(context, evt)
	ScriptLib.SetGadgetEnableInteract(context, 133008064, 64012, false)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_64016(context, evt)
	if 64010 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_64016(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 针对当前group内变量名为 "day" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "day", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end
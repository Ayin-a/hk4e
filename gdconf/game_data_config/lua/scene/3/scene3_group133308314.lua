-- 基础信息
local base_info = {
	group_id = 133308314
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314001, monster_id = 24040101, pos = { x = -2315.786, y = 73.322, z = 4273.150 }, rot = { x = 0.000, y = 186.638, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, area_id = 26 },
	{ config_id = 314004, monster_id = 24040201, pos = { x = -2320.963, y = 73.360, z = 4267.798 }, rot = { x = 0.000, y = 83.609, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1004, title_id = 10138, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 314002, gadget_id = 70211012, pos = { x = -2316.406, y = 73.322, z = 4279.927 }, rot = { x = 0.000, y = 193.292, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1314003, name = "ANY_MONSTER_DIE_314003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_314003", action = "action_EVENT_ANY_MONSTER_DIE_314003" },
	{ config_id = 1314005, name = "GROUP_LOAD_314005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_314005", action = "action_EVENT_GROUP_LOAD_314005", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monsterdie", value = 0, no_refresh = true }
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
		monsters = { 314001, 314004 },
		gadgets = { 314002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_314003", "GROUP_LOAD_314005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_314003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_314003(context, evt)
	-- 将本组内变量名为 "monsterdie" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monsterdie", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 314002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 314002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7329305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_314005(context, evt)
	-- 判断变量"monsterdie"为1
	if ScriptLib.GetGroupVariableValue(context, "monsterdie") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_314005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7329305") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
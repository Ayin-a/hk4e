-- 基础信息
local base_info = {
	group_id = 177006048
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 24020301, pos = { x = 330.455, y = 165.499, z = -344.184 }, rot = { x = 0.000, y = 319.239, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 1032, 5135 }, pose_id = 101, area_id = 210 },
	{ config_id = 48002, monster_id = 24020201, pos = { x = 330.966, y = 165.646, z = -350.184 }, rot = { x = 0.000, y = 344.982, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 1032, 5135 }, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1048004, name = "ANY_MONSTER_DIE_48004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_48004", action = "action_EVENT_ANY_MONSTER_DIE_48004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "flag", value = 0, no_refresh = true }
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
		monsters = { 48001, 48002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_48004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_48004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"flag"为0
	if ScriptLib.GetGroupVariableValue(context, "flag") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_48004(context, evt)
	-- 将本组内变量名为 "flag" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "flag", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 改变指定group组177006060中， configid为60005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177006060, 60005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end
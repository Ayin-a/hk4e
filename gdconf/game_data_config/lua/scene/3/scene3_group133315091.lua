-- 基础信息
local base_info = {
	group_id = 133315091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 91004, monster_id = 26120101, pos = { x = 246.340, y = 94.972, z = 2988.644 }, rot = { x = 0.000, y = 228.873, z = 0.000 }, level = 27, drop_tag = "大蕈兽", disableWander = true, affix = { 1009, 1007 }, pose_id = 201, area_id = 20 },
	{ config_id = 91005, monster_id = 26090201, pos = { x = 245.184, y = 93.704, z = 2991.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 },
	{ config_id = 91007, monster_id = 26090201, pos = { x = 248.973, y = 94.448, z = 2987.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 91002, gadget_id = 70211151, pos = { x = 245.814, y = 94.736, z = 2981.888 }, rot = { x = 17.175, y = 343.424, z = 351.228 }, level = 26, chest_drop_id = 21910078, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091001, name = "ANY_MONSTER_DIE_91001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91001", action = "action_EVENT_ANY_MONSTER_DIE_91001" },
	{ config_id = 1091003, name = "ANY_MONSTER_DIE_91003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_91003", action = "action_EVENT_ANY_MONSTER_DIE_91003" }
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
		monsters = { 91004, 91005, 91007 },
		gadgets = { 91002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_91001", "ANY_MONSTER_DIE_91003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91001(context, evt)
	--判断死亡怪物的configid是否为 91004
	if evt.param1 ~= 91004 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91001(context, evt)
	-- 将本组内变量名为 "battle1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "battle1", 1, 133315331) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_91003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_91003(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
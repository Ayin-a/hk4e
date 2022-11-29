-- 基础信息
local base_info = {
	group_id = 177006037
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 37001, monster_id = 25100301, pos = { x = 493.140, y = 133.069, z = -324.988 }, rot = { x = 0.000, y = 314.501, z = 0.000 }, level = 36, drop_tag = "高阶武士", disableWander = true, affix = { 1032 }, pose_id = 1003, area_id = 210 },
	{ config_id = 37004, monster_id = 25100401, pos = { x = 491.400, y = 132.797, z = -318.331 }, rot = { x = 0.000, y = 119.683, z = 0.000 }, level = 36, drop_tag = "高阶武士", disableWander = true, affix = { 1032 }, pose_id = 1003, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 37002, gadget_id = 70211157, pos = { x = 489.228, y = 133.500, z = -322.332 }, rot = { x = 0.000, y = 38.738, z = 0.000 }, level = 16, drop_tag = "渊下宫活动中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1037003, name = "ANY_MONSTER_DIE_37003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_37003", action = "action_EVENT_ANY_MONSTER_DIE_37003", trigger_count = 0 }
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
		monsters = { 37001, 37004 },
		gadgets = { 37002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_37003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_37003(context, evt)
	-- 将configid为 37002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
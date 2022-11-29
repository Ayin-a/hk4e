-- 基础信息
local base_info = {
	group_id = 177005028
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 24010101, pos = { x = 557.704, y = 211.005, z = 758.741 }, rot = { x = 0.000, y = 135.015, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 28002, gadget_id = 70211156, pos = { x = 563.419, y = 212.712, z = 763.995 }, rot = { x = 6.406, y = 225.975, z = 353.845 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1028003, name = "ANY_MONSTER_DIE_28003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_28003", action = "action_EVENT_ANY_MONSTER_DIE_28003" }
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
		monsters = { 28001 },
		gadgets = { 28002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_28003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_28003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_28003(context, evt)
	-- 将configid为 28002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 28002, GadgetState.Default) then
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
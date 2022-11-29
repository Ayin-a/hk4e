-- 基础信息
local base_info = {
	group_id = 155006171
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 171001, monster_id = 24010101, pos = { x = 185.577, y = 204.538, z = -400.214 }, rot = { x = 0.000, y = 177.681, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 171004, monster_id = 24010101, pos = { x = 180.879, y = 201.506, z = -426.648 }, rot = { x = 0.000, y = 175.101, z = 350.599 }, level = 36, drop_tag = "遗迹守卫", pose_id = 100, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 171002, gadget_id = 70211012, pos = { x = 170.953, y = 207.344, z = -405.167 }, rot = { x = 18.665, y = 113.958, z = 350.969 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1171003, name = "ANY_MONSTER_DIE_171003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_171003", action = "action_EVENT_ANY_MONSTER_DIE_171003" }
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
		monsters = { 171001, 171004 },
		gadgets = { 171002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_171003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_171003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_171003(context, evt)
	-- 将configid为 171002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 171002, GadgetState.Default) then
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
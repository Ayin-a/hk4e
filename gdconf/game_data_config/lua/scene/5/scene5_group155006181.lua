-- 基础信息
local base_info = {
	group_id = 155006181
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 24010101, pos = { x = 512.972, y = 197.104, z = -435.287 }, rot = { x = 0.000, y = 318.997, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 },
	{ config_id = 181004, monster_id = 24010301, pos = { x = 504.536, y = 194.133, z = -425.959 }, rot = { x = 0.000, y = 128.287, z = 0.000 }, level = 36, drop_tag = "遗迹重机", pose_id = 101, area_id = 200 },
	{ config_id = 181005, monster_id = 24010101, pos = { x = 519.058, y = 197.755, z = -422.842 }, rot = { x = 0.000, y = 230.076, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 181002, gadget_id = 70211022, pos = { x = 513.185, y = 196.871, z = -428.105 }, rot = { x = 4.753, y = 342.514, z = 9.096 }, level = 16, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1181003, name = "ANY_MONSTER_DIE_181003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_181003", action = "action_EVENT_ANY_MONSTER_DIE_181003" }
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
		monsters = { 181001, 181004, 181005 },
		gadgets = { 181002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_181003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_181003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_181003(context, evt)
	-- 将configid为 181002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 181002, GadgetState.Default) then
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
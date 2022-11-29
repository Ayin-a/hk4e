-- 基础信息
local base_info = {
	group_id = 133302371
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 371001, monster_id = 26090201, pos = { x = -606.283, y = 180.086, z = 2619.962 }, rot = { x = 0.000, y = 254.551, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 371004, monster_id = 26090201, pos = { x = -612.035, y = 178.813, z = 2624.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 24 },
	{ config_id = 371005, monster_id = 26090201, pos = { x = -610.514, y = 178.391, z = 2616.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 371002, gadget_id = 70211002, pos = { x = -609.753, y = 178.683, z = 2620.276 }, rot = { x = 0.000, y = 244.215, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 371007, gadget_id = 70330197, pos = { x = -596.425, y = 183.484, z = 2613.617 }, rot = { x = 347.305, y = 66.360, z = 359.436 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1371003, name = "ANY_MONSTER_DIE_371003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_371003", action = "action_EVENT_ANY_MONSTER_DIE_371003" }
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
		monsters = { 371001, 371004, 371005 },
		gadgets = { 371002, 371007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_371003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_371003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_371003(context, evt)
	-- 将configid为 371002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 371002, GadgetState.Default) then
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
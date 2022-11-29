-- 基础信息
local base_info = {
	group_id = 133213210
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 210001, monster_id = 25010601, pos = { x = -3115.935, y = 200.963, z = -3258.520 }, rot = { x = 359.076, y = 287.063, z = 356.910 }, level = 25, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 12 },
	{ config_id = 210004, monster_id = 25030301, pos = { x = -3118.775, y = 201.079, z = -3258.587 }, rot = { x = 2.273, y = 78.909, z = 2.288 }, level = 27, drop_tag = "盗宝团", pose_id = 9006, area_id = 12 },
	{ config_id = 210005, monster_id = 25100201, pos = { x = -3126.758, y = 201.373, z = -3260.057 }, rot = { x = 357.089, y = 188.198, z = 1.387 }, level = 27, drop_tag = "高阶武士", pose_id = 1002, area_id = 12 },
	{ config_id = 210007, monster_id = 25080101, pos = { x = -3137.493, y = 200.543, z = -3257.011 }, rot = { x = 3.194, y = 25.832, z = 359.559 }, level = 27, drop_tag = "浪人武士", pose_id = 1004, area_id = 12 },
	{ config_id = 210008, monster_id = 25010301, pos = { x = -3135.496, y = 200.793, z = -3253.376 }, rot = { x = 356.946, y = 194.933, z = 1.036 }, level = 27, drop_tag = "盗宝团", pose_id = 9006, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 210002, gadget_id = 70211002, pos = { x = -3118.723, y = 200.367, z = -3248.434 }, rot = { x = 2.683, y = 359.958, z = 358.210 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 210006, gadget_id = 70900393, pos = { x = -3117.967, y = 200.960, z = -3257.339 }, rot = { x = 0.000, y = 359.958, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1210003, name = "ANY_MONSTER_DIE_210003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210003", action = "action_EVENT_ANY_MONSTER_DIE_210003" }
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
		monsters = { 210001, 210004, 210005, 210007, 210008 },
		gadgets = { 210002, 210006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_210003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_210003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_210003(context, evt)
	-- 将configid为 210002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210002, GadgetState.Default) then
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
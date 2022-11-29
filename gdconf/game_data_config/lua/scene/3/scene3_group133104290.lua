-- 基础信息
local base_info = {
	group_id = 133104290
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 290001, monster_id = 25020201, pos = { x = 412.759, y = 237.795, z = 753.987 }, rot = { x = 357.237, y = 317.127, z = 6.201 }, level = 19, drop_tag = "盗宝团", disableWander = true, isOneoff = true, pose_id = 2, area_id = 6 },
	{ config_id = 290004, monster_id = 25010301, pos = { x = 414.674, y = 237.267, z = 758.718 }, rot = { x = 355.843, y = 68.272, z = 6.434 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 290005, monster_id = 25010601, pos = { x = 409.280, y = 237.342, z = 759.279 }, rot = { x = 352.937, y = 148.353, z = 357.039 }, level = 19, drop_tag = "盗宝团", disableWander = true, isOneoff = true, pose_id = 2, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 290002, gadget_id = 70211012, pos = { x = 411.227, y = 237.732, z = 756.772 }, rot = { x = 2.208, y = 308.702, z = 354.919 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 290006, gadget_id = 70310004, pos = { x = 413.208, y = 237.646, z = 756.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1290003, name = "ANY_MONSTER_DIE_290003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_290003", action = "action_EVENT_ANY_MONSTER_DIE_290003" }
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
		-- description = suite_1,
		monsters = { 290001, 290004, 290005 },
		gadgets = { 290002, 290006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_290003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_290003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_290003(context, evt)
	-- 将configid为 290002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 290002, GadgetState.Default) then
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
-- 基础信息
local base_info = {
	group_id = 166001564
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 564001, monster_id = 26090101, pos = { x = 195.518, y = 146.158, z = 761.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 300 },
	{ config_id = 564004, monster_id = 26090101, pos = { x = 188.992, y = 146.000, z = 764.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 300 },
	{ config_id = 564005, monster_id = 26090101, pos = { x = 195.741, y = 146.000, z = 767.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 300 },
	{ config_id = 564006, monster_id = 26090101, pos = { x = 186.789, y = 146.000, z = 770.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "蕈兽", disableWander = true, pose_id = 104, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 564002, gadget_id = 70211002, pos = { x = 185.238, y = 146.127, z = 764.060 }, rot = { x = 3.179, y = 76.603, z = 358.116 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1564003, name = "ANY_MONSTER_DIE_564003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_564003", action = "action_EVENT_ANY_MONSTER_DIE_564003" }
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
		monsters = { 564001, 564004, 564005, 564006 },
		gadgets = { 564002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_564003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_564003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_564003(context, evt)
	-- 将configid为 564002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 564002, GadgetState.Default) then
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
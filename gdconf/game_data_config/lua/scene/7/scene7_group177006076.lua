-- 基础信息
local base_info = {
	group_id = 177006076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 76001, monster_id = 24020401, pos = { x = 356.375, y = 165.419, z = -304.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 1032, 5135 }, pose_id = 101, area_id = 210 },
	{ config_id = 76004, monster_id = 24020101, pos = { x = 360.449, y = 165.562, z = -297.740 }, rot = { x = 0.000, y = 197.586, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 1032, 5135 }, pose_id = 101, area_id = 210 }
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
	{ config_id = 1076006, name = "ANY_MONSTER_DIE_76006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_76006", action = "action_EVENT_ANY_MONSTER_DIE_76006", trigger_count = 0 }
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
		monsters = { 76001, 76004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_76006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_76006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_76006(context, evt)
	-- 改变指定group组177006060中， configid为60004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 177006060, 60004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end
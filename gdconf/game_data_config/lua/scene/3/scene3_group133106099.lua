-- 基础信息
local base_info = {
	group_id = 133106099
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99002, monster_id = 25010501, pos = { x = -827.646, y = 192.558, z = 809.080 }, rot = { x = 0.000, y = 103.286, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 8 },
	{ config_id = 99003, monster_id = 25020201, pos = { x = -830.452, y = 193.481, z = 804.059 }, rot = { x = 0.000, y = 70.089, z = 0.000 }, level = 28, drop_tag = "盗宝团", area_id = 8 },
	{ config_id = 99004, monster_id = 25070101, pos = { x = -827.206, y = 192.331, z = 803.562 }, rot = { x = 0.000, y = 337.390, z = 0.000 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 4, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 99005, gadget_id = 70211012, pos = { x = -830.127, y = 193.463, z = 809.833 }, rot = { x = 0.000, y = 153.346, z = 0.000 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 99006, gadget_id = 70310006, pos = { x = -831.268, y = 193.727, z = 806.271 }, rot = { x = 357.108, y = 92.705, z = 4.331 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099007, name = "ANY_MONSTER_DIE_99007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99007", action = "action_EVENT_ANY_MONSTER_DIE_99007" }
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
		monsters = { 99002, 99003, 99004 },
		gadgets = { 99005, 99006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99007(context, evt)
	-- 将configid为 99005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99005, GadgetState.Default) then
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
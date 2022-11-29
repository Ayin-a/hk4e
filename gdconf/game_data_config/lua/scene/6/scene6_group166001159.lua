-- 基础信息
local base_info = {
	group_id = 166001159
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 159001, monster_id = 25070101, pos = { x = 1147.904, y = 740.213, z = 400.490 }, rot = { x = 0.000, y = 221.421, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 },
	{ config_id = 159004, monster_id = 25010501, pos = { x = 1151.890, y = 742.425, z = 410.152 }, rot = { x = 0.000, y = 264.132, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 3, area_id = 300 },
	{ config_id = 159005, monster_id = 25030301, pos = { x = 1161.480, y = 740.732, z = 397.956 }, rot = { x = 0.000, y = 304.811, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 300 },
	{ config_id = 159006, monster_id = 25060101, pos = { x = 1147.872, y = 743.462, z = 413.626 }, rot = { x = 0.000, y = 174.892, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 159002, gadget_id = 70211012, pos = { x = 1151.143, y = 741.890, z = 413.350 }, rot = { x = 5.377, y = 221.924, z = 0.191 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1159003, name = "ANY_MONSTER_DIE_159003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159003", action = "action_EVENT_ANY_MONSTER_DIE_159003" }
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
		monsters = { 159001, 159004, 159005, 159006 },
		gadgets = { 159002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_159003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_159003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_159003(context, evt)
	-- 将configid为 159002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 159002, GadgetState.Default) then
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
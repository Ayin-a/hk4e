-- 基础信息
local base_info = {
	group_id = 133104171
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 404, monster_id = 21011201, pos = { x = 154.416, y = 218.025, z = 871.732 }, rot = { x = 2.407, y = 116.278, z = 1.188 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 405, monster_id = 21011201, pos = { x = 159.450, y = 217.669, z = 877.505 }, rot = { x = 4.072, y = 173.029, z = 11.059 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 406, monster_id = 21011001, pos = { x = 152.134, y = 218.045, z = 877.523 }, rot = { x = 0.000, y = 129.337, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 407, monster_id = 21030401, pos = { x = 153.657, y = 218.045, z = 882.029 }, rot = { x = 0.000, y = 166.178, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 579, gadget_id = 70211012, pos = { x = 150.911, y = 218.045, z = 881.500 }, rot = { x = 0.000, y = 174.936, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 171001, gadget_id = 70220013, pos = { x = 151.387, y = 218.045, z = 873.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 171002, gadget_id = 70220013, pos = { x = 158.959, y = 217.430, z = 872.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 171003, gadget_id = 70220014, pos = { x = 156.176, y = 218.036, z = 881.425 }, rot = { x = 0.000, y = 0.000, z = 357.316 }, level = 19, area_id = 6 },
	{ config_id = 171004, gadget_id = 70220014, pos = { x = 157.592, y = 217.896, z = 880.651 }, rot = { x = 355.567, y = 0.276, z = 352.875 }, level = 19, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000287, name = "ANY_MONSTER_DIE_287", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_287", action = "action_EVENT_ANY_MONSTER_DIE_287" }
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
		monsters = { 404, 405, 406, 407 },
		gadgets = { 579, 171001, 171002, 171003, 171004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_287" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_287(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_287(context, evt)
	-- 将configid为 579 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 579, GadgetState.Default) then
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
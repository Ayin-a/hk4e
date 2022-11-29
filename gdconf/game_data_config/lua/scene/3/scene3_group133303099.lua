-- 基础信息
local base_info = {
	group_id = 133303099
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 23010401, pos = { x = -1095.538, y = 264.769, z = 3913.302 }, rot = { x = 0.000, y = 33.893, z = 0.000 }, level = 30, drop_tag = "先遣队", pose_id = 9012, area_id = 23 },
	{ config_id = 99004, monster_id = 23040101, pos = { x = -1105.472, y = 262.910, z = 3934.327 }, rot = { x = 0.000, y = 255.624, z = 0.000 }, level = 30, drop_tag = "召唤师", area_id = 23 },
	{ config_id = 99005, monster_id = 23010501, pos = { x = -1082.575, y = 272.522, z = 3928.507 }, rot = { x = 0.000, y = 182.335, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9011, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 99002, gadget_id = 70211012, pos = { x = -1103.167, y = 263.549, z = 3942.187 }, rot = { x = 0.000, y = 257.120, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 99006, gadget_id = 70310006, pos = { x = -1105.621, y = 261.890, z = 3930.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 23 },
	{ config_id = 99007, gadget_id = 70220048, pos = { x = -1090.104, y = 272.522, z = 3931.548 }, rot = { x = 0.000, y = 2.715, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 99008, gadget_id = 70220050, pos = { x = -1091.191, y = 272.522, z = 3929.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 99010, gadget_id = 70220048, pos = { x = -1089.636, y = 272.522, z = 3928.867 }, rot = { x = 0.000, y = 58.799, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 99011, gadget_id = 70220048, pos = { x = -1088.563, y = 272.522, z = 3930.546 }, rot = { x = 0.000, y = 296.455, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 99012, gadget_id = 70210101, pos = { x = -1107.140, y = 264.469, z = 3942.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 },
	{ config_id = 99013, gadget_id = 70210101, pos = { x = -1091.003, y = 272.619, z = 3929.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1099003, name = "ANY_MONSTER_DIE_99003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99003", action = "action_EVENT_ANY_MONSTER_DIE_99003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 99009, gadget_id = 70217020, pos = { x = -1092.206, y = 272.522, z = 3933.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
	}
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
		monsters = { 99001, 99004, 99005 },
		gadgets = { 99002, 99006, 99007, 99008, 99010, 99011, 99012, 99013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99003(context, evt)
	-- 将configid为 99002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99002, GadgetState.Default) then
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
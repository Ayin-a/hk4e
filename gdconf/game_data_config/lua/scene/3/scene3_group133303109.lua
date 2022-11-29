-- 基础信息
local base_info = {
	group_id = 133303109
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 109001, monster_id = 25210201, pos = { x = -1456.421, y = 285.938, z = 3705.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9002, area_id = 23 },
	{ config_id = 109004, monster_id = 25210501, pos = { x = -1449.942, y = 283.359, z = 3717.433 }, rot = { x = 0.000, y = 344.681, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 23 },
	{ config_id = 109005, monster_id = 25210301, pos = { x = -1444.206, y = 283.409, z = 3721.419 }, rot = { x = 0.000, y = 97.259, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9007, area_id = 23 },
	{ config_id = 109008, monster_id = 25210402, pos = { x = -1450.616, y = 283.312, z = 3720.583 }, rot = { x = 0.000, y = 167.639, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9512, area_id = 23 },
	{ config_id = 109009, monster_id = 25210201, pos = { x = -1455.571, y = 286.314, z = 3704.981 }, rot = { x = 0.000, y = 171.008, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9006, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 109002, gadget_id = 70211012, pos = { x = -1440.847, y = 283.372, z = 3721.686 }, rot = { x = 0.000, y = 262.764, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 109006, gadget_id = 70220128, pos = { x = -1450.308, y = 283.299, z = 3719.004 }, rot = { x = 359.494, y = 256.089, z = 359.509 }, level = 30, area_id = 23 },
	{ config_id = 109007, gadget_id = 70220048, pos = { x = -1455.576, y = 279.340, z = 3729.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 109010, gadget_id = 70210101, pos = { x = -1455.532, y = 279.353, z = 3731.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1109003, name = "ANY_MONSTER_DIE_109003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_109003", action = "action_EVENT_ANY_MONSTER_DIE_109003" }
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
		monsters = { 109001, 109004, 109005, 109008, 109009 },
		gadgets = { 109002, 109006, 109007, 109010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_109003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_109003(context, evt)
	-- 将configid为 109002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 109002, GadgetState.Default) then
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
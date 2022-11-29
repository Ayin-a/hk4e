-- 基础信息
local base_info = {
	group_id = 133309094
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 94001, monster_id = 26120301, pos = { x = -2156.412, y = -58.000, z = 5761.686 }, rot = { x = 0.000, y = 256.177, z = 0.000 }, level = 32, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 27 },
	{ config_id = 94004, monster_id = 26090501, pos = { x = -2152.151, y = -53.921, z = 5770.472 }, rot = { x = 0.000, y = 235.595, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 102, area_id = 27 },
	{ config_id = 94005, monster_id = 26090501, pos = { x = -2151.944, y = -58.000, z = 5759.213 }, rot = { x = 0.000, y = 40.036, z = 0.000 }, level = 32, drop_tag = "蕈兽", pose_id = 103, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 94002, gadget_id = 70211002, pos = { x = -2149.758, y = -57.927, z = 5760.575 }, rot = { x = 9.147, y = 236.879, z = 356.174 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1094003, name = "ANY_MONSTER_DIE_94003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_94003", action = "action_EVENT_ANY_MONSTER_DIE_94003" }
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
		monsters = { 94001, 94004, 94005 },
		gadgets = { 94002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_94003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_94003(context, evt)
	-- 将configid为 94002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94002, GadgetState.Default) then
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
-- 基础信息
local base_info = {
	group_id = 133304465
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 465001, monster_id = 26090401, pos = { x = -1711.317, y = 331.119, z = 2427.375 }, rot = { x = 0.000, y = 165.694, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 21 },
	{ config_id = 465004, monster_id = 26090201, pos = { x = -1707.450, y = 333.198, z = 2424.378 }, rot = { x = 0.000, y = 210.635, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 102, area_id = 21 },
	{ config_id = 465005, monster_id = 26120101, pos = { x = -1711.887, y = 335.694, z = 2422.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 102, area_id = 21 },
	{ config_id = 465006, monster_id = 26090201, pos = { x = -1715.894, y = 331.209, z = 2424.020 }, rot = { x = 0.000, y = 110.563, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 102, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 465002, gadget_id = 70211002, pos = { x = -1704.747, y = 333.404, z = 2417.798 }, rot = { x = 348.455, y = 0.641, z = 350.986 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1465003, name = "ANY_MONSTER_DIE_465003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_465003", action = "action_EVENT_ANY_MONSTER_DIE_465003", trigger_count = 0 }
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
		monsters = { 465001, 465004, 465005, 465006 },
		gadgets = { 465002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_465003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_465003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_465003(context, evt)
	-- 将configid为 465002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 465002, GadgetState.Default) then
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
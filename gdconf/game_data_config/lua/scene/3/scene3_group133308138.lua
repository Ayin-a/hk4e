-- 基础信息
local base_info = {
	group_id = 133308138
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138001, monster_id = 24040201, pos = { x = -2353.976, y = 73.142, z = 4243.239 }, rot = { x = 0.000, y = 133.998, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, affix = { 5245, 5246 }, pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 138002, gadget_id = 70211012, pos = { x = -2350.093, y = 73.142, z = 4239.428 }, rot = { x = 0.000, y = 135.903, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
	{ config_id = 138005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2351.369, y = 73.142, z = 4240.614 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1138003, name = "ANY_MONSTER_DIE_138003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_138003", action = "action_EVENT_ANY_MONSTER_DIE_138003" },
	{ config_id = 1138005, name = "ENTER_REGION_138005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_138005" }
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
		monsters = { },
		gadgets = { 138002 },
		regions = { 138005 },
		triggers = { "ANY_MONSTER_DIE_138003", "ENTER_REGION_138005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 138001 },
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
function condition_EVENT_ANY_MONSTER_DIE_138003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_138003(context, evt)
	-- 将configid为 138002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 138002, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_ENTER_REGION_138005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308138, 2)
	
	return 0
end
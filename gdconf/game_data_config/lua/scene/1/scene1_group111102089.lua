-- 基础信息
local base_info = {
	group_id = 111102089
}

-- Trigger变量
local defs = {
	pointarray_route = 110200026
}

-- DEFS_MISCS
--向前移动的符文
local timeback_rune = 89005

local timeback_controller = 89010

--倒流操作台。
local timeback_worktops = 
{
    89001,
    89007,
    89009,
    89008
}

--倒流物件id。
local timeback_gadgets = 
{
    89002,  --树1
    89003,  --树2
    89004,  --石柱
    89006,  --瀑布
}

--符文的移动路径点阵
local rune_point_array = 
{
    1,2,3,4,5
}

--检查点到点阵路点的映射关系
--默认最后一个checkpoint就是终点，不能再往下移动了
local checkpoints_to_route_points = 
{
    [1] = 2,
    [2] = 3,
    [3] = 4,
    [4] = 5,
 }


--检查点到倒流操作台的映射关系，两者应该放在同一个位置上
local checkpoint_to_worktops = 
{
    [1] = timeback_worktops[1],
    [2] = timeback_worktops[2],
    [3] = timeback_worktops[3],
    [4] = timeback_worktops[4]
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
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
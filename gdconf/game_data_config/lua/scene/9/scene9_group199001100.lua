-- 基础信息
local base_info = {
	group_id = 199001100
}

-- Trigger变量
local defs = {
	starter_worktop_id = 100038,
	final_stage = 6,
	gallery_id = 21201,
	prepare_group_id = 199001020
}

-- DEFS_MISCS
local score = {
    checkpoint = 20,
    monster = 5,
}

local stage_berth_windzone = {
    [1] = {berth_num = 5, berth = {100004,100042,100043,100288,100289}, windzone = {100009,100011,100045,100161,100162}},
    [3] = {berth_num = 6, berth = {100047,100048,100099,100430,100431,100432}, windzone = {100017,100022,100050,100176,100177}},
    [5] = {berth_num = 8, berth = {100147,100199,100200,100201,100433,100434,100435,100436}, windzone = {100027,100035,100134,100135,100197,100202,100264}},
}


local start_boat_points = 
{
	100301,100300,100299,100298
}

local stage = 
{
    [1] = {monster_suites = {2},start_suites = {2}, tag = "Sail", region = 100214,revive_point =100418, boat_point = 100419},
    [2] = {monster_suites = {3},start_suites = {3}, tag = "Battle",revive_point =100295, boat_point = 100302},
    [3] = {monster_suites = {4},start_suites = {4}, tag = "Sail", region = 100215,revive_point =100422, boat_point = 100423},
    [4] = {monster_suites = {5},start_suites = {5}, tag = "Battle",revive_point =100296, boat_point = 100303},
    [5] = {monster_suites = {6},start_suites = {6}, tag = "Sail", region = 100216,revive_point =100427, boat_point = 100428},
    [6] = {monster_suites = {7,8},start_suites = {7}, tag = "Battle",revive_point =100297, boat_point = 100304},
}

local monster_suite_chain = 
{
        [7] = {8}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 100051, monster_id = 21010401, pos = { x = -484.241, y = 135.876, z = -239.946 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 100101, monster_id = 21010401, pos = { x = -411.389, y = 128.885, z = -254.274 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 100111, monster_id = 21010401, pos = { x = -388.892, y = 135.905, z = -259.513 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 100156, monster_id = 21010401, pos = { x = -466.100, y = 128.890, z = -244.848 }, rot = { x = 0.000, y = 103.584, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 100175, monster_id = 21010401, pos = { x = -440.782, y = 124.883, z = -248.482 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 100178, monster_id = 21011001, pos = { x = -440.476, y = 152.086, z = -250.862 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 100179, monster_id = 21010501, pos = { x = -388.491, y = 135.905, z = -259.854 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 400 },
	{ config_id = 100180, monster_id = 21010501, pos = { x = -484.546, y = 135.905, z = -240.545 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 100185, monster_id = 21010401, pos = { x = -411.586, y = 142.887, z = -257.895 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 400 },
	{ config_id = 100195, monster_id = 21010401, pos = { x = -313.652, y = 124.888, z = 111.095 }, rot = { x = 0.000, y = 43.923, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 403 },
	{ config_id = 100219, monster_id = 21010401, pos = { x = -46.445, y = 124.884, z = 316.398 }, rot = { x = 0.000, y = 67.195, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 100220, monster_id = 21011001, pos = { x = -48.515, y = 135.905, z = 353.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 402 },
	{ config_id = 100225, monster_id = 21010401, pos = { x = -40.233, y = 142.887, z = 335.377 }, rot = { x = 0.000, y = 322.717, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 402 },
	{ config_id = 100226, monster_id = 21010401, pos = { x = -28.016, y = 142.879, z = 308.433 }, rot = { x = 0.000, y = 155.675, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 402 },
	{ config_id = 100227, monster_id = 21010501, pos = { x = -18.659, y = 135.858, z = 292.537 }, rot = { x = 0.000, y = 146.909, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 402 },
	{ config_id = 100243, monster_id = 21010401, pos = { x = -314.407, y = 128.891, z = 91.676 }, rot = { x = 0.000, y = 316.911, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 403 },
	{ config_id = 100245, monster_id = 21010401, pos = { x = -332.056, y = 128.879, z = 110.157 }, rot = { x = 0.000, y = 137.068, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 100246, monster_id = 21011001, pos = { x = -299.164, y = 135.905, z = 76.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 100247, monster_id = 21010501, pos = { x = -345.726, y = 135.905, z = 125.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, area_id = 403 },
	{ config_id = 100269, monster_id = 21010401, pos = { x = -466.243, y = 142.883, z = -248.430 }, rot = { x = 0.000, y = 311.607, z = 0.000 }, level = 36, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 100001, gadget_id = 70380311, pos = { x = -40.744, y = 142.000, z = 334.801 }, rot = { x = 0.000, y = 243.730, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100002, gadget_id = 70380312, pos = { x = -49.125, y = 135.000, z = 353.511 }, rot = { x = 0.000, y = 243.730, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100003, gadget_id = 70350085, pos = { x = -49.228, y = 135.885, z = 353.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 100004, gadget_id = 70380230, pos = { x = -12.182, y = 120.000, z = 278.029 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100005, gadget_id = 70380235, pos = { x = -353.863, y = 122.000, z = 106.210 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100006, gadget_id = 70380235, pos = { x = -11.815, y = 126.647, z = 278.113 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100007, gadget_id = 70380235, pos = { x = -11.815, y = 131.647, z = 278.113 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100008, gadget_id = 70380235, pos = { x = -11.815, y = 136.647, z = 278.113 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100009, gadget_id = 70690011, pos = { x = -12.182, y = 120.000, z = 278.029 }, rot = { x = 0.000, y = 335.423, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100010, gadget_id = 70380311, pos = { x = -59.728, y = 119.012, z = 337.062 }, rot = { x = 0.000, y = 243.730, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100011, gadget_id = 70690011, pos = { x = -59.728, y = 119.012, z = 337.062 }, rot = { x = 0.000, y = 335.423, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100012, gadget_id = 70380235, pos = { x = -59.728, y = 122.000, z = 337.062 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100013, gadget_id = 70380235, pos = { x = -151.929, y = 121.000, z = 242.486 }, rot = { x = 0.000, y = 146.076, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100014, gadget_id = 70380235, pos = { x = -145.271, y = 121.000, z = 232.587 }, rot = { x = 0.000, y = 166.925, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100015, gadget_id = 70380235, pos = { x = -142.570, y = 121.000, z = 220.956 }, rot = { x = 0.000, y = 185.185, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100016, gadget_id = 70380311, pos = { x = -353.863, y = 119.012, z = 106.210 }, rot = { x = 0.000, y = 226.203, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100017, gadget_id = 70690011, pos = { x = -355.670, y = 120.000, z = 137.143 }, rot = { x = 0.000, y = 317.896, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100018, gadget_id = 70380235, pos = { x = -355.345, y = 136.647, z = 137.334 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100019, gadget_id = 70380311, pos = { x = -332.621, y = 128.000, z = 109.790 }, rot = { x = 0.000, y = 226.203, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100020, gadget_id = 70380312, pos = { x = -299.584, y = 135.000, z = 75.915 }, rot = { x = 0.000, y = 226.203, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100021, gadget_id = 70350085, pos = { x = -40.589, y = 142.894, z = 335.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 100022, gadget_id = 70690011, pos = { x = -353.863, y = 119.012, z = 106.210 }, rot = { x = 0.000, y = 317.896, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100023, gadget_id = 70380311, pos = { x = -313.715, y = 124.000, z = 110.962 }, rot = { x = 0.000, y = 226.630, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100024, gadget_id = 70380311, pos = { x = -466.365, y = 142.000, z = -248.761 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100025, gadget_id = 70380311, pos = { x = -411.454, y = 128.000, z = -254.570 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100026, gadget_id = 70380311, pos = { x = -440.794, y = 124.000, z = -249.126 }, rot = { x = 0.000, y = 190.128, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100027, gadget_id = 70690013, pos = { x = -478.894, y = 119.012, z = -265.714 }, rot = { x = 0.000, y = 281.394, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100028, gadget_id = 70380312, pos = { x = -440.686, y = 151.181, z = -252.067 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100029, gadget_id = 70380312, pos = { x = -389.158, y = 135.000, z = -259.508 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100030, gadget_id = 70380311, pos = { x = -465.935, y = 128.000, z = -245.277 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100031, gadget_id = 70380235, pos = { x = -499.814, y = 136.647, z = -236.786 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100032, gadget_id = 70380235, pos = { x = -143.651, y = 121.000, z = 209.048 }, rot = { x = 0.000, y = 201.085, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100033, gadget_id = 70380311, pos = { x = -314.607, y = 128.000, z = 90.774 }, rot = { x = 0.000, y = 226.203, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100034, gadget_id = 70350085, pos = { x = -47.339, y = 124.880, z = 315.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 100035, gadget_id = 70690013, pos = { x = -499.961, y = 120.000, z = -237.132 }, rot = { x = 0.000, y = 281.394, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100036, gadget_id = 70380311, pos = { x = -478.894, y = 119.012, z = -265.714 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100037, gadget_id = 70380235, pos = { x = -478.894, y = 122.000, z = -265.714 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100038, gadget_id = 70380235, pos = { x = 72.529, y = 121.000, z = 337.535 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100039, gadget_id = 70380311, pos = { x = -46.942, y = 124.000, z = 316.016 }, rot = { x = 0.000, y = 244.157, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100040, gadget_id = 70350085, pos = { x = -27.850, y = 142.883, z = 308.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 100041, gadget_id = 70380311, pos = { x = -27.854, y = 142.000, z = 308.782 }, rot = { x = 0.000, y = 243.730, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100042, gadget_id = 70380230, pos = { x = -32.346, y = 120.000, z = 323.285 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100043, gadget_id = 70380230, pos = { x = -56.287, y = 120.000, z = 369.056 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100044, gadget_id = 70380312, pos = { x = -19.612, y = 135.000, z = 292.083 }, rot = { x = 0.000, y = 243.730, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100045, gadget_id = 70690011, pos = { x = -32.346, y = 120.000, z = 323.285 }, rot = { x = 0.000, y = 310.898, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100046, gadget_id = 70350085, pos = { x = -485.580, y = 135.921, z = -240.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100047, gadget_id = 70380230, pos = { x = -323.603, y = 120.000, z = 101.319 }, rot = { x = 0.000, y = 201.677, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100048, gadget_id = 70380230, pos = { x = -289.588, y = 120.000, z = 63.590 }, rot = { x = 0.000, y = 201.677, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100049, gadget_id = 70380312, pos = { x = -344.981, y = 135.000, z = 125.365 }, rot = { x = 0.000, y = 226.203, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100050, gadget_id = 70690011, pos = { x = -323.603, y = 120.000, z = 101.319 }, rot = { x = 0.000, y = 293.371, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100052, gadget_id = 70350085, pos = { x = -310.324, y = 124.897, z = 113.951 }, rot = { x = 0.000, y = 226.630, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100053, gadget_id = 70380235, pos = { x = -289.263, y = 126.647, z = 63.781 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100054, gadget_id = 70380235, pos = { x = -289.263, y = 131.647, z = 63.781 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100055, gadget_id = 70350085, pos = { x = -42.808, y = 124.897, z = 317.845 }, rot = { x = 0.000, y = 244.157, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100056, gadget_id = 70380235, pos = { x = -289.263, y = 136.647, z = 63.781 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100057, gadget_id = 70380235, pos = { x = -147.955, y = 121.000, z = 197.886 }, rot = { x = 0.000, y = 216.431, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100058, gadget_id = 70380235, pos = { x = -155.058, y = 121.000, z = 188.261 }, rot = { x = 0.000, y = 232.865, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100059, gadget_id = 70380235, pos = { x = -164.589, y = 121.000, z = 181.044 }, rot = { x = 0.000, y = 250.987, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100060, gadget_id = 70380235, pos = { x = -175.884, y = 121.000, z = 177.152 }, rot = { x = 0.000, y = 269.446, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100061, gadget_id = 70380235, pos = { x = -187.835, y = 121.000, z = 177.037 }, rot = { x = 0.000, y = 285.560, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100062, gadget_id = 70380235, pos = { x = -199.365, y = 121.000, z = 180.247 }, rot = { x = 0.000, y = 298.050, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100063, gadget_id = 70380235, pos = { x = -209.939, y = 121.000, z = 185.881 }, rot = { x = 0.000, y = 298.050, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100064, gadget_id = 70380235, pos = { x = -324.153, y = 124.355, z = 100.155 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100065, gadget_id = 70380235, pos = { x = -324.153, y = 129.355, z = 100.155 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100066, gadget_id = 70380235, pos = { x = -324.153, y = 134.355, z = 100.155 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100067, gadget_id = 70380235, pos = { x = -404.935, y = 122.000, z = -278.262 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100068, gadget_id = 70380235, pos = { x = -218.184, y = 121.000, z = 194.446 }, rot = { x = 0.000, y = 326.442, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100069, gadget_id = 70380235, pos = { x = -224.778, y = 121.000, z = 204.387 }, rot = { x = 0.000, y = 347.291, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100070, gadget_id = 70380235, pos = { x = -227.405, y = 121.000, z = 216.035 }, rot = { x = 0.000, y = 5.551, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100071, gadget_id = 70380235, pos = { x = -226.248, y = 121.000, z = 227.936 }, rot = { x = 0.000, y = 21.451, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100072, gadget_id = 70380235, pos = { x = -221.873, y = 121.000, z = 239.071 }, rot = { x = 0.000, y = 36.797, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100073, gadget_id = 70350258, pos = { x = 83.032, y = 120.000, z = 338.150 }, rot = { x = 0.000, y = 260.085, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100074, gadget_id = 70350258, pos = { x = 64.298, y = 120.000, z = 349.397 }, rot = { x = 0.000, y = 260.085, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100075, gadget_id = 70350258, pos = { x = 50.611, y = 120.000, z = 362.861 }, rot = { x = 0.000, y = 260.085, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100076, gadget_id = 70350258, pos = { x = 64.090, y = 120.000, z = 376.288 }, rot = { x = 0.000, y = 260.085, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100077, gadget_id = 70380235, pos = { x = 50.970, y = 121.000, z = 346.991 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100078, gadget_id = 70380235, pos = { x = 43.065, y = 121.000, z = 345.763 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100079, gadget_id = 70380235, pos = { x = 35.160, y = 121.000, z = 344.534 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100080, gadget_id = 70380235, pos = { x = -214.708, y = 121.000, z = 248.650 }, rot = { x = 0.000, y = 53.231, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100081, gadget_id = 70380235, pos = { x = 64.623, y = 121.000, z = 336.307 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100082, gadget_id = 70380235, pos = { x = -87.817, y = 121.000, z = 274.954 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100083, gadget_id = 70380235, pos = { x = -205.132, y = 121.000, z = 255.805 }, rot = { x = 0.000, y = 71.352, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100084, gadget_id = 70380235, pos = { x = 35.242, y = 121.000, z = 360.281 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100085, gadget_id = 70380235, pos = { x = 27.332, y = 121.000, z = 359.084 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100086, gadget_id = 70380235, pos = { x = 19.422, y = 121.000, z = 357.888 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100087, gadget_id = 70380235, pos = { x = -193.812, y = 121.000, z = 259.625 }, rot = { x = 0.000, y = 89.812, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100088, gadget_id = 70380235, pos = { x = -94.432, y = 121.000, z = 270.454 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100089, gadget_id = 70380235, pos = { x = -181.860, y = 121.000, z = 259.665 }, rot = { x = 0.000, y = 105.925, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100090, gadget_id = 70380235, pos = { x = 56.719, y = 121.000, z = 335.078 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100091, gadget_id = 70380235, pos = { x = -55.920, y = 126.647, z = 369.140 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100092, gadget_id = 70380235, pos = { x = -55.920, y = 131.647, z = 369.140 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100093, gadget_id = 70380235, pos = { x = -55.920, y = 136.647, z = 369.140 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100094, gadget_id = 70380235, pos = { x = -33.221, y = 130.983, z = 322.341 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100095, gadget_id = 70380235, pos = { x = -33.221, y = 135.983, z = 322.341 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100096, gadget_id = 70380235, pos = { x = -33.221, y = 140.983, z = 322.341 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100097, gadget_id = 70380235, pos = { x = -355.345, y = 131.647, z = 137.334 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100098, gadget_id = 70380235, pos = { x = -355.345, y = 126.647, z = 137.334 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100099, gadget_id = 70380230, pos = { x = -355.670, y = 120.000, z = 137.143 }, rot = { x = 0.000, y = 201.677, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100100, gadget_id = 70350085, pos = { x = -466.348, y = 128.894, z = -245.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100102, gadget_id = 70380311, pos = { x = -321.026, y = 119.012, z = 71.845 }, rot = { x = 0.000, y = 226.203, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100103, gadget_id = 70350258, pos = { x = -65.995, y = 120.000, z = 265.731 }, rot = { x = 0.000, y = 237.811, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100104, gadget_id = 70380235, pos = { x = -168.912, y = 121.000, z = 237.530 }, rot = { x = 0.000, y = 140.571, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100105, gadget_id = 70350258, pos = { x = -72.021, y = 120.000, z = 285.731 }, rot = { x = 0.000, y = 237.811, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100106, gadget_id = 70380235, pos = { x = -162.595, y = 121.000, z = 229.847 }, rot = { x = 0.000, y = 163.689, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100107, gadget_id = 70380235, pos = { x = -170.352, y = 121.000, z = 256.381 }, rot = { x = 0.000, y = 118.416, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100108, gadget_id = 70380235, pos = { x = -159.814, y = 121.000, z = 250.679 }, rot = { x = 0.000, y = 118.416, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100109, gadget_id = 70380235, pos = { x = -159.809, y = 121.000, z = 220.328 }, rot = { x = 0.000, y = 188.492, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100110, gadget_id = 70380235, pos = { x = -101.046, y = 121.000, z = 265.955 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100112, gadget_id = 70350085, pos = { x = -18.381, y = 135.849, z = 292.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 100113, gadget_id = 70380235, pos = { x = -161.275, y = 121.000, z = 210.510 }, rot = { x = 0.000, y = 210.563, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100114, gadget_id = 70380235, pos = { x = -166.331, y = 121.000, z = 201.947 }, rot = { x = 0.000, y = 230.904, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100115, gadget_id = 70380235, pos = { x = -174.051, y = 121.000, z = 195.675 }, rot = { x = 0.000, y = 252.379, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100116, gadget_id = 70350258, pos = { x = -87.456, y = 120.000, z = 296.926 }, rot = { x = 0.000, y = 237.811, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100117, gadget_id = 70380235, pos = { x = -183.519, y = 121.000, z = 192.668 }, rot = { x = 0.000, y = 275.713, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100118, gadget_id = 70380235, pos = { x = -193.397, y = 121.000, z = 193.656 }, rot = { x = 0.000, y = 275.713, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100119, gadget_id = 70380235, pos = { x = -202.463, y = 121.000, z = 198.685 }, rot = { x = 0.000, y = 320.704, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100121, gadget_id = 70350258, pos = { x = -376.029, y = 120.000, z = 60.193 }, rot = { x = 0.000, y = 195.894, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100122, gadget_id = 70380235, pos = { x = -208.763, y = 121.000, z = 206.382 }, rot = { x = 0.000, y = 343.822, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100123, gadget_id = 70350258, pos = { x = -377.496, y = 120.000, z = -5.502 }, rot = { x = 0.000, y = 195.894, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100124, gadget_id = 70380235, pos = { x = -357.236, y = 121.000, z = 1.049 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100125, gadget_id = 70380235, pos = { x = -355.250, y = 121.000, z = 8.799 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100126, gadget_id = 70380235, pos = { x = -353.265, y = 121.000, z = 16.549 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100131, gadget_id = 70380235, pos = { x = -399.571, y = 121.000, z = -45.721 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100132, gadget_id = 70380235, pos = { x = -211.526, y = 121.000, z = 215.908 }, rot = { x = 0.000, y = 8.625, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100133, gadget_id = 70350258, pos = { x = -350.684, y = 120.000, z = 25.346 }, rot = { x = 0.000, y = 196.347, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100134, gadget_id = 70690013, pos = { x = -404.935, y = 119.012, z = -278.262 }, rot = { x = 0.000, y = 281.394, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100135, gadget_id = 70690013, pos = { x = -373.791, y = 120.000, z = -263.469 }, rot = { x = 0.000, y = 281.394, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100136, gadget_id = 70380235, pos = { x = -210.037, y = 121.000, z = 225.722 }, rot = { x = 0.000, y = 30.696, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100137, gadget_id = 70380311, pos = { x = -404.935, y = 119.012, z = -278.262 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100138, gadget_id = 70380235, pos = { x = -204.961, y = 121.000, z = 234.273 }, rot = { x = 0.000, y = 51.037, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100139, gadget_id = 70380235, pos = { x = -197.227, y = 121.000, z = 240.528 }, rot = { x = 0.000, y = 72.513, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100140, gadget_id = 70380235, pos = { x = -365.493, y = 121.000, z = 44.174 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100141, gadget_id = 70380235, pos = { x = -367.478, y = 121.000, z = 36.424 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100142, gadget_id = 70380235, pos = { x = -369.463, y = 121.000, z = 28.674 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100143, gadget_id = 70380235, pos = { x = -187.752, y = 121.000, z = 243.513 }, rot = { x = 0.000, y = 95.846, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100144, gadget_id = 70380235, pos = { x = -177.877, y = 121.000, z = 242.502 }, rot = { x = 0.000, y = 95.846, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100147, gadget_id = 70380230, pos = { x = -499.961, y = 120.000, z = -237.132 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100148, gadget_id = 70380235, pos = { x = -499.814, y = 126.647, z = -236.785 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100149, gadget_id = 70380235, pos = { x = -499.814, y = 131.647, z = -236.785 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100150, gadget_id = 70380235, pos = { x = -453.466, y = 137.551, z = -247.696 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100151, gadget_id = 70380235, pos = { x = -453.466, y = 132.551, z = -247.696 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100152, gadget_id = 70380235, pos = { x = -453.466, y = 127.551, z = -247.696 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100153, gadget_id = 70380235, pos = { x = -373.644, y = 136.647, z = -263.122 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100157, gadget_id = 70350085, pos = { x = -345.424, y = 135.891, z = 125.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100158, gadget_id = 70350085, pos = { x = -332.349, y = 128.885, z = 110.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100159, gadget_id = 70380311, pos = { x = -38.764, y = 119.012, z = 294.404 }, rot = { x = 0.000, y = 243.730, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100161, gadget_id = 70690011, pos = { x = -56.287, y = 120.000, z = 369.056 }, rot = { x = 0.000, y = 335.423, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100162, gadget_id = 70690011, pos = { x = -38.764, y = 119.012, z = 294.404 }, rot = { x = 0.000, y = 335.423, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100167, gadget_id = 70380235, pos = { x = -38.764, y = 122.000, z = 294.404 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100174, gadget_id = 70350085, pos = { x = -313.963, y = 124.892, z = 111.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100176, gadget_id = 70690011, pos = { x = -289.588, y = 120.000, z = 63.590 }, rot = { x = 0.000, y = 317.896, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100177, gadget_id = 70690011, pos = { x = -321.026, y = 119.012, z = 71.845 }, rot = { x = 0.000, y = 317.896, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100181, gadget_id = 70380235, pos = { x = -373.644, y = 131.647, z = -263.122 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100182, gadget_id = 70380235, pos = { x = -373.644, y = 126.647, z = -263.122 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100183, gadget_id = 70350085, pos = { x = -439.846, y = 124.897, z = -244.706 }, rot = { x = 0.000, y = 190.128, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100189, gadget_id = 70380235, pos = { x = -321.026, y = 122.000, z = 71.845 }, rot = { x = 0.000, y = 225.069, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100194, gadget_id = 70350085, pos = { x = -314.412, y = 128.886, z = 90.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100196, gadget_id = 70350085, pos = { x = -298.744, y = 135.880, z = 75.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100197, gadget_id = 70690013, pos = { x = -453.716, y = 120.000, z = -246.433 }, rot = { x = 0.000, y = 256.869, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100198, gadget_id = 70380312, pos = { x = -484.363, y = 135.000, z = -240.242 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100199, gadget_id = 70380230, pos = { x = -373.791, y = 120.000, z = -263.469 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100200, gadget_id = 70380230, pos = { x = -453.716, y = 120.000, z = -246.433 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100201, gadget_id = 70380230, pos = { x = -425.431, y = 120.000, z = -251.643 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100202, gadget_id = 70690013, pos = { x = -425.431, y = 120.000, z = -251.643 }, rot = { x = 0.000, y = 256.869, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100203, gadget_id = 70380235, pos = { x = -425.181, y = 126.804, z = -252.905 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100204, gadget_id = 70380235, pos = { x = -425.181, y = 131.804, z = -252.905 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100205, gadget_id = 70380235, pos = { x = -425.181, y = 136.804, z = -252.905 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100210, gadget_id = 70380311, pos = { x = -411.633, y = 142.000, z = -258.117 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100211, gadget_id = 70380235, pos = { x = -444.072, y = 122.000, z = -272.433 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100212, gadget_id = 70380312, pos = { x = -444.072, y = 119.012, z = -272.433 }, rot = { x = 0.000, y = 189.701, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100229, gadget_id = 70350085, pos = { x = -441.235, y = 124.895, z = -248.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 100230, gadget_id = 70350085, pos = { x = -411.513, y = 128.885, z = -254.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 100231, gadget_id = 70350085, pos = { x = -388.547, y = 135.885, z = -259.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 100254, gadget_id = 70350085, pos = { x = -485.580, y = 135.921, z = -240.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100255, gadget_id = 70350085, pos = { x = -466.410, y = 142.887, z = -248.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 100256, gadget_id = 70350085, pos = { x = -440.650, y = 152.037, z = -250.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 100264, gadget_id = 70690013, pos = { x = -444.072, y = 119.012, z = -272.433 }, rot = { x = 0.000, y = 281.394, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100271, gadget_id = 70350085, pos = { x = -411.642, y = 142.885, z = -257.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 100272, gadget_id = 70350085, pos = { x = -389.285, y = 135.884, z = -259.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 100288, gadget_id = 70380230, pos = { x = -11.970, y = 120.000, z = 306.034 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100289, gadget_id = 70380230, pos = { x = -32.689, y = 120.000, z = 351.759 }, rot = { x = 0.000, y = 219.204, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100292, gadget_id = 70310420, pos = { x = -51.791, y = 115.669, z = 400.929 }, rot = { x = 0.000, y = 68.361, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 100293, gadget_id = 70310420, pos = { x = -363.210, y = 115.410, z = 165.707 }, rot = { x = 0.000, y = 30.446, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100294, gadget_id = 70310420, pos = { x = -505.961, y = 115.793, z = -207.281 }, rot = { x = 0.000, y = 36.948, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100336, gadget_id = 70380235, pos = { x = -422.856, y = 121.000, z = -70.940 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100338, gadget_id = 70380235, pos = { x = -409.167, y = 121.000, z = -84.559 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100361, gadget_id = 70350258, pos = { x = -244.334, y = 120.000, z = 171.310 }, rot = { x = 0.000, y = 229.755, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100362, gadget_id = 70350258, pos = { x = -262.461, y = 120.000, z = 192.726 }, rot = { x = 0.000, y = 229.755, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100363, gadget_id = 70350258, pos = { x = -227.004, y = 120.000, z = 150.835 }, rot = { x = 0.000, y = 229.755, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100367, gadget_id = 70380235, pos = { x = -406.717, y = 121.000, z = -74.993 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100369, gadget_id = 70380235, pos = { x = -401.893, y = 121.000, z = -55.255 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100371, gadget_id = 70380235, pos = { x = -417.398, y = 121.000, z = -82.829 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100372, gadget_id = 70380235, pos = { x = -425.115, y = 121.000, z = -80.680 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100374, gadget_id = 70380235, pos = { x = -386.709, y = 121.000, z = 24.814 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100375, gadget_id = 70380235, pos = { x = -384.723, y = 121.000, z = 32.564 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100376, gadget_id = 70380235, pos = { x = -382.738, y = 121.000, z = 40.313 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100377, gadget_id = 70380235, pos = { x = -404.283, y = 121.000, z = -64.965 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100378, gadget_id = 70380235, pos = { x = -415.710, y = 121.000, z = -41.669 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100379, gadget_id = 70380235, pos = { x = -418.032, y = 121.000, z = -51.202 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100381, gadget_id = 70380235, pos = { x = -420.422, y = 121.000, z = -60.912 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100382, gadget_id = 70380235, pos = { x = -407.663, y = 121.000, z = -43.565 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100383, gadget_id = 70380235, pos = { x = -387.659, y = 121.000, z = -58.849 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100385, gadget_id = 70380235, pos = { x = -385.337, y = 121.000, z = -49.316 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100386, gadget_id = 70380235, pos = { x = -374.508, y = 121.000, z = -72.461 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100387, gadget_id = 70380235, pos = { x = -394.742, y = 121.000, z = -88.328 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100388, gadget_id = 70380235, pos = { x = -387.412, y = 121.000, z = -90.354 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100389, gadget_id = 70380235, pos = { x = -372.118, y = 121.000, z = -62.751 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100390, gadget_id = 70380235, pos = { x = -369.796, y = 121.000, z = -53.218 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100392, gadget_id = 70380235, pos = { x = -376.942, y = 121.000, z = -82.489 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100398, gadget_id = 70380235, pos = { x = -379.392, y = 121.000, z = -92.056 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100400, gadget_id = 70380235, pos = { x = -392.483, y = 121.000, z = -78.587 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100407, gadget_id = 70380235, pos = { x = -377.677, y = 121.000, z = -51.090 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100408, gadget_id = 70380235, pos = { x = -390.049, y = 121.000, z = -68.559 }, rot = { x = 0.000, y = 13.828, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100414, gadget_id = 70350258, pos = { x = -389.412, y = 120.000, z = -138.606 }, rot = { x = 0.000, y = 193.988, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100415, gadget_id = 70350258, pos = { x = -405.760, y = 120.000, z = -134.692 }, rot = { x = 0.000, y = 193.988, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100416, gadget_id = 70350258, pos = { x = -421.361, y = 120.000, z = -130.760 }, rot = { x = 0.000, y = 193.988, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100417, gadget_id = 70350258, pos = { x = -436.057, y = 120.000, z = -127.130 }, rot = { x = 0.000, y = 193.988, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100420, gadget_id = 70310420, pos = { x = -133.574, y = 115.669, z = 314.221 }, rot = { x = 0.000, y = 68.361, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100421, gadget_id = 70310420, pos = { x = -133.574, y = 107.723, z = 314.221 }, rot = { x = 0.000, y = 68.361, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100424, gadget_id = 70310420, pos = { x = -363.210, y = 107.386, z = 165.707 }, rot = { x = 0.000, y = 30.446, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100425, gadget_id = 70310420, pos = { x = -401.218, y = 115.410, z = 67.785 }, rot = { x = 0.000, y = 30.446, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100426, gadget_id = 70310420, pos = { x = -401.218, y = 107.386, z = 67.785 }, rot = { x = 0.000, y = 30.446, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100429, gadget_id = 70310420, pos = { x = -505.961, y = 106.885, z = -207.281 }, rot = { x = 0.000, y = 36.948, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 100430, gadget_id = 70380230, pos = { x = -309.526, y = 120.000, z = 58.428 }, rot = { x = 0.000, y = 201.677, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100431, gadget_id = 70380230, pos = { x = -336.562, y = 120.000, z = 88.631 }, rot = { x = 0.000, y = 201.677, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100432, gadget_id = 70380230, pos = { x = -367.765, y = 120.000, z = 120.310 }, rot = { x = 0.000, y = 201.677, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100433, gadget_id = 70380230, pos = { x = -394.990, y = 120.000, z = -246.729 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100434, gadget_id = 70380230, pos = { x = -471.799, y = 120.000, z = -230.942 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 100435, gadget_id = 70380230, pos = { x = -463.770, y = 120.000, z = -268.686 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100436, gadget_id = 70380230, pos = { x = -422.037, y = 120.000, z = -276.280 }, rot = { x = 0.000, y = 165.176, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 100438, gadget_id = 70380235, pos = { x = 55.264, y = 121.000, z = 375.394 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100439, gadget_id = 70380235, pos = { x = 47.359, y = 121.000, z = 374.166 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 },
	{ config_id = 100440, gadget_id = 70380235, pos = { x = 39.454, y = 121.000, z = 372.937 }, rot = { x = 0.000, y = 235.559, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
	-- 消除icon指引
	{ config_id = 100213, shape = RegionShape.POLYGON, pos = { x = -25.804, y = 200.000, z = 327.737 }, height = 200.000, point_array = { { x = -26.705, y = 243.851 }, { x = -89.153, y = 381.114 }, { x = -22.650, y = 411.624 }, { x = 37.544, y = 274.995 } }, area_id = 402 },
	{ config_id = 100214, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -55.582, y = 115.585, z = 314.396 }, height = 10.000, area_id = 402 },
	{ config_id = 100215, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -330.941, y = 115.585, z = 94.862 }, height = 10.000, area_id = 403 },
	{ config_id = 100216, shape = RegionShape.CYLINDER, radius = 70, pos = { x = -453.926, y = 115.585, z = -250.479 }, height = 10.000, area_id = 400 },
	-- 消除icon指引
	{ config_id = 100217, shape = RegionShape.POLYGON, pos = { x = -315.521, y = 190.975, z = 117.602 }, height = 218.051, point_array = { { x = -282.159, y = 21.666 }, { x = -413.547, y = 140.502 }, { x = -344.922, y = 213.537 }, { x = -217.494, y = 97.612 } }, area_id = 403 },
	-- 消除icon
	{ config_id = 100218, shape = RegionShape.POLYGON, pos = { x = -430.971, y = 200.000, z = -245.064 }, height = 200.000, point_array = { { x = -358.571, y = -300.045 }, { x = -513.668, y = -283.089 }, { x = -504.182, y = -190.082 }, { x = -348.274, y = -209.282 } }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1100120, name = "ANY_MONSTER_DIE_100120", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100120", action = "action_EVENT_ANY_MONSTER_DIE_100120" },
	{ config_id = 1100127, name = "ANY_MONSTER_DIE_100127", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100127", action = "action_EVENT_ANY_MONSTER_DIE_100127" },
	{ config_id = 1100128, name = "ANY_MONSTER_DIE_100128", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100128", action = "action_EVENT_ANY_MONSTER_DIE_100128" },
	{ config_id = 1100129, name = "ANY_MONSTER_DIE_100129", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100129", action = "action_EVENT_ANY_MONSTER_DIE_100129" },
	{ config_id = 1100130, name = "ANY_MONSTER_DIE_100130", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100130", action = "action_EVENT_ANY_MONSTER_DIE_100130" },
	-- 消除icon指引
	{ config_id = 1100213, name = "ENTER_REGION_100213", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_100213", action = "action_EVENT_ENTER_REGION_100213", trigger_count = 0, forbid_guest = false },
	-- 消除icon指引
	{ config_id = 1100217, name = "ENTER_REGION_100217", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_100217", action = "action_EVENT_ENTER_REGION_100217", trigger_count = 0, forbid_guest = false },
	-- 消除icon
	{ config_id = 1100218, name = "ENTER_REGION_100218", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_100218", action = "action_EVENT_ENTER_REGION_100218", trigger_count = 0, forbid_guest = false },
	{ config_id = 1100221, name = "ANY_MONSTER_DIE_100221", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100221", action = "action_EVENT_ANY_MONSTER_DIE_100221" },
	{ config_id = 1100222, name = "ANY_MONSTER_DIE_100222", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100222", action = "action_EVENT_ANY_MONSTER_DIE_100222" },
	{ config_id = 1100223, name = "ANY_MONSTER_DIE_100223", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100223", action = "action_EVENT_ANY_MONSTER_DIE_100223" },
	{ config_id = 1100224, name = "ANY_MONSTER_DIE_100224", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100224", action = "action_EVENT_ANY_MONSTER_DIE_100224" },
	{ config_id = 1100228, name = "ANY_MONSTER_DIE_100228", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100228", action = "action_EVENT_ANY_MONSTER_DIE_100228" },
	{ config_id = 1100244, name = "ANY_MONSTER_DIE_100244", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100244", action = "action_EVENT_ANY_MONSTER_DIE_100244" },
	{ config_id = 1100248, name = "ANY_MONSTER_DIE_100248", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100248", action = "action_EVENT_ANY_MONSTER_DIE_100248" },
	{ config_id = 1100249, name = "ANY_MONSTER_DIE_100249", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100249", action = "action_EVENT_ANY_MONSTER_DIE_100249" },
	{ config_id = 1100250, name = "ANY_MONSTER_DIE_100250", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100250", action = "action_EVENT_ANY_MONSTER_DIE_100250" },
	{ config_id = 1100251, name = "ANY_MONSTER_DIE_100251", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100251", action = "action_EVENT_ANY_MONSTER_DIE_100251" },
	{ config_id = 1100273, name = "ANY_MONSTER_DIE_100273", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100273", action = "action_EVENT_ANY_MONSTER_DIE_100273" },
	{ config_id = 1100274, name = "ANY_MONSTER_DIE_100274", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100274", action = "action_EVENT_ANY_MONSTER_DIE_100274" },
	{ config_id = 1100275, name = "ANY_MONSTER_DIE_100275", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100275", action = "action_EVENT_ANY_MONSTER_DIE_100275" },
	{ config_id = 1100276, name = "ANY_MONSTER_DIE_100276", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100276", action = "action_EVENT_ANY_MONSTER_DIE_100276" },
	{ config_id = 1100277, name = "ANY_MONSTER_DIE_100277", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100277", action = "action_EVENT_ANY_MONSTER_DIE_100277" }
}

-- 点位
points = {
	-- 联机传送目标点1
	{ config_id = 100284, pos = { x = 132.618, y = 120.000, z = 354.772 }, rot = { x = 0.000, y = 267.925, z = 0.000 }, area_id = 402 },
	-- 联机传送目标点2
	{ config_id = 100285, pos = { x = 132.527, y = 120.000, z = 358.536 }, rot = { x = 0.000, y = 267.925, z = 0.000 }, area_id = 402 },
	-- 联机传送目标点3
	{ config_id = 100286, pos = { x = 136.010, y = 120.000, z = 354.878 }, rot = { x = 0.000, y = 267.925, z = 0.000 }, area_id = 402 },
	-- 联机传送目标点4
	{ config_id = 100287, pos = { x = 135.684, y = 120.000, z = 358.883 }, rot = { x = 0.000, y = 267.925, z = 0.000 }, area_id = 402 },
	-- 安全点-2
	{ config_id = 100295, pos = { x = -52.592, y = 121.089, z = 402.104 }, rot = { x = 0.000, y = 186.566, z = 0.000 }, area_id = 402 },
	-- 安全点-4
	{ config_id = 100296, pos = { x = -364.367, y = 120.805, z = 166.052 }, rot = { x = 0.000, y = 158.499, z = 0.000 }, area_id = 403 },
	-- 安全点-6
	{ config_id = 100297, pos = { x = -507.143, y = 121.197, z = -206.761 }, rot = { x = 0.000, y = 153.890, z = 0.000 }, area_id = 403 },
	-- 船的初始创生点
	{ config_id = 100298, pos = { x = 113.793, y = 120.000, z = 369.084 }, rot = { x = 0.000, y = 269.157, z = 0.000 }, area_id = 402 },
	-- 船的初始创生点
	{ config_id = 100299, pos = { x = 114.128, y = 120.000, z = 361.244 }, rot = { x = 0.000, y = 269.157, z = 0.000 }, area_id = 402 },
	-- 船的初始创生点
	{ config_id = 100300, pos = { x = 114.378, y = 120.000, z = 353.452 }, rot = { x = 0.000, y = 269.157, z = 0.000 }, area_id = 402 },
	-- 船的初始创生点
	{ config_id = 100301, pos = { x = 114.694, y = 120.000, z = 345.668 }, rot = { x = 0.000, y = 269.157, z = 0.000 }, area_id = 402 },
	-- 创船点-2
	{ config_id = 100302, pos = { x = -52.616, y = 120.000, z = 395.211 }, rot = { x = 0.000, y = 183.885, z = 0.000 }, area_id = 402 },
	-- 创船点-4
	{ config_id = 100303, pos = { x = -359.744, y = 120.000, z = 161.619 }, rot = { x = 0.000, y = 164.112, z = 0.000 }, area_id = 403 },
	-- 创船点-6
	{ config_id = 100304, pos = { x = -503.438, y = 120.000, z = -214.796 }, rot = { x = 0.000, y = 151.873, z = 0.000 }, area_id = 403 },
	-- 安全点-1
	{ config_id = 100418, pos = { x = 103.469, y = 120.000, z = 356.382 }, rot = { x = 0.000, y = 268.511, z = 0.000 }, area_id = 402 },
	-- 创船点-1
	{ config_id = 100419, pos = { x = 97.010, y = 120.000, z = 356.127 }, rot = { x = 0.000, y = 266.639, z = 0.000 }, area_id = 402 },
	-- 安全点-3
	{ config_id = 100422, pos = { x = -134.184, y = 121.051, z = 315.408 }, rot = { x = 0.000, y = 198.662, z = 0.000 }, area_id = 403 },
	-- 创船点-3
	{ config_id = 100423, pos = { x = -133.149, y = 120.000, z = 307.978 }, rot = { x = 0.000, y = 195.984, z = 0.000 }, area_id = 403 },
	-- 安全点-5
	{ config_id = 100427, pos = { x = -402.215, y = 120.850, z = 68.963 }, rot = { x = 0.000, y = 164.202, z = 0.000 }, area_id = 403 },
	-- 创船点-5
	{ config_id = 100428, pos = { x = -399.513, y = 120.000, z = 63.280 }, rot = { x = 0.000, y = 175.131, z = 0.000 }, area_id = 403 }
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
		gadgets = { 100104, 100106, 100109, 100113, 100114, 100115, 100117, 100118, 100119, 100122, 100132, 100136, 100138, 100139, 100143, 100144 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 阶段1——航行,
		monsters = { },
		gadgets = { 100001, 100002, 100004, 100006, 100007, 100008, 100010, 100012, 100038, 100039, 100041, 100042, 100043, 100044, 100055, 100073, 100074, 100075, 100076, 100077, 100078, 100079, 100081, 100084, 100085, 100086, 100090, 100091, 100092, 100093, 100094, 100095, 100096, 100159, 100167, 100288, 100289, 100292, 100438, 100439, 100440 },
		regions = { 100213, 100214 },
		triggers = { "ENTER_REGION_100213" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 阶段2——战斗,
		monsters = { 100219, 100220, 100225, 100226, 100227 },
		gadgets = { 100003, 100021, 100034, 100040, 100112 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100120", "ANY_MONSTER_DIE_100127", "ANY_MONSTER_DIE_100128", "ANY_MONSTER_DIE_100129", "ANY_MONSTER_DIE_100130" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 阶段3——航行,
		monsters = { },
		gadgets = { 100005, 100013, 100014, 100015, 100016, 100018, 100019, 100020, 100023, 100032, 100033, 100047, 100048, 100049, 100052, 100053, 100054, 100056, 100057, 100058, 100059, 100060, 100061, 100062, 100063, 100064, 100065, 100066, 100068, 100069, 100070, 100071, 100072, 100080, 100082, 100083, 100087, 100088, 100089, 100097, 100098, 100099, 100102, 100103, 100105, 100107, 100108, 100110, 100116, 100189, 100293, 100361, 100362, 100363, 100420, 100421, 100424, 100430, 100431, 100432 },
		regions = { 100215, 100217 },
		triggers = { "ENTER_REGION_100217" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 阶段4——战斗,
		monsters = { 100195, 100243, 100245, 100246, 100247 },
		gadgets = { 100157, 100158, 100174, 100194, 100196 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100221", "ANY_MONSTER_DIE_100222", "ANY_MONSTER_DIE_100223", "ANY_MONSTER_DIE_100224", "ANY_MONSTER_DIE_100228" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 阶段5——航行,
		monsters = { },
		gadgets = { 100024, 100025, 100026, 100028, 100029, 100030, 100031, 100036, 100037, 100067, 100121, 100123, 100124, 100125, 100126, 100131, 100133, 100137, 100140, 100141, 100142, 100147, 100148, 100149, 100150, 100151, 100152, 100153, 100181, 100182, 100183, 100198, 100199, 100200, 100201, 100203, 100204, 100205, 100210, 100211, 100212, 100294, 100336, 100338, 100367, 100369, 100371, 100372, 100374, 100375, 100376, 100377, 100378, 100379, 100381, 100382, 100383, 100385, 100386, 100387, 100388, 100389, 100390, 100392, 100398, 100400, 100407, 100408, 100414, 100415, 100416, 100417, 100425, 100426, 100429, 100433, 100434, 100435, 100436 },
		regions = { 100216, 100218 },
		triggers = { "ENTER_REGION_100218" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 阶段6——战斗,
		monsters = { 100051, 100101, 100111, 100156, 100175 },
		gadgets = { 100046, 100100, 100229, 100230, 100231 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100244", "ANY_MONSTER_DIE_100248", "ANY_MONSTER_DIE_100249", "ANY_MONSTER_DIE_100250", "ANY_MONSTER_DIE_100251" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 阶段6——战斗,
		monsters = { 100178, 100179, 100180, 100185, 100269 },
		gadgets = { 100254, 100255, 100256, 100271, 100272 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100273", "ANY_MONSTER_DIE_100274", "ANY_MONSTER_DIE_100275", "ANY_MONSTER_DIE_100276", "ANY_MONSTER_DIE_100277" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100120(context, evt)
	--判断死亡怪物的configid是否为 100220
	if evt.param1 ~= 100220 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100120(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100127(context, evt)
	--判断死亡怪物的configid是否为 100225
	if evt.param1 ~= 100225 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100127(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100128(context, evt)
	--判断死亡怪物的configid是否为 100219
	if evt.param1 ~= 100219 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100128(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100034 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100129(context, evt)
	--判断死亡怪物的configid是否为 100226
	if evt.param1 ~= 100226 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100129(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100040 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100130(context, evt)
	--判断死亡怪物的configid是否为 100227
	if evt.param1 ~= 100227 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100130(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100112 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_100213(context, evt)
	if evt.param1 ~= 100213 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_100213(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100055 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_100217(context, evt)
	if evt.param1 ~= 100217 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_100217(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100052 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_100218(context, evt)
	if evt.param1 ~= 100218 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_100218(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100183 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100221(context, evt)
	--判断死亡怪物的configid是否为 100247
	if evt.param1 ~= 100247 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100221(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100157 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100222(context, evt)
	--判断死亡怪物的configid是否为 100245
	if evt.param1 ~= 100245 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100222(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100158 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100223(context, evt)
	--判断死亡怪物的configid是否为 100195
	if evt.param1 ~= 100195 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100223(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100174 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100224(context, evt)
	--判断死亡怪物的configid是否为 100243
	if evt.param1 ~= 100243 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100224(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100194 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100228(context, evt)
	--判断死亡怪物的configid是否为 100246
	if evt.param1 ~= 100246 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100228(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100196 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100244(context, evt)
	--判断死亡怪物的configid是否为 100051
	if evt.param1 ~= 100051 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100244(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100046 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100248(context, evt)
	--判断死亡怪物的configid是否为 100156
	if evt.param1 ~= 100156 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100248(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100100 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100249(context, evt)
	--判断死亡怪物的configid是否为 100175
	if evt.param1 ~= 100175 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100249(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100229 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100250(context, evt)
	--判断死亡怪物的configid是否为 100101
	if evt.param1 ~= 100101 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100250(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100230 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100251(context, evt)
	--判断死亡怪物的configid是否为 100111
	if evt.param1 ~= 100111 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100251(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100231 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100273(context, evt)
	--判断死亡怪物的configid是否为 100180
	if evt.param1 ~= 100180 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100273(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100254 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100274(context, evt)
	--判断死亡怪物的configid是否为 100269
	if evt.param1 ~= 100269 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100274(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100255 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100275(context, evt)
	--判断死亡怪物的configid是否为 100178
	if evt.param1 ~= 100178 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100275(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100256 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100276(context, evt)
	--判断死亡怪物的configid是否为 100185
	if evt.param1 ~= 100185 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100276(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100271 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100277(context, evt)
	--判断死亡怪物的configid是否为 100179
	if evt.param1 ~= 100179 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100277(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 100272 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

require "V2_8/SocialActivity_Common"
require "V2_8/SocialActivity_SailChallenge"
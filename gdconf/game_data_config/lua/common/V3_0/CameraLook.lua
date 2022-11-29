--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]

--[[======================================
||	filename:       CameraLook
||	owner:          zijun.ma
||	description:    方便LD调用的绝对注目Action
||	LogName:        TD_CameraLook
||	Protection:     [Protection]
=======================================]]


local CameraLookPlay = {
    CameraPointCid = defs.point_camera,
    LookEntityCid = defs.gadget_lookEntity,
    Duration = defs.look_duration,
}

--[[
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
}
--]]
--[[=====================================
||	action函数
--======================================]]
function LF_PointLook(context)
    -- 触发镜头注目，注目位置为坐标{x=-3024.84, y=268.74, z=4872.4}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
    if CameraLookPlay.LookEntityCid == nil or CameraLookPlay.CameraPointCid == nil then
        ScriptLib.PrintContextLog(context, "## TD_CameraLook Misc 配置非法")
        return -1
    end


    if gadgets[CameraLookPlay.LookEntityCid] == nil then
        ScriptLib.PrintContextLog(context, "## TD_CameraLook LookPosInfo 配置非法")
        return 0
    end
    local LookPosInfo = gadgets[CameraLookPlay.LookEntityCid]

    if points[CameraLookPlay.CameraPointCid] == nil then
        ScriptLib.PrintContextLog(context, "## TD_CameraLook CameraPointInfo 配置非法")
        return 0
    end
    local CameraPointInfo = points[CameraLookPlay.CameraPointCid]

    local lookPos = LookPosInfo.pos
    local cameraPos = CameraPointInfo.pos
    ScriptLib.BeginCameraSceneLook(context,
            { look_pos = lookPos,
              is_allow_input = CameraLookSetting.is_allow_input,
              is_force = true,
              is_broadcast = false,
              is_recover_keep_current = true,
              is_set_follow_pos = true,
              is_abs_follow_pos = true,
              follow_pos = cameraPos,
              is_force_walk = CameraLookSetting.is_force_walk,
              duration = CameraLookPlay.Duration,
              delay = CameraLookSetting.delay,
              blend_type = CameraLookSetting.blend_type,
              blend_duration = CameraLookSetting.blend_duration,
              disable_protect = 1,
            })
    return 0
end

local LASER_FX = script:GetCustomProperty("LaserBeamVFX")
local GAME_MANAGER = require(script:GetCustomProperty("TowerDefenders_GameManager"))
local CoolEffect = require("3FA32407A403C36C")
--local RADIAL_VIEW = require(script:GetCustomProperty("TowerDefenders_RadialView"))
local ProgressBar = script:GetCustomProperty("UIProgressBar"):WaitForObject()
local COOL_DOWN_TIMER = script:GetCustomProperty("CoolDownTimer")
local ORBITAL_BALL = script:GetCustomProperty("OrbitalBall"):WaitForObject()
-- local ORBITAL_MOVEMENT = require(script:GetCustomProperty("OrbitMovement"))
local Ease3D = require(script:GetCustomProperty("Ease3D"))


local LOCAL_PLAYER = Game:GetLocalPlayer()

local FIRE_BIND = "ability_primary"

local COOL_DOWN_DIVISIONS = 100
local onCoolDown = false
local timeAtFire
local interval = 1 / COOL_DOWN_DIVISIONS
ProgressBar.progress = 1



--circle equation 
-- (x - h)^2 + (y - k)^2 = r^2

-- print("getting board")
local board = GAME_MANAGER.WaitForBoardFromPlayer(LOCAL_PLAYER)
-- print("got board")

function OnBindingPressed(LOCAL_PLAYER, binding)
    if binding == FIRE_BIND  and not onCoolDown then
        if CheckView() then
            local hitResult = UI.GetCursorHitResult()
            if(hitResult) then
                local hitPos = Vector3.New(hitResult:GetImpactPosition())
                PlayAnimation(hitPos)
                DamageEnemies(hitResult)
                onCoolDown = true
                ProgressBar.progress = 0
                CoolEffect:Play("sound01")
                Task.Wait(COOL_DOWN_TIMER)
                -- timeAtFire = time()
                -- UpdateProgressBar()
                onCoolDown = false
                CoolEffect:Play("sound02")
            else
                print("hit result nil")
            end
        end
    end
end

function CheckView()
    -- print("Checking view")
    local buildMenu = LOCAL_PLAYER.clientUserData.buildMenuView
    local towerMenu = LOCAL_PLAYER.clientUserData.towerMenuView
    local towerPlacer = LOCAL_PLAYER.clientUserData.towerPlacer
    local upgraderSelector = LOCAL_PLAYER.clientUserData.upgradeSelector

    return true
    -- Task.Wait()
    -- if buildMenu:IsVisible() or towerMenu:IsVisible() or towerPlacer:IsActive() or upgraderSelector:IsActive() then
    --     -- print("Menu open or placing turret")
    --     return false
    -- else
    --     -- print("Nothing open")
    --     return true
    -- end
end

function DamageEnemies(hitResult)
	CoolEffect:Play("sound03")
    Events.BroadcastToServer("OLD", hitResult:GetImpactPosition())
end

function PlayAnimation(hitPos) 
    --LASER_VFX:SetWorldPosition(hitPos)
    -- LASER_VFX.visibilty = Visibility.FORCE_ON
    CoolEffect:Play("sound04")

    local laser69 
    laser69 = World.SpawnAsset(LASER_FX, {position = ORBITAL_BALL:GetWorldPosition()})
    Ease3D.EaseWorldPosition(laser69, hitPos, .5, Ease3D.EasingEquation.EXPONENTIAL)
    Task.Spawn(function() 
        Task.Wait(1)    
        laser69:Destroy()
    end)

    -- LASER_VFX:Play()
    -- Task.Wait()
    -- LASER_VFX:Stop()
    -- LASER_VFX.visibilty = Visibility.FORCE_OFF
end

function IsBoard(hitResult)
end

-- function UpdateProgressBar()
--     local currTime = time()
--     while currTime < timeAtFire + COOL_DOWN_TIMER do
--         ProgressBar.progress = ProgressBar.progress + (interval * (1 / COOL_DOWN_TIMER))
--         -- Task.Wait(interval)
--         currTime = time()

--     -- local interval = 1 / COOL_DOWN_DIVISIONS
--     -- while ProgressBar.progress < 1 do
--     --     ProgressBar.progress = ProgressBar.progress + (interval * (1 / COOL_DOWN))
--     --     Task.Wait(interval)
--     end
-- end

function Tick(dt)
    if (ProgressBar.progress < 1) then
        ProgressBar.progress = CoreMath.Clamp(ProgressBar.progress + (dt * (1 / COOL_DOWN_TIMER)))
    end
    -- Orbit(dt)
end

-- function Orbit(dt)
--     time = time + dt * ORBIT_SPEED
--     local position = Vector3.New((math.cos(time) * ORBIT_RADIUS) + ORBIT_OFFSET.x, (math.sin(time) * ORBIT_RADIUS) + ORBIT_OFFSET.y, ORBIT_OFFSET.z)
--     ORBITAL_BALL:SetWorldPosition(position)
-- end


LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
.class public Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;
.super Ljava/lang/Object;
.source "DoubleIntegrator3D.java"


# instance fields
.field alpha:F

.field dcBlockFilterAcc:Z

.field filter1:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

.field filter2:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

.field filter3:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

.field period:F

.field position:Lcom/hcrest/sensors/util/Vector3D;

.field raw_pos:Lcom/hcrest/sensors/util/Vector3D;

.field raw_vel:Lcom/hcrest/sensors/util/Vector3D;

.field velocity:Lcom/hcrest/sensors/util/Vector3D;


# direct methods
.method public constructor <init>(FZF)V
    .locals 2
    .param p1, "forgetFactor"    # F
    .param p2, "dcBlockFilterAcc"    # Z
    .param p3, "period"    # F

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->velocity:Lcom/hcrest/sensors/util/Vector3D;

    .line 14
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    .line 15
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_vel:Lcom/hcrest/sensors/util/Vector3D;

    .line 16
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    .line 18
    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->filter1:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    .line 19
    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->filter2:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    .line 20
    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->filter3:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->dcBlockFilterAcc:Z

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->alpha:F

    .line 29
    iput-boolean p2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->dcBlockFilterAcc:Z

    .line 30
    iput p3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->period:F

    .line 31
    invoke-virtual {p0}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->reset()V

    .line 32
    return-void
.end method


# virtual methods
.method public process(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 1
    .param p1, "input"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 56
    iget v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->period:F

    invoke-virtual {p0, p1, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->process(Lcom/hcrest/sensors/util/Vector3D;F)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/hcrest/sensors/util/Vector3D;F)Lcom/hcrest/sensors/util/Vector3D;
    .locals 3
    .param p1, "input"    # Lcom/hcrest/sensors/util/Vector3D;
    .param p2, "period"    # F

    .prologue
    .line 61
    iget-boolean v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->dcBlockFilterAcc:Z

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->filter1:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    invoke-virtual {v1, p1}, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->filter(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v0

    .line 71
    .local v0, "acc":Lcom/hcrest/sensors/util/Vector3D;
    :goto_0
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_vel:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v1, p2, v0}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_vel:Lcom/hcrest/sensors/util/Vector3D;

    .line 74
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->filter2:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_vel:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v1, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->filter(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->velocity:Lcom/hcrest/sensors/util/Vector3D;

    .line 76
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->velocity:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v1, p2, v2}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    .line 80
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    .line 82
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    return-object v1

    .line 68
    .end local v0    # "acc":Lcom/hcrest/sensors/util/Vector3D;
    :cond_0
    move-object v0, p1

    .restart local v0    # "acc":Lcom/hcrest/sensors/util/Vector3D;
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->velocity:Lcom/hcrest/sensors/util/Vector3D;

    .line 36
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    .line 37
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_vel:Lcom/hcrest/sensors/util/Vector3D;

    .line 38
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    .line 40
    new-instance v0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    iget v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->alpha:F

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;-><init>(F)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->filter1:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    .line 41
    new-instance v0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    iget v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->alpha:F

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;-><init>(F)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->filter2:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    .line 42
    new-instance v0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    iget v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->alpha:F

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;-><init>(F)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->filter3:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    .line 43
    return-void
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    .line 47
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    .line 48
    return-void
.end method

.method public resetVelocity()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->velocity:Lcom/hcrest/sensors/util/Vector3D;

    .line 52
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->raw_vel:Lcom/hcrest/sensors/util/Vector3D;

    .line 53
    return-void
.end method

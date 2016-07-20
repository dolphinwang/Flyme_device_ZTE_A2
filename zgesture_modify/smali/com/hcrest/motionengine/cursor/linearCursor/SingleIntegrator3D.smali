.class public Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;
.super Ljava/lang/Object;
.source "SingleIntegrator3D.java"


# instance fields
.field alpha:F

.field filter1:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

.field period:F

.field position:Lcom/hcrest/sensors/util/Vector3D;

.field raw_pos:Lcom/hcrest/sensors/util/Vector3D;


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "forgetFactor"    # F
    .param p2, "period"    # F

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    .line 15
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->filter1:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->alpha:F

    .line 24
    iput p2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->period:F

    .line 25
    invoke-virtual {p0}, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->reset()V

    .line 26
    return-void
.end method


# virtual methods
.method public process(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 1
    .param p1, "input"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 41
    iget v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->period:F

    invoke-virtual {p0, p1, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->process(Lcom/hcrest/sensors/util/Vector3D;F)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/hcrest/sensors/util/Vector3D;F)Lcom/hcrest/sensors/util/Vector3D;
    .locals 2
    .param p1, "input"    # Lcom/hcrest/sensors/util/Vector3D;
    .param p2, "period"    # F

    .prologue
    .line 45
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->filter1:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    invoke-virtual {v1, p1}, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->filter(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v0

    .line 46
    .local v0, "velocity":Lcom/hcrest/sensors/util/Vector3D;
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v1, p2, v0}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    .line 47
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    .line 48
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    return-object v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    .line 30
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    .line 32
    new-instance v0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    iget v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->alpha:F

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;-><init>(F)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->filter1:Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;

    .line 33
    return-void
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->position:Lcom/hcrest/sensors/util/Vector3D;

    .line 37
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->raw_pos:Lcom/hcrest/sensors/util/Vector3D;

    .line 38
    return-void
.end method

.class public Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;
.super Ljava/lang/Object;
.source "DCBlockFilter3D.java"


# instance fields
.field a:F

.field lastInput:Lcom/hcrest/sensors/util/Vector3D;

.field lastOutput:Lcom/hcrest/sensors/util/Vector3D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const v0, 0x3f666666    # 0.9f

    invoke-direct {p0, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;-><init>(F)V

    .line 20
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "a"    # F

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastInput:Lcom/hcrest/sensors/util/Vector3D;

    .line 15
    sget-object v0, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastOutput:Lcom/hcrest/sensors/util/Vector3D;

    .line 23
    iput p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    .line 24
    return-void
.end method


# virtual methods
.method public filter(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 7
    .param p1, "input"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 27
    new-instance v0, Lcom/hcrest/sensors/util/Vector3D;

    iget v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    add-float/2addr v1, v5

    div-float/2addr v1, v6

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    add-float/2addr v2, v5

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastInput:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v3}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    iget-object v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastOutput:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v3}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    add-float/2addr v2, v5

    div-float/2addr v2, v6

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastInput:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v4}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    iget-object v4, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastOutput:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v4}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastInput:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v5}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->a:F

    iget-object v5, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastOutput:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v5}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 32
    .local v0, "output":Lcom/hcrest/sensors/util/Vector3D;
    iput-object p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastInput:Lcom/hcrest/sensors/util/Vector3D;

    .line 33
    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/DCBlockFilter3D;->lastOutput:Lcom/hcrest/sensors/util/Vector3D;

    .line 34
    return-object v0
.end method

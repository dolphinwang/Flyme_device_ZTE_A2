.class Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;
.super Ljava/lang/Object;
.source "StopWithinTiltRegionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vector3D"
.end annotation


# instance fields
.field protected mX:F

.field protected mY:F

.field protected mZ:F

.field final synthetic this$0:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;


# direct methods
.method public constructor <init>(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->this$0:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method


# virtual methods
.method public getNorm()F
    .locals 3

    .prologue
    .line 284
    iget v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mX:F

    iget v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mY:F

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mZ:F

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mZ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getNormalized()[F
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 288
    invoke-virtual {p0}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->getNorm()F

    move-result v0

    .line 289
    .local v0, "norm":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 290
    new-array v1, v2, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mX:F

    div-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mY:F

    div-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mZ:F

    div-float/2addr v3, v0

    aput v3, v1, v2

    .line 292
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7fc00000    # NaNf
        0x7fc00000    # NaNf
        0x7fc00000    # NaNf
    .end array-data
.end method

.method public getSensorValues()[F
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mX:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mY:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mZ:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mZ:F

    return v0
.end method

.method public setSensorValues(JFFF)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .prologue
    .line 262
    iput p3, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mX:F

    .line 263
    iput p4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mY:F

    .line 264
    iput p5, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;->mZ:F

    .line 265
    return-void
.end method

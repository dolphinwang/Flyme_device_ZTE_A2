.class Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;
.super Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;
.source "StopWithinTiltRegionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupDelayFilteredVector3D"
.end annotation


# static fields
.field private static final TIMESTAMP_ALPHA:F = 0.8f


# instance fields
.field private mAlpha:F

.field private mAveragePeriodSecs:F

.field private mGroupDelay:F

.field private mLastTimestampSecs:D

.field private mPeriod:F

.field private mSecRate:F

.field final synthetic this$0:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;


# direct methods
.method public constructor <init>(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;IF)V
    .locals 3
    .param p2, "uSecRate"    # I
    .param p3, "groupDelay"    # F

    .prologue
    const/4 v2, 0x0

    .line 310
    iput-object p1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->this$0:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;

    invoke-direct {p0, p1}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;-><init>(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;)V

    .line 300
    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mPeriod:F

    .line 302
    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAlpha:F

    .line 304
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mLastTimestampSecs:D

    .line 305
    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAveragePeriodSecs:F

    .line 307
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mSecRate:F

    .line 308
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mGroupDelay:F

    .line 311
    int-to-float v0, p2

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mSecRate:F

    .line 312
    iput p3, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mGroupDelay:F

    .line 313
    return-void
.end method


# virtual methods
.method public getAveragePeriodSeconds(J)F
    .locals 9
    .param p1, "timestampNanoSecs"    # J

    .prologue
    .line 316
    long-to-double v4, p1

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double v2, v4, v6

    .line 318
    .local v2, "timestampSecs":D
    iget-wide v4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mLastTimestampSecs:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 319
    iput-wide v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mLastTimestampSecs:D

    .line 320
    iget v4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mSecRate:F

    iput v4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAveragePeriodSecs:F

    .line 321
    iget v4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mSecRate:F

    .line 330
    :goto_0
    return v4

    .line 324
    :cond_0
    iget-wide v4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mLastTimestampSecs:D

    sub-double v0, v2, v4

    .line 326
    .local v0, "diffSecs":D
    const v4, 0x3f4ccccd    # 0.8f

    iget v5, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAveragePeriodSecs:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x3fc9999980000000L    # 0.19999998807907104

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAveragePeriodSecs:F

    .line 328
    iput-wide v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mLastTimestampSecs:D

    .line 330
    iget v4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAveragePeriodSecs:F

    goto :goto_0
.end method

.method public getPeriod()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mPeriod:F

    return v0
.end method

.method public setSensorValues(JFFF)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getAveragePeriodSeconds(J)F

    move-result v0

    .line 342
    .local v0, "period":F
    iget v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mPeriod:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 343
    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mPeriod:F

    .line 344
    iget v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mGroupDelay:F

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mGroupDelay:F

    iget v3, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mPeriod:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAlpha:F

    .line 347
    :cond_0
    iget v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAlpha:F

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mX:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAlpha:F

    sub-float v2, v4, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mX:F

    .line 348
    iget v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAlpha:F

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mY:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAlpha:F

    sub-float v2, v4, v2

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    iput v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mY:F

    .line 349
    iget v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAlpha:F

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mZ:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mAlpha:F

    sub-float v2, v4, v2

    mul-float/2addr v2, p5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->mZ:F

    .line 350
    return-void
.end method

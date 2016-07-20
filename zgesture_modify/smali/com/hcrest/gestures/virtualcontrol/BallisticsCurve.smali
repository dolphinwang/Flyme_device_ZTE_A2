.class public Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;
.super Ljava/lang/Object;
.source "BallisticsCurve.java"

# interfaces
.implements Lcom/hcrest/gestures/virtualcontrol/IBallisticsCurve;


# static fields
.field public static final DEFAULT:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

.field static final DEFAULT_GAIN:F = 1994.1073f

.field static final DEFAULT_MIN_VELOCITY:F = 0.0f

.field static final DEFAULT_SAMPLE_PERIOD:F = 0.008f


# instance fields
.field private minimumVelocity:F

.field private samplePeriod:F

.field private xCurve:[F

.field private yCurve:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 120
    new-instance v0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    const v1, 0x3c03126f    # 0.008f

    const/4 v2, 0x0

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;-><init>(FF[F[F)V

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->DEFAULT:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f0ccccd    # 0.55f
        0x3f6147ae    # 0.88f
        0x3fa66666    # 1.3f
        0x40133333    # 2.3f
        0x40533333    # 3.3f
        0x40933333    # 4.6f
        0x40c00000    # 6.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x44a28000    # 1300.0f
        0x450fc000    # 2300.0f
        0x453b8000    # 3000.0f
        0x45729000    # 3881.0f
        0x459c0800    # 4993.0f
        0x45ad9000    # 5554.0f
        0x45b98800    # 5937.0f
        0x45bf8800    # 6129.0f
    .end array-data
.end method

.method public constructor <init>(FF[F[F)V
    .locals 0
    .param p1, "samplePeriod"    # F
    .param p2, "minimumVelocity"    # F
    .param p3, "velocityIn"    # [F
    .param p4, "velocityOut"    # [F

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->samplePeriod:F

    .line 71
    iput p2, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->minimumVelocity:F

    .line 72
    iput-object p3, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    .line 73
    iput-object p4, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->yCurve:[F

    .line 74
    return-void
.end method


# virtual methods
.method public evaluate(F)F
    .locals 8
    .param p1, "xIn"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 82
    iget v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->minimumVelocity:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v4

    .line 87
    :cond_1
    iget v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->minimumVelocity:F

    sub-float v3, p1, v5

    .line 90
    .local v3, "x":F
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    array-length v5, v5

    if-gtz v5, :cond_2

    .line 91
    const v5, 0x44f9436f

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->samplePeriod:F

    mul-float v4, v5, v6

    goto :goto_0

    .line 96
    :cond_2
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    iget-object v6, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_3

    .line 97
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->yCurve:[F

    iget-object v6, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->yCurve:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    iget v6, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->samplePeriod:F

    mul-float v4, v5, v6

    goto :goto_0

    .line 99
    :cond_3
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    aget v5, v5, v7

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_4

    .line 100
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->yCurve:[F

    aget v5, v5, v7

    iget v6, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->samplePeriod:F

    mul-float v4, v5, v6

    goto :goto_0

    .line 105
    :cond_4
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    aget v5, v5, v1

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_5

    .line 107
    add-int/lit8 v2, v1, -0x1

    .line 108
    .local v2, "k":I
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    aget v5, v5, v2

    sub-float v5, v3, v5

    iget-object v6, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    aget v6, v6, v1

    iget-object v7, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->xCurve:[F

    aget v7, v7, v2

    sub-float/2addr v6, v7

    div-float v0, v5, v6

    .line 109
    .local v0, "f":F
    iget-object v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->yCurve:[F

    aget v5, v5, v2

    iget-object v6, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->yCurve:[F

    aget v6, v6, v1

    iget-object v7, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->yCurve:[F

    aget v7, v7, v2

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    add-float v4, v5, v6

    .line 110
    .local v4, "y":F
    iget v5, p0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->samplePeriod:F

    mul-float/2addr v4, v5

    .line 111
    goto :goto_0

    .line 105
    .end local v0    # "f":F
    .end local v2    # "k":I
    .end local v4    # "y":F
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

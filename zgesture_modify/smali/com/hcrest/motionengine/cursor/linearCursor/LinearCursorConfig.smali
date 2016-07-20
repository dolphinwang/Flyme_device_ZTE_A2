.class public Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;
.super Lcom/hcrest/sensors/AbstractMotionDetectorConfig;
.source "LinearCursorConfig.java"


# static fields
.field public static final DEFAULT_FORGETFACTOR:F = 0.01f

.field public static final DEFAULT_GRAVITYPREFILTERED:Z = true

.field public static final DEFAULT_LINBALANCE:F = 0.5f

.field public static final DEFAULT_TRIMTOPEAKACTIVITY:Z = true

.field public static final DEFAULT_ZEROONSTART:Z


# instance fields
.field protected final forgetFactor:F

.field protected final gravityPreFiltered:Z

.field protected final linBalance:F

.field protected final trimToPeakActivity:Z

.field protected final zeroOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->zeroOnStart:Z

    .line 86
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->linBalance:F

    .line 87
    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->forgetFactor:F

    .line 88
    iput-boolean v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->trimToPeakActivity:Z

    .line 89
    iput-boolean v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->gravityPreFiltered:Z

    .line 90
    return-void
.end method

.method public constructor <init>(ZFFZ)V
    .locals 1
    .param p1, "zeroOnStart"    # Z
    .param p2, "linBalance"    # F
    .param p3, "forgetFactor"    # F
    .param p4, "trimToPeakActivity"    # Z

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 105
    iput-boolean p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->zeroOnStart:Z

    .line 106
    iput p2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->linBalance:F

    .line 107
    iput p3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->forgetFactor:F

    .line 108
    iput-boolean p4, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->trimToPeakActivity:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->gravityPreFiltered:Z

    .line 110
    return-void
.end method

.method public constructor <init>(ZFFZZ)V
    .locals 0
    .param p1, "zeroOnStart"    # Z
    .param p2, "linBalance"    # F
    .param p3, "forgetFactor"    # F
    .param p4, "trimToPeakActivity"    # Z
    .param p5, "gravityPreFiltered"    # Z

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 128
    iput-boolean p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->zeroOnStart:Z

    .line 129
    iput p2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->linBalance:F

    .line 130
    iput p3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->forgetFactor:F

    .line 131
    iput-boolean p4, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->trimToPeakActivity:Z

    .line 132
    iput-boolean p5, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->gravityPreFiltered:Z

    .line 133
    return-void
.end method


# virtual methods
.method public getForgetFactor()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->forgetFactor:F

    return v0
.end method

.method public getLinBalance()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->linBalance:F

    return v0
.end method

.method public isGravityPreFiltered()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->gravityPreFiltered:Z

    return v0
.end method

.method public isTrimToPeakActivity()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->trimToPeakActivity:Z

    return v0
.end method

.method public isZeroOnStart()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->zeroOnStart:Z

    return v0
.end method

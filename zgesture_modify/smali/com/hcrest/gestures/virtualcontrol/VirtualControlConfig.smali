.class public Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;
.super Lcom/hcrest/sensors/AbstractMotionDetectorConfig;
.source "VirtualControlConfig.java"


# static fields
.field public static final DEFAULT_CLAMPTORANGE:Z = true

.field public static final DEFAULT_ROTATIONMAX:F = 1.57f

.field public static final DEFAULT_ROTATIONMIN:F = -1.57f

.field public static final DEFAULT_SLIDERINIT:F = 50.0f

.field public static final DEFAULT_SLIDERMAX:F = 100.0f

.field public static final DEFAULT_SLIDERMIN:F

.field public static final DEFAULT_SLIDERTYPE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

.field public static final DefaultHorizonalSliderConfig:Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

.field public static final DefaultKnobConfig:Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

.field public static final DefaultVerticalSliderConfig:Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;


# instance fields
.field protected final ballisticsCurve:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

.field protected final rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

.field protected final rotationMax:F

.field protected final rotationMin:F

.field protected final sliderClampToRange:Z

.field protected final sliderInit:F

.field protected final sliderMax:F

.field protected final sliderMin:F

.field protected final sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->BODY_LINEAR_RELATIVE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->DEFAULT_SLIDERTYPE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 55
    new-instance v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->ROLL:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-direct {v0, v1}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;-><init>(Lcom/hcrest/sensors/util/RotationAxis;)V

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->DefaultKnobConfig:Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    .line 62
    new-instance v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->YAW:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-direct {v0, v1}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;-><init>(Lcom/hcrest/sensors/util/RotationAxis;)V

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->DefaultHorizonalSliderConfig:Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    .line 70
    new-instance v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->PITCH:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-direct {v0, v1}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;-><init>(Lcom/hcrest/sensors/util/RotationAxis;)V

    sput-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->DefaultVerticalSliderConfig:Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/util/RotationAxis;)V
    .locals 1
    .param p1, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 112
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->DEFAULT_SLIDERTYPE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    iput-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 113
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->DEFAULT:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    iput-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->ballisticsCurve:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    .line 115
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    .line 117
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderInit:F

    .line 118
    const v0, -0x40370a3d    # -1.57f

    iput v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    .line 119
    const v0, 0x3fc8f5c3    # 1.57f

    iput v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMax:F

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/util/RotationAxis;FFFFF)V
    .locals 1
    .param p1, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;
    .param p2, "sliderMin"    # F
    .param p3, "sliderMax"    # F
    .param p4, "sliderInit"    # F
    .param p5, "rotationMin"    # F
    .param p6, "rotationMax"    # F

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 139
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->DEFAULT_SLIDERTYPE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    iput-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 140
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->DEFAULT:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    iput-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->ballisticsCurve:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    .line 141
    iput p2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    .line 142
    iput p3, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    .line 144
    iput p4, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderInit:F

    .line 145
    iput p5, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    .line 146
    iput p6, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMax:F

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/util/RotationAxis;FFZFFF)V
    .locals 1
    .param p1, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;
    .param p2, "sliderMin"    # F
    .param p3, "sliderMax"    # F
    .param p4, "sliderClampToRange"    # Z
    .param p5, "sliderInit"    # F
    .param p6, "rotationMin"    # F
    .param p7, "rotationMax"    # F

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 168
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->DEFAULT_SLIDERTYPE:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    iput-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 169
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->DEFAULT:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    iput-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->ballisticsCurve:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    .line 170
    iput p2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    .line 171
    iput p3, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    .line 172
    iput-boolean p4, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    .line 173
    iput p5, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderInit:F

    .line 174
    iput p6, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    .line 175
    iput p7, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMax:F

    .line 176
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/util/RotationAxis;Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;FFZFFF)V
    .locals 1
    .param p1, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;
    .param p2, "sliderType"    # Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;
    .param p3, "sliderMin"    # F
    .param p4, "sliderMax"    # F
    .param p5, "sliderClampToRange"    # Z
    .param p6, "sliderInit"    # F
    .param p7, "rotationMin"    # F
    .param p8, "rotationMax"    # F

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 201
    iput-object p2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 202
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->DEFAULT:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    iput-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->ballisticsCurve:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    .line 203
    iput p3, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    .line 204
    iput p4, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    .line 205
    iput-boolean p5, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    .line 206
    iput p6, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderInit:F

    .line 207
    iput p7, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    .line 208
    iput p8, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMax:F

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/util/RotationAxis;Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;FFZFFF)V
    .locals 0
    .param p1, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;
    .param p2, "sliderType"    # Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;
    .param p3, "ballisticsCurve"    # Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;
    .param p4, "sliderMin"    # F
    .param p5, "sliderMax"    # F
    .param p6, "sliderClampToRange"    # Z
    .param p7, "sliderInit"    # F
    .param p8, "rotationMin"    # F
    .param p9, "rotationMax"    # F

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 236
    iput-object p2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    .line 237
    iput-object p3, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->ballisticsCurve:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    .line 238
    iput p4, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    .line 239
    iput p5, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    .line 240
    iput-boolean p6, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    .line 241
    iput p7, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderInit:F

    .line 242
    iput p8, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    .line 243
    iput p9, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMax:F

    .line 244
    return-void
.end method


# virtual methods
.method public getBallisticsCurve()Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    invoke-virtual {v0}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->isLinear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->ballisticsCurve:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    goto :goto_0
.end method

.method public getRotationAxis()Lcom/hcrest/sensors/util/RotationAxis;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    return-object v0
.end method

.method public getRotationMax()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMax:F

    return v0
.end method

.method public getRotationMin()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    return v0
.end method

.method public getSliderInit()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderInit:F

    return v0
.end method

.method public getSliderMax()F
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    return v0
.end method

.method public getSliderMin()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    return v0
.end method

.method public getSliderType()Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    return-object v0
.end method

.method public isSliderClampToRange()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    return v0
.end method

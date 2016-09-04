.class public Lcom/android/mipop/paintpad/tools/Brush;
.super Landroid/graphics/Paint;
.source "Brush.java"


# static fields
.field private static brush:Lcom/android/mipop/paintpad/tools/Brush;

.field private static final colors:[I

.field private static count:I

.field private static eraserWidth:F

.field private static isRainBow:Z

.field private static mBlur:Landroid/graphics/MaskFilter;

.field private static mEmboss:Landroid/graphics/MaskFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    new-instance v0, Lcom/android/mipop/paintpad/tools/Brush;

    invoke-direct {v0}, Lcom/android/mipop/paintpad/tools/Brush;-><init>()V

    sput-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/mipop/paintpad/tools/Brush;->eraserWidth:F

    .line 21
    sput-boolean v1, Lcom/android/mipop/paintpad/tools/Brush;->isRainBow:Z

    .line 22
    sput v1, Lcom/android/mipop/paintpad/tools/Brush;->count:I

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mipop/paintpad/tools/Brush;->colors:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x200d3
        -0xe93387
        -0xc75701
        -0xb637
        -0x1
        -0x1000000
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    sput-object v0, Lcom/android/mipop/paintpad/tools/Brush;->mEmboss:Landroid/graphics/MaskFilter;

    .line 43
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x41200000    # 10.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v0, Lcom/android/mipop/paintpad/tools/Brush;->mBlur:Landroid/graphics/MaskFilter;

    .line 44
    return-void

    .line 41
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getBrush()Lcom/android/mipop/paintpad/tools/Brush;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    return-object v0
.end method

.method public static getEraserWidtn()F
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/android/mipop/paintpad/tools/Brush;->eraserWidth:F

    return v0
.end method

.method public static getPen()Lcom/android/mipop/paintpad/tools/Brush;
    .locals 3

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/mipop/paintpad/tools/Brush;->isRainBow:Z

    if-eqz v0, :cond_0

    .line 50
    sget v0, Lcom/android/mipop/paintpad/tools/Brush;->count:I

    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->colors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/android/mipop/paintpad/tools/Brush;->count:I

    .line 51
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->colors:[I

    sget v2, Lcom/android/mipop/paintpad/tools/Brush;->count:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setColor(I)V

    .line 52
    sget v0, Lcom/android/mipop/paintpad/tools/Brush;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mipop/paintpad/tools/Brush;->count:I

    .line 54
    :cond_0
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    return-object v0
.end method

.method public static setBlur()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 77
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->mBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 78
    return-void
.end method

.method public static setEmboss()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 71
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->mEmboss:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 72
    return-void
.end method

.method public static setEraserWidtn(F)V
    .locals 0
    .param p0, "f"    # F

    .prologue
    .line 37
    sput p0, Lcom/android/mipop/paintpad/tools/Brush;->eraserWidth:F

    .line 38
    return-void
.end method

.method public static setFill(Z)V
    .locals 2
    .param p0, "isFill"    # Z

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 88
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public static setNormal()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/tools/Brush;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 83
    return-void
.end method

.method public static setRainbow(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 64
    sput-boolean p0, Lcom/android/mipop/paintpad/tools/Brush;->isRainBow:Z

    .line 65
    return-void
.end method


# virtual methods
.method public reset(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 95
    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/tools/Brush;->setAntiAlias(Z)V

    .line 96
    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/tools/Brush;->setDither(Z)V

    .line 97
    invoke-static {p1}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->getSaveLastColor(Landroid/content/Context;)I

    move-result v0

    .line 98
    .local v0, "color":I
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    invoke-virtual {v1, v0}, Lcom/android/mipop/paintpad/tools/Brush;->setColor(I)V

    .line 100
    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/tools/Brush;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/tools/Brush;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 102
    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/tools/Brush;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/tools/Brush;->setStrokeWidth(F)V

    .line 104
    sget-object v1, Lcom/android/mipop/paintpad/tools/Brush;->brush:Lcom/android/mipop/paintpad/tools/Brush;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mipop/paintpad/tools/Brush;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 105
    return-void
.end method

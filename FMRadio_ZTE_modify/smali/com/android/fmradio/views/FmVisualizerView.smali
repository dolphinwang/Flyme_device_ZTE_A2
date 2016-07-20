.class public final Lcom/android/fmradio/views/FmVisualizerView;
.super Landroid/view/View;
.source "FmVisualizerView.java"


# static fields
.field private static final COLUME_COUNTS:I = 0x4

.field private static final COLUME_PADDING_COUNTS:I = 0x3

.field private static final DEFALT_VISUALIZER_LEVEL:[F


# instance fields
.field private mAnimate:Z

.field private mColumnPadding:F

.field private mFrequency:I

.field private final mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevLevels:[F

.field private final mRefreashRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/fmradio/views/FmVisualizerView;->DEFALT_VISUALIZER_LEVEL:[F

    .line 49
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        -0x41b33333    # -0.2f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mColumnPadding:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mAnimate:Z

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mFrequency:I

    .line 51
    sget-object v0, Lcom/android/fmradio/views/FmVisualizerView;->DEFALT_VISUALIZER_LEVEL:[F

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPrevLevels:[F

    .line 139
    new-instance v0, Lcom/android/fmradio/views/FmVisualizerView$1;

    invoke-direct {v0, p0}, Lcom/android/fmradio/views/FmVisualizerView$1;-><init>(Lcom/android/fmradio/views/FmVisualizerView;)V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mRefreashRunnable:Ljava/lang/Runnable;

    .line 83
    invoke-direct {p0}, Lcom/android/fmradio/views/FmVisualizerView;->init()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mColumnPadding:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mAnimate:Z

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mFrequency:I

    .line 51
    sget-object v0, Lcom/android/fmradio/views/FmVisualizerView;->DEFALT_VISUALIZER_LEVEL:[F

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPrevLevels:[F

    .line 139
    new-instance v0, Lcom/android/fmradio/views/FmVisualizerView$1;

    invoke-direct {v0, p0}, Lcom/android/fmradio/views/FmVisualizerView$1;-><init>(Lcom/android/fmradio/views/FmVisualizerView;)V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mRefreashRunnable:Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0}, Lcom/android/fmradio/views/FmVisualizerView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mColumnPadding:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mAnimate:Z

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mFrequency:I

    .line 51
    sget-object v0, Lcom/android/fmradio/views/FmVisualizerView;->DEFALT_VISUALIZER_LEVEL:[F

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPrevLevels:[F

    .line 139
    new-instance v0, Lcom/android/fmradio/views/FmVisualizerView$1;

    invoke-direct {v0, p0}, Lcom/android/fmradio/views/FmVisualizerView$1;-><init>(Lcom/android/fmradio/views/FmVisualizerView;)V

    iput-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mRefreashRunnable:Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0}, Lcom/android/fmradio/views/FmVisualizerView;->init()V

    .line 63
    return-void
.end method

.method private generate(I)[F
    .locals 10
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 190
    if-gtz p1, :cond_0

    .line 191
    const/4 v1, 0x0

    .line 207
    :goto_0
    return-object v1

    .line 193
    :cond_0
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 196
    .local v2, "sign":[I
    new-array v1, p1, [F

    .line 197
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p1, :cond_1

    .line 206
    iput-object v1, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPrevLevels:[F

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v3, v6

    .line 200
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aget v6, v2, v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    .line 199
    aput v3, v1, v0

    .line 201
    iget-object v3, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPrevLevels:[F

    aget v3, v3, v0

    aget v6, v1, v0

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    move v3, v4

    :goto_2
    aget v6, v1, v0

    const v7, -0x41666666    # -0.3f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move v6, v4

    :goto_3
    and-int/2addr v3, v6

    if-eqz v3, :cond_1

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    .line 201
    goto :goto_2

    :cond_3
    move v6, v5

    goto :goto_3

    .line 193
    nop

    :array_0
    .array-data 4
        -0x1
        0x1
    .end array-data
.end method

.method private init()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff7b20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 91
    iget-object v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mAnimate:Z

    .line 93
    return-void
.end method


# virtual methods
.method public isAnimated()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mAnimate:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 147
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/fmradio/views/FmVisualizerView;->getHeight()I

    move-result v17

    .line 151
    .local v17, "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/fmradio/views/FmVisualizerView;->getWidth()I

    move-result v18

    .line 152
    .local v18, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/fmradio/views/FmVisualizerView;->getPaddingLeft()I

    move-result v11

    .line 153
    .local v11, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/fmradio/views/FmVisualizerView;->getPaddingRight()I

    move-result v12

    .line 154
    .local v12, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/fmradio/views/FmVisualizerView;->getPaddingTop()I

    move-result v13

    .line 155
    .local v13, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/fmradio/views/FmVisualizerView;->getPaddingBottom()I

    move-result v10

    .line 156
    .local v10, "paddingBottom":I
    sub-int v19, v18, v11

    sub-int v19, v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40400000    # 3.0f

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mColumnPadding:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    .line 156
    sub-float v19, v19, v20

    .line 158
    const/high16 v20, 0x40800000    # 4.0f

    .line 156
    div-float v6, v19, v20

    .line 159
    .local v6, "colWidth":F
    sub-int v19, v17, v10

    sub-int v19, v19, v13

    move/from16 v0, v19

    int-to-float v5, v0

    .line 161
    .local v5, "colHeight":F
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v9, v0, [F

    .line 162
    .local v9, "levels":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mAnimate:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 163
    sget-object v9, Lcom/android/fmradio/views/FmVisualizerView;->DEFALT_VISUALIZER_LEVEL:[F

    .line 167
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v7, v0, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mRefreashRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mRefreashRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mFrequency:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    return-void

    .line 165
    .end local v7    # "i":I
    :cond_0
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/views/FmVisualizerView;->generate(I)[F

    move-result-object v9

    goto :goto_0

    .line 168
    .restart local v7    # "i":I
    :cond_1
    int-to-float v0, v11

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mColumnPadding:F

    move/from16 v21, v0

    add-float v21, v21, v6

    mul-float v20, v20, v21

    add-float v8, v19, v20

    .line 169
    .local v8, "left":F
    add-float v15, v8, v6

    .line 170
    .local v15, "right":F
    int-to-float v0, v13

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v5, v20

    add-float v16, v19, v20

    .line 171
    .local v16, "startY":F
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v5, v19

    aget v20, v9, v7

    mul-float v19, v19, v20

    sub-float v16, v16, v19

    .line 172
    int-to-float v0, v13

    move/from16 v19, v0

    cmpg-float v19, v16, v19

    if-gez v19, :cond_2

    .line 173
    int-to-float v0, v13

    move/from16 v16, v0

    .line 175
    :cond_2
    sub-int v19, v17, v10

    move/from16 v0, v19

    int-to-float v4, v0

    .line 176
    .local v4, "bottom":F
    new-instance v14, Landroid/graphics/RectF;

    move/from16 v0, v16

    invoke-direct {v14, v8, v0, v15, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 177
    .local v14, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/views/FmVisualizerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public setAnimateFrequency(I)V
    .locals 0
    .param p1, "freguency"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/fmradio/views/FmVisualizerView;->mFrequency:I

    .line 134
    return-void
.end method

.method public setColumnPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 101
    int-to-float v0, p1

    iput v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mColumnPadding:F

    .line 102
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mAnimate:Z

    .line 109
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/views/FmVisualizerView;->mAnimate:Z

    .line 116
    return-void
.end method

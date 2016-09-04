.class public Lcom/android/mipop/paintpad/view/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;
    }
.end annotation


# static fields
.field private static final COLOR_BORDER_LEFT_AND_TOP1:I = -0xb0b1b2

.field private static final COLOR_BORDER_LEFT_AND_TOP2:I = -0x9b9c9d

.field private static final COLOR_BORDER_RIGHT_AND_BOTTOM1:I = -0x9b9c9d

.field private static final COLOR_BORDER_RIGHT_AND_BOTTOM2:I = -0xb0b1b2

.field private static IN_TOLERANCE:F

.field private static OFFSET_1:F

.field private static OFFSET_2:F


# instance fields
.field private barOffSetX:F

.field private barOffSetY:F

.field private barWidth:F

.field private barpaddingBorad:F

.field private bitmapBar:Landroid/graphics/Bitmap;

.field private bitmapBoard:Landroid/graphics/Bitmap;

.field private boardOffSetX:F

.field private boardOffSetY:F

.field private circleR:F

.field private circleX:F

.field private circleY:F

.field private current_H:F

.field private current_V:F

.field private density:F

.field private hsv_h:[F

.field private hsv_h_length:I

.field private hsv_s:F

.field private hsv_v:[F

.field private hsv_v_length:I

.field private isMesured:Z

.field private listener:Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;

.field private pen:Landroid/graphics/Paint;

.field private penBar:Landroid/graphics/Paint;

.field private penBorder:Landroid/graphics/Paint;

.field private rectP:F

.field private rectY:F

.field private rgbBar:[I

.field private rgbBoard:[I

.field private tempX:F

.field private tempY:F

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private getBarColors(FF)V
    .locals 7
    .param p1, "v"    # F
    .param p2, "h"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 271
    iput p2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->current_H:F

    .line 272
    iput p1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->current_V:F

    .line 274
    const/16 v1, 0x168

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_0

    .line 276
    const/4 v2, 0x3

    new-array v0, v2, [F

    aput p2, v0, v5

    int-to-float v2, v1

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    aput v2, v0, v6

    const/4 v2, 0x2

    aput p1, v0, v2

    .line 279
    .local v0, "hsv":[F
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rgbBar:[I

    rsub-int v3, v1, 0x168

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v2, v3

    .line 274
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 281
    .end local v0    # "hsv":[F
    :cond_0
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rgbBar:[I

    const/16 v3, 0x169

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bitmapBar:Landroid/graphics/Bitmap;

    .line 285
    return-void
.end method

.method private getBoardColors(F)V
    .locals 9
    .param p1, "s"    # F

    .prologue
    const/16 v8, 0x169

    const/16 v7, 0x65

    const/4 v6, 0x0

    .line 289
    iput p1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_s:F

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v7, :cond_1

    .line 292
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-eq v2, v8, :cond_0

    .line 294
    const/4 v3, 0x3

    new-array v0, v3, [F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h:[F

    aget v3, v3, v2

    aput v3, v0, v6

    const/4 v3, 0x1

    aput p1, v0, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v:[F

    aget v4, v4, v1

    aput v4, v0, v3

    .line 297
    .local v0, "hsv":[F
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rgbBoard:[I

    mul-int/lit16 v4, v1, 0x169

    add-int/2addr v4, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v3, v4

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "hsv":[F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v2    # "j":I
    :cond_1
    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rgbBoard:[I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v8, v7, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    iget v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bitmapBoard:Landroid/graphics/Bitmap;

    .line 303
    return-void
.end method

.method private getChoosedRGB()I
    .locals 3

    .prologue
    .line 307
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->current_H:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_s:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->current_V:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private inBar()Z
    .locals 3

    .prologue
    .line 263
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inBorad()Z
    .locals 3

    .prologue
    .line 255
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    add-float/2addr v1, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x65

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x169

    const/4 v5, 0x1

    .line 92
    new-instance v2, Lcom/android/mipop/paintpad/view/ColorPickerView$1;

    invoke-direct {v2, p0}, Lcom/android/mipop/paintpad/view/ColorPickerView$1;-><init>(Lcom/android/mipop/paintpad/view/ColorPickerView;)V

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->listener:Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;

    .line 100
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    .line 104
    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->IN_TOLERANCE:F

    .line 105
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->pen:Landroid/graphics/Paint;

    .line 106
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->pen:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->pen:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->pen:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->pen:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 111
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBar:Landroid/graphics/Paint;

    .line 112
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBar:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBar:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBar:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBar:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 117
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    .line 118
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    const v3, -0xb0b1b2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v3, v7

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 123
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h:[F

    .line 124
    new-array v2, v8, [F

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v:[F

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v6, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h:[F

    rsub-int v3, v0, 0x168

    int-to-float v4, v0

    aput v4, v2, v3

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eq v0, v8, :cond_1

    .line 132
    iget-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v:[F

    rsub-int/lit8 v3, v0, 0x64

    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_1
    const v2, 0x8e6d

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rgbBoard:[I

    .line 136
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rgbBar:[I

    .line 138
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v9, -0x9b9c9d

    const v8, -0xb0b1b2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    .line 143
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->isMesured:Z

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->viewWidth:I

    .line 146
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->viewHeight:I

    .line 147
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleR:F

    .line 148
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectP:F

    .line 149
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    div-float/2addr v0, v2

    sput v0, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    .line 150
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    sput v0, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    .line 151
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    .line 152
    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barpaddingBorad:F

    .line 154
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    .line 155
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    .line 156
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    .line 157
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    .line 159
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->viewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    .line 160
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barpaddingBorad:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    .line 162
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_s:F

    .line 164
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_s:F

    invoke-direct {p0, v0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->getBoardColors(F)V

    .line 165
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->getBarColors(FF)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->isMesured:Z

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 177
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 197
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v1

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_1:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 209
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v1

    sget v1, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sget v2, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v3

    sget v3, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sget v4, Lcom/android/mipop/paintpad/view/ColorPickerView;->OFFSET_2:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 214
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bitmapBoard:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->pen:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 215
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    :goto_0
    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    :goto_1
    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleR:F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->pen:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->bitmapBar:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget-object v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->pen:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectP:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectP:F

    sub-float v2, v0, v2

    :goto_2
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectP:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectP:F

    add-float/2addr v4, v0

    :goto_3
    iget-object v5, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->penBar:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 221
    return-void

    .line 215
    :cond_1
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    goto :goto_1

    .line 218
    :cond_3
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectP:F

    sub-float v2, v0, v2

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v4, v6

    add-float/2addr v0, v4

    iget v4, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectP:F

    add-float/2addr v4, v0

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempX:F

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->tempY:F

    .line 228
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->inBorad()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    .line 232
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    :goto_0
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    .line 233
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    .line 235
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    :goto_2
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    .line 236
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float/2addr v0, v3

    :goto_3
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    .line 238
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v:[F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetY:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x42ca0000    # 101.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h:[F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->boardOffSetX:F

    sub-float/2addr v2, v3

    const v3, 0x43b48000    # 361.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_h_length:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/mipop/paintpad/view/ColorPickerView;->getBarColors(FF)V

    .line 240
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->invalidate()V

    .line 249
    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->listener:Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;

    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->getChoosedRGB()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;->onColorChanged(I)V

    .line 250
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_1
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    goto :goto_0

    .line 233
    :cond_2
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleX:F

    goto :goto_1

    .line 235
    :cond_3
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    goto :goto_2

    .line 236
    :cond_4
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->circleY:F

    goto :goto_3

    .line 241
    :cond_5
    invoke-direct {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->inBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    :goto_5
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->density:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    :goto_6
    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    .line 246
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->barOffSetY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_v_length:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->hsv_s:F

    .line 247
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/view/ColorPickerView;->invalidate()V

    goto :goto_4

    .line 243
    :cond_6
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    goto :goto_5

    .line 244
    :cond_7
    iget v0, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->rectY:F

    goto :goto_6
.end method

.method public setOnColorChangedListener(Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;)V
    .locals 0
    .param p1, "colorChangedListener"    # Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mipop/paintpad/view/ColorPickerView;->listener:Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;

    .line 88
    return-void
.end method

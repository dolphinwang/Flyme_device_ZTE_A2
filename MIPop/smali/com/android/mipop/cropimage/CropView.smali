.class public Lcom/android/mipop/cropimage/CropView;
.super Landroid/widget/ImageView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/cropimage/CropView$OnSigleLongClickListener;,
        Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;
    }
.end annotation


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field private desity:F

.field private firstTouch:J

.field private isMoved:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCrop:Lcom/android/mipop/cropimage/ICrop;

.field private mSingleClickListener:Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;

.field private msSigleLongClickListener:Lcom/android/mipop/cropimage/CropView$OnSigleLongClickListener;

.field private padding:I

.field private scale:F

.field private showHeight:I

.field private showWidth:I

.field private startX:I

.field private startY:I

.field private tempX:I

.field private tempY:I

.field private transLateY:I

.field private translateX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mipop/cropimage/CropView;->isMoved:Z

    .line 57
    sput-object p1, Lcom/android/mipop/cropimage/CropView;->mContext:Landroid/content/Context;

    .line 58
    new-instance v1, Lcom/android/mipop/cropimage/CropRect;

    invoke-direct {v1, p1}, Lcom/android/mipop/cropimage/CropRect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    .line 59
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mipop/cropimage/CropView;->setDrawingCacheEnabled(Z)V

    .line 60
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .local v0, "m":Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->desity:F

    .line 63
    const/high16 v1, 0x41700000    # 15.0f

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->desity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    .line 64
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/mipop/cropimage/CropView;->setPadding(IIII)V

    .line 66
    return-void
.end method

.method private cancel3Secend()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.cancel.3second"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    sget-object v1, Lcom/android/mipop/cropimage/CropView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method private computeScaleAndTraslate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 161
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 163
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/mipop/cropimage/CropView;->scale:F

    .line 164
    iput v3, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    .line 165
    iput v3, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    .line 176
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 169
    .local v0, "scaleX":F
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 170
    .local v1, "scaleY":F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/mipop/cropimage/CropView;->scale:F

    .line 171
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->scale:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    .line 172
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->scale:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    .line 173
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/mipop/cropimage/CropView;->showWidth:I

    .line 174
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/mipop/cropimage/CropView;->showHeight:I

    .line 175
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->scale:F

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/mipop/cropimage/ICrop;->setScaleAndTranslate(FII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeToFull()V
    .locals 6

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    instance-of v1, v1, Lcom/android/mipop/cropimage/CropRect;

    if-eqz v1, :cond_0

    .line 249
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/graphics/Point;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->showWidth:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->showHeight:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    add-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    .line 250
    .local v0, "points":[Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    invoke-interface {v1, v0}, Lcom/android/mipop/cropimage/ICrop;->setPoints([Landroid/graphics/Point;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->invalidate()V

    .line 253
    .end local v0    # "points":[Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public clearCrop()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    invoke-interface {v0}, Lcom/android/mipop/cropimage/ICrop;->clear()V

    .line 110
    return-void
.end method

.method public crop()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/android/mipop/cropimage/ICrop;->crop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    invoke-interface {v0, p1}, Lcom/android/mipop/cropimage/ICrop;->draw(Landroid/graphics/Canvas;)V

    .line 153
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 123
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 124
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropView;->computeScaleAndTraslate()V

    .line 125
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->showHeight:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->showWidth:I

    invoke-interface {v0, v1, v2}, Lcom/android/mipop/cropimage/ICrop;->setViewHightandWidth(II)V

    .line 126
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->changeToFull()V

    .line 128
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 188
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropView;->cancel3Secend()V

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    .line 191
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    :goto_0
    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    .line 192
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    sub-int/2addr v1, v2

    :goto_1
    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    .line 193
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    :goto_2
    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    .line 194
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    sub-int/2addr v1, v2

    :goto_3
    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 239
    :cond_0
    :goto_4
    return v6

    .line 191
    :cond_1
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    goto :goto_0

    .line 192
    :cond_2
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    goto :goto_1

    .line 193
    :cond_3
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    goto :goto_2

    .line 194
    :cond_4
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    goto :goto_3

    .line 197
    :pswitch_0
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->startX:I

    .line 198
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    iput v1, p0, Lcom/android/mipop/cropimage/CropView;->startY:I

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mipop/cropimage/CropView;->isMoved:Z

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mipop/cropimage/CropView;->firstTouch:J

    .line 201
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    invoke-interface {v1, v2, v3}, Lcom/android/mipop/cropimage/ICrop;->touchDown(II)V

    goto :goto_4

    .line 204
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/mipop/cropimage/CropView;->isMoved:Z

    if-nez v1, :cond_5

    .line 206
    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->startX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->startX:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->startY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropView;->startY:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 207
    iput-boolean v6, p0, Lcom/android/mipop/cropimage/CropView;->isMoved:Z

    .line 215
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    invoke-interface {v1, v2, v3}, Lcom/android/mipop/cropimage/ICrop;->touchMove(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_5
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->invalidate()V

    goto :goto_4

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CropView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent exception == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/mipop/cropimage/CropView;->isMoved:Z

    if-nez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/mipop/cropimage/CropView;->firstTouch:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gtz v1, :cond_7

    .line 226
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mSingleClickListener:Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;

    if-eqz v1, :cond_6

    .line 227
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mSingleClickListener:Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;

    invoke-interface {v1}, Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;->onSingleClick()V

    .line 232
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->tempX:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->tempY:I

    invoke-interface {v1, v2, v3}, Lcom/android/mipop/cropimage/ICrop;->touchUp(II)V

    .line 233
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->invalidate()V

    goto/16 :goto_4

    .line 228
    :cond_7
    iget-boolean v1, p0, Lcom/android/mipop/cropimage/CropView;->isMoved:Z

    if-nez v1, :cond_6

    .line 229
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->msSigleLongClickListener:Lcom/android/mipop/cropimage/CropView$OnSigleLongClickListener;

    if-eqz v1, :cond_6

    .line 230
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropView;->msSigleLongClickListener:Lcom/android/mipop/cropimage/CropView$OnSigleLongClickListener;

    invoke-interface {v1}, Lcom/android/mipop/cropimage/CropView$OnSigleLongClickListener;->onSigleLongClick()V

    goto :goto_6

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCropType(Lcom/android/mipop/cropimage/ICrop;)V
    .locals 4
    .param p1, "crop"    # Lcom/android/mipop/cropimage/ICrop;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    .line 97
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->scale:F

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->translateX:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->transLateY:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mipop/cropimage/ICrop;->setScaleAndTranslate(FII)V

    .line 98
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropView;->mCrop:Lcom/android/mipop/cropimage/ICrop;

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->showHeight:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->showWidth:I

    invoke-interface {v0, v1, v2}, Lcom/android/mipop/cropimage/ICrop;->setViewHightandWidth(II)V

    .line 100
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->invalidate()V

    .line 102
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropView;->clearCrop()V

    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropView;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    return-void
.end method

.method public setOnSigleLongClickListener(Lcom/android/mipop/cropimage/CropView$OnSigleLongClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mipop/cropimage/CropView$OnSigleLongClickListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropView;->msSigleLongClickListener:Lcom/android/mipop/cropimage/CropView$OnSigleLongClickListener;

    .line 145
    return-void
.end method

.method public setOnSingleClickListener(Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropView;->mSingleClickListener:Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;

    .line 137
    return-void
.end method

.method public setPadding(I)V
    .locals 4
    .param p1, "mPadding"    # I

    .prologue
    .line 74
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->desity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    .line 75
    iget v0, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v1, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropView;->padding:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76
    return-void
.end method

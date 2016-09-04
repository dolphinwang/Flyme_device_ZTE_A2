.class public abstract Lcom/android/mipop/widget/MeterBase;
.super Landroid/widget/ImageView;
.source "MeterBase.java"


# static fields
.field public static MeterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mipop/widget/MeterBase;",
            ">;"
        }
    .end annotation
.end field

.field public static baseX:I

.field public static baseY:I

.field public static mContext:Landroid/content/Context;

.field private static mKeyCodeId:I

.field public static mTouchDown:Z


# instance fields
.field private hasMoved:Z

.field private isStopAnimationParking:Z

.field private final mTime4LongClick:J

.field public mWindowManager:Landroid/view/WindowManager;

.field private persistPosHandler:Landroid/os/Handler;

.field private resId:I

.field private resIdPressed:I

.field private runnablepersistPos:Ljava/lang/Runnable;

.field public wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sput-boolean v1, Lcom/android/mipop/widget/MeterBase;->mTouchDown:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    .line 64
    sput v1, Lcom/android/mipop/widget/MeterBase;->baseX:I

    .line 67
    sget v0, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mipop/widget/MeterBase;->baseY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    iput v4, p0, Lcom/android/mipop/widget/MeterBase;->resId:I

    .line 44
    iput v4, p0, Lcom/android/mipop/widget/MeterBase;->resIdPressed:I

    .line 52
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    iput-boolean v4, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    .line 76
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/android/mipop/widget/MeterBase;->mTime4LongClick:J

    .line 81
    iput-boolean v4, p0, Lcom/android/mipop/widget/MeterBase;->isStopAnimationParking:Z

    .line 89
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mipop/widget/MeterBase;->persistPosHandler:Landroid/os/Handler;

    .line 91
    new-instance v2, Lcom/android/mipop/widget/MeterBase$1;

    invoke-direct {v2, p0}, Lcom/android/mipop/widget/MeterBase$1;-><init>(Lcom/android/mipop/widget/MeterBase;)V

    iput-object v2, p0, Lcom/android/mipop/widget/MeterBase;->runnablepersistPos:Ljava/lang/Runnable;

    .line 108
    sput-object p1, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    .line 110
    sget-object v2, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MipopPosX"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, "mipopPosX":I
    sget-object v2, Lcom/android/mipop/widget/MeterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MipopPosY"

    sget v4, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, "mipopPosY":I
    sput v0, Lcom/android/mipop/widget/MeterBase;->baseX:I

    .line 114
    sput v1, Lcom/android/mipop/widget/MeterBase;->baseY:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    .line 117
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 118
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 119
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 120
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 121
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 122
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v3, Lcom/android/mipop/widget/MeterBase;->baseX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 123
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v3, Lcom/android/mipop/widget/MeterBase;->baseY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 124
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v3, Lcom/android/mipop/widget/Until;->IMAGE_WIDTH:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 127
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method

.method public static getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mipop/widget/MeterBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected abstract Click()V
.end method

.method protected abstract LongClick()V
.end method

.method public Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/android/mipop/widget/MeterBase;

    .prologue
    .line 148
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 167
    sget v0, Lcom/android/mipop/widget/MeterBase;->mKeyCodeId:I

    return v0
.end method

.method public moved()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    .line 289
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 176
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v1, v2, -0x19

    .line 179
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 255
    :goto_0
    :pswitch_0
    return v6

    .line 182
    :pswitch_1
    const-string v2, "OUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base DOWN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v2, p0, Lcom/android/mipop/widget/MeterBase;->resIdPressed:I

    invoke-virtual {p0, v2}, Lcom/android/mipop/widget/MeterBase;->setImageResource(I)V

    .line 187
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->stop()V

    goto :goto_0

    .line 193
    :pswitch_2
    const-string v2, "OUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base UP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v2, p0, Lcom/android/mipop/widget/MeterBase;->resId:I

    invoke-virtual {p0, v2}, Lcom/android/mipop/widget/MeterBase;->setImageResource(I)V

    .line 199
    iget-boolean v2, p0, Lcom/android/mipop/widget/MeterBase;->isStopAnimationParking:Z

    if-eq v2, v6, :cond_0

    .line 200
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->start()V

    .line 204
    :cond_0
    iget-boolean v2, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    if-nez v2, :cond_1

    .line 208
    const-string v2, "Suhao.Click"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lxg MeterBase.UP, Click baseX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mipop/widget/MeterBase;->baseX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",baseY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mipop/widget/MeterBase;->baseY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v2, "wxl"

    const-string v3, "base clicked then shrink"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->shrinkStart()V

    .line 218
    invoke-virtual {p0}, Lcom/android/mipop/widget/MeterBase;->Click()V

    .line 234
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    .line 240
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->persistPosHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mipop/widget/MeterBase;->runnablepersistPos:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v2, p0, Lcom/android/mipop/widget/MeterBase;->persistPosHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mipop/widget/MeterBase;->runnablepersistPos:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 228
    :cond_1
    const-string v2, "Suhao.Click"

    const-string v3, "MeterBase.UP, has moved"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :pswitch_3
    const-string v2, "OUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base ACTION_OUTSIDE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mipop/widget/MeterBase;->hasMoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->shrinkStart()V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeView()V
    .locals 3

    .prologue
    .line 131
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lxg removeView isAttachedToWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mipop/widget/MeterBase;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/android/mipop/widget/MeterBase;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setKeyCode(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 163
    sput p1, Lcom/android/mipop/widget/MeterBase;->mKeyCodeId:I

    .line 164
    return-void
.end method

.method public setResId(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "idDown"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/android/mipop/widget/MeterBase;->resId:I

    .line 159
    iput p2, p0, Lcom/android/mipop/widget/MeterBase;->resIdPressed:I

    .line 160
    return-void
.end method

.method public setStopAnimationParking(Z)V
    .locals 0
    .param p1, "flage"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/android/mipop/widget/MeterBase;->isStopAnimationParking:Z

    .line 293
    return-void
.end method

.method public update(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 265
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 266
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBase;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/mipop/widget/MeterBase;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    return-void
.end method

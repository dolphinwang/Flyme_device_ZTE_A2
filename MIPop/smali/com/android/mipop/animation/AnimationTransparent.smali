.class public Lcom/android/mipop/animation/AnimationTransparent;
.super Ljava/lang/Object;
.source "AnimationTransparent.java"


# static fields
.field private static currentAlpha:I

.field private static endAlpha:I

.field private static handler4Transparent:Landroid/os/Handler;

.field private static periodTime:I

.field private static runnable4Transparent:Ljava/lang/Runnable;

.field private static startAlpha:I

.field private static steps:I

.field private static time4Trans:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 29
    sput v1, Lcom/android/mipop/animation/AnimationTransparent;->startAlpha:I

    .line 32
    const/16 v0, 0x9b

    sput v0, Lcom/android/mipop/animation/AnimationTransparent;->endAlpha:I

    .line 35
    sput v1, Lcom/android/mipop/animation/AnimationTransparent;->currentAlpha:I

    .line 38
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/android/mipop/animation/AnimationTransparent;->time4Trans:J

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/android/mipop/animation/AnimationTransparent;->steps:I

    .line 44
    const/16 v0, 0xa

    sput v0, Lcom/android/mipop/animation/AnimationTransparent;->periodTime:I

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/mipop/animation/AnimationTransparent$1;

    invoke-direct {v0}, Lcom/android/mipop/animation/AnimationTransparent$1;-><init>()V

    sput-object v0, Lcom/android/mipop/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/android/mipop/animation/AnimationTransparent;->transparenting()V

    return-void
.end method

.method public static start()V
    .locals 4

    .prologue
    .line 63
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationTransparent.start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-wide v0, Lcom/android/mipop/animation/AnimationTransparent;->time4Trans:J

    sget v2, Lcom/android/mipop/animation/AnimationTransparent;->endAlpha:I

    sget v3, Lcom/android/mipop/animation/AnimationTransparent;->startAlpha:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/android/mipop/animation/AnimationTransparent;->periodTime:I

    .line 66
    sget-object v0, Lcom/android/mipop/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationTransparent.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget v0, Lcom/android/mipop/animation/AnimationTransparent;->startAlpha:I

    sput v0, Lcom/android/mipop/animation/AnimationTransparent;->currentAlpha:I

    .line 83
    sget-object v0, Lcom/android/mipop/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationTransparent;->startAlpha:I

    invoke-virtual {v0, v1}, Lcom/android/mipop/widget/MeterBase;->setAlpha(I)V

    .line 91
    return-void
.end method

.method private static transparenting()V
    .locals 4

    .prologue
    .line 98
    const-string v0, "Suhao.TransParent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimationTransparent.transparenting(), alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/animation/AnimationTransparent;->currentAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget v0, Lcom/android/mipop/animation/AnimationTransparent;->currentAlpha:I

    sget v1, Lcom/android/mipop/animation/AnimationTransparent;->endAlpha:I

    if-gt v0, v1, :cond_0

    .line 102
    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationTransparent.transparenting(), removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/android/mipop/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    sget v0, Lcom/android/mipop/animation/AnimationTransparent;->currentAlpha:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/mipop/animation/AnimationTransparent;->currentAlpha:I

    .line 107
    sget-object v0, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/widget/MeterBase;

    sget v1, Lcom/android/mipop/animation/AnimationTransparent;->currentAlpha:I

    invoke-virtual {v0, v1}, Lcom/android/mipop/widget/MeterBase;->setAlpha(I)V

    .line 108
    sget-object v0, Lcom/android/mipop/animation/AnimationTransparent;->handler4Transparent:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/animation/AnimationTransparent;->runnable4Transparent:Ljava/lang/Runnable;

    sget v2, Lcom/android/mipop/animation/AnimationTransparent;->periodTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

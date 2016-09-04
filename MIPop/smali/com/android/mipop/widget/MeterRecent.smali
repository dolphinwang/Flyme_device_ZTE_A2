.class public Lcom/android/mipop/widget/MeterRecent;
.super Lcom/android/mipop/widget/MeterBase;
.source "MeterRecent.java"


# static fields
.field public static final NAME:Ljava/lang/String;

.field private static final RIGHT_KEY:Ljava/lang/String; = "RIGHT_KEY"


# instance fields
.field private handler4LongClick:Landroid/os/Handler;

.field private runnableCapture:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/mipop/widget/MeterRecent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/mipop/widget/MeterBase;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterRecent;->handler4LongClick:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/mipop/widget/MeterRecent$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterRecent$2;-><init>(Lcom/android/mipop/widget/MeterRecent;)V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterRecent;->runnableCapture:Ljava/lang/Runnable;

    .line 37
    sget-object v0, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/widget/MeterRecent;->Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterRecent;->setSoundEffectsEnabled(Z)V

    .line 39
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterRecent;->updateKey()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/widget/MeterRecent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/widget/MeterRecent;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterRecent;->startAction()V

    return-void
.end method

.method private startAction()V
    .locals 4

    .prologue
    .line 81
    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "RIGHT_KEY"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "rightKey":I
    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mipop/widget/Until;->startAction(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method private updateKey()V
    .locals 4

    .prologue
    .line 43
    sget-object v1, Lcom/android/mipop/widget/MeterRecent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "RIGHT_KEY"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, "rightKey":I
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget-object v2, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mipop/widget/MeterBase;->setImageResource(I)V

    .line 45
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget-object v2, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/mipop/widget/Until;->keyPressIconId:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->setResId(II)V

    .line 46
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 4

    .prologue
    .line 53
    const-string v0, "CLICK"

    const-string v1, "recent  click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterRecent;->playSoundEffect(I)V

    .line 55
    sget-object v0, Lcom/android/mipop/widget/MeterRecent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "RIGHT_KEY"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/android/mipop/widget/MeterRecent$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterRecent$1;-><init>(Lcom/android/mipop/widget/MeterRecent;)V

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterRecent$1;->start()V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->hideMipopForce()V

    .line 63
    iget-object v0, p0, Lcom/android/mipop/widget/MeterRecent;->handler4LongClick:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/widget/MeterRecent;->runnableCapture:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public LongClick()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "Suhao"

    const-string v1, "recent  long click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

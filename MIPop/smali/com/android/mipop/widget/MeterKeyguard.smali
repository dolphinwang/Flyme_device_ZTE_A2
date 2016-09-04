.class public Lcom/android/mipop/widget/MeterKeyguard;
.super Lcom/android/mipop/widget/MeterBase;
.source "MeterKeyguard.java"


# static fields
.field private static final MID_KEY:Ljava/lang/String; = "MID_KEY"

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private handler4LongClick:Landroid/os/Handler;

.field private runnableCapture:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/mipop/widget/MeterKeyguard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mipop/widget/MeterBase;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterKeyguard;->handler4LongClick:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/mipop/widget/MeterKeyguard$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterKeyguard$2;-><init>(Lcom/android/mipop/widget/MeterKeyguard;)V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterKeyguard;->runnableCapture:Ljava/lang/Runnable;

    .line 38
    sget-object v0, Lcom/android/mipop/widget/MeterKeyguard;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/widget/MeterKeyguard;->Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterKeyguard;->setSoundEffectsEnabled(Z)V

    .line 40
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterKeyguard;->updateKey()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/widget/MeterKeyguard;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/widget/MeterKeyguard;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterKeyguard;->startAction()V

    return-void
.end method

.method private startAction()V
    .locals 4

    .prologue
    .line 82
    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MID_KEY"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "midKey":I
    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mipop/widget/Until;->startAction(Landroid/content/Context;I)V

    .line 84
    return-void
.end method

.method private updateKey()V
    .locals 4

    .prologue
    .line 44
    sget-object v1, Lcom/android/mipop/widget/MeterKeyguard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MID_KEY"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, "midKey":I
    sget-object v1, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/mipop/widget/MeterKeyguard;->setImageResource(I)V

    .line 46
    sget-object v1, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v1, v1, v0

    sget-object v2, Lcom/android/mipop/widget/Until;->keyPressIconId:[I

    aget v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/mipop/widget/MeterKeyguard;->setResId(II)V

    .line 47
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, "CLICK"

    const-string v1, "home   click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0, v2}, Lcom/android/mipop/widget/MeterKeyguard;->playSoundEffect(I)V

    .line 56
    sget-object v0, Lcom/android/mipop/widget/MeterKeyguard;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MID_KEY"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 57
    new-instance v0, Lcom/android/mipop/widget/MeterKeyguard$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterKeyguard$1;-><init>(Lcom/android/mipop/widget/MeterKeyguard;)V

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterKeyguard$1;->start()V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->hideMipopForce()V

    .line 64
    iget-object v0, p0, Lcom/android/mipop/widget/MeterKeyguard;->handler4LongClick:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/widget/MeterKeyguard;->runnableCapture:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public LongClick()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "Suhao"

    const-string v1, "home  long click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.class public Lcom/android/mipop/widget/MeterMenu;
.super Lcom/android/mipop/widget/MeterBase;
.source "MeterMenu.java"


# static fields
.field private static final DOWN_KEY:Ljava/lang/String; = "DOWN_KEY"

.field public static final NAME:Ljava/lang/String;


# instance fields
.field private handler4LongClick:Landroid/os/Handler;

.field private runnableCapture:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/mipop/widget/MeterMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mipop/widget/MeterBase;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterMenu;->handler4LongClick:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/mipop/widget/MeterMenu$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterMenu$2;-><init>(Lcom/android/mipop/widget/MeterMenu;)V

    iput-object v0, p0, Lcom/android/mipop/widget/MeterMenu;->runnableCapture:Ljava/lang/Runnable;

    .line 36
    sget-object v0, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/widget/MeterMenu;->Register(Ljava/lang/String;Lcom/android/mipop/widget/MeterBase;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterMenu;->setSoundEffectsEnabled(Z)V

    .line 38
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterMenu;->updateKey()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/widget/MeterMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/widget/MeterMenu;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mipop/widget/MeterMenu;->startAction()V

    return-void
.end method

.method private startAction()V
    .locals 4

    .prologue
    .line 80
    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DOWN_KEY"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, "downKey":I
    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mipop/widget/Until;->startAction(Landroid/content/Context;I)V

    .line 82
    return-void
.end method

.method private updateKey()V
    .locals 4

    .prologue
    .line 42
    sget-object v1, Lcom/android/mipop/widget/MeterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DOWN_KEY"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "downKey":I
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget-object v2, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mipop/widget/MeterBase;->setImageResource(I)V

    .line 44
    sget-object v1, Lcom/android/mipop/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/mipop/widget/MeterMenu;->NAME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/widget/MeterBase;

    sget-object v2, Lcom/android/mipop/widget/Until;->keyNoPressIconId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/mipop/widget/Until;->keyPressIconId:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/mipop/widget/MeterBase;->setResId(II)V

    .line 45
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 52
    const-string v0, "CLICK"

    const-string v1, "menu click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mipop/widget/MeterMenu;->playSoundEffect(I)V

    .line 54
    sget-object v0, Lcom/android/mipop/widget/MeterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DOWN_KEY"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 55
    new-instance v0, Lcom/android/mipop/widget/MeterMenu$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/widget/MeterMenu$1;-><init>(Lcom/android/mipop/widget/MeterMenu;)V

    invoke-virtual {v0}, Lcom/android/mipop/widget/MeterMenu$1;->start()V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/api/MyApplication;->hideMipopForce()V

    .line 62
    iget-object v0, p0, Lcom/android/mipop/widget/MeterMenu;->handler4LongClick:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/widget/MeterMenu;->runnableCapture:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public LongClick()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "Suhao"

    const-string v1, "menu  long click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.class public Lcom/mediatek/keyguard/ext/DefaultLockScreenExt;
.super Ljava/lang/Object;
.source "DefaultLockScreenExt.java"

# interfaces
.implements Lcom/mediatek/keyguard/ext/ILockScreenExt;


# annotations
.annotation runtime Lcom/mediatek/common/PluginImpl;
    interfaceName = "com.mediatek.keyguard.ext.ILockScreenExt"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultLockScreenExt"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "DefaultLockScreenExt"

    const-string v1, "Default Constructor called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "DefaultLockScreenExt"

    const-string v1, " Constructor called with argument"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method


# virtual methods
.method public disableSearch(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string v0, "DefaultLockScreenExt"

    const-string v1, "disableSearch called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public initDgilLayout(IILandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "currentMode"    # I
    .param p2, "mode"    # I
    .param p3, "object"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    const-string v0, "DefaultLockScreenExt"

    const-string v1, "initDgilLayout called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public notifyUnlockedScreen()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "DefaultLockScreenExt"

    const-string v1, "notifyUnlockedScreen called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

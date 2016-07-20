.class public interface abstract Lcom/android/fmradio/FmService$OnChannelListListener;
.super Ljava/lang/Object;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChannelListListener"
.end annotation


# virtual methods
.method public abstract onExit()V
.end method

.method public abstract onScanFinished(Landroid/os/Bundle;)V
.end method

.method public abstract onSwitchAnntenna(Z)V
.end method

.method public abstract onTuneFinished()V
.end method

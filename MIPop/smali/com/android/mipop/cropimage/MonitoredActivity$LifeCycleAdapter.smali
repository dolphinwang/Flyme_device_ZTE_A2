.class public Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleAdapter;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"

# interfaces
.implements Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lcom/android/mipop/cropimage/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/mipop/cropimage/MonitoredActivity;

    .prologue
    .line 29
    return-void
.end method

.method public onActivityDestroyed(Lcom/android/mipop/cropimage/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/mipop/cropimage/MonitoredActivity;

    .prologue
    .line 32
    return-void
.end method

.method public onActivityStarted(Lcom/android/mipop/cropimage/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/mipop/cropimage/MonitoredActivity;

    .prologue
    .line 35
    return-void
.end method

.method public onActivityStopped(Lcom/android/mipop/cropimage/MonitoredActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/mipop/cropimage/MonitoredActivity;

    .prologue
    .line 38
    return-void
.end method

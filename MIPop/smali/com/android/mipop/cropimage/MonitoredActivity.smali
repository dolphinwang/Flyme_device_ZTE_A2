.class public Lcom/android/mipop/cropimage/MonitoredActivity;
.super Lcom/android/mipop/cropimage/NoSearchActivity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleAdapter;,
        Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/mipop/cropimage/NoSearchActivity;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/mipop/cropimage/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iget-object v2, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;

    .line 55
    .local v1, "listener":Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/android/mipop/cropimage/MonitoredActivity;)V

    goto :goto_0

    .line 57
    .end local v1    # "listener":Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/mipop/cropimage/NoSearchActivity;->onDestroy()V

    .line 62
    iget-object v2, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;

    .line 63
    .local v1, "listener":Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/android/mipop/cropimage/MonitoredActivity;)V

    goto :goto_0

    .line 65
    .end local v1    # "listener":Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/mipop/cropimage/NoSearchActivity;->onStart()V

    .line 70
    iget-object v2, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;

    .line 71
    .local v1, "listener":Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/android/mipop/cropimage/MonitoredActivity;)V

    goto :goto_0

    .line 73
    .end local v1    # "listener":Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/mipop/cropimage/NoSearchActivity;->onStop()V

    .line 78
    iget-object v2, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;

    .line 79
    .local v1, "listener":Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/android/mipop/cropimage/MonitoredActivity;)V

    goto :goto_0

    .line 81
    .end local v1    # "listener":Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method public removeLifeCycleListener(Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

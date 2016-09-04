.class Lcom/android/mipop/cropimage/Until$BackgroundJob;
.super Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleAdapter;
.source "Until.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/Until;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/android/mipop/cropimage/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/mipop/cropimage/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/mipop/cropimage/MonitoredActivity;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Landroid/app/ProgressDialog;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 375
    new-instance v0, Lcom/android/mipop/cropimage/Until$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/cropimage/Until$BackgroundJob$1;-><init>(Lcom/android/mipop/cropimage/Until$BackgroundJob;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 385
    iput-object p1, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mActivity:Lcom/android/mipop/cropimage/MonitoredActivity;

    .line 386
    iput-object p3, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 387
    iput-object p2, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 388
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mActivity:Lcom/android/mipop/cropimage/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/android/mipop/cropimage/MonitoredActivity;->addLifeCycleListener(Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;)V

    .line 389
    iput-object p4, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/cropimage/Until$BackgroundJob;)Lcom/android/mipop/cropimage/MonitoredActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/Until$BackgroundJob;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mActivity:Lcom/android/mipop/cropimage/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mipop/cropimage/Until$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/cropimage/Until$BackgroundJob;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/android/mipop/cropimage/MonitoredActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/mipop/cropimage/MonitoredActivity;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 405
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method public onActivityStarted(Lcom/android/mipop/cropimage/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/mipop/cropimage/MonitoredActivity;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 416
    return-void
.end method

.method public onActivityStopped(Lcom/android/mipop/cropimage/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/mipop/cropimage/MonitoredActivity;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 411
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void

    .line 396
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
